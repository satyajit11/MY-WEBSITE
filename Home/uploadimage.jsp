<%@ page import="java.sql.*,java.util.*,java.text.*,java.io.*;" %>
<%
String a="",str="",i="",img="";
Connection con=null;
Statement st=null;
ResultSet rs=null;
	//to get the content type information from JSP Request Header
	String contentType = request.getContentType();
	//here we are checking the content type is not equal to Null and
// as well as the passed data from mulitpart/form-data is greater than or
// equal to 0
ServletContext ctx = getServletContext();

String path = ctx.getRealPath("/");
	if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
 		DataInputStream in = new DataInputStream(request.getInputStream());
		//we are taking the length of Content type data
		int formDataLength = request.getContentLength();
		byte dataBytes[] = new byte[formDataLength];
		int byteRead = 0;
		int totalBytesRead = 0;
		//this loop converting the uploaded file into byte code
		while (totalBytesRead < formDataLength) {
			byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
			totalBytesRead += byteRead;
			}
		String file = new String(dataBytes);
		//for saving the file name
		String saveFile = file.substring(file.indexOf("filename=\"") + 10);
		saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
		saveFile = saveFile.substring(saveFile.lastIndexOf("\\")+ 1,saveFile.indexOf("\""));
		int lastIndex = contentType.lastIndexOf("=");
		String boundary = contentType.substring(lastIndex + 1,contentType.length());
		int pos;
		//extracting the index of file 
		pos = file.indexOf("filename=\"");
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		int boundaryLocation = file.indexOf(boundary, pos) - 4;
		int startPos = ((file.substring(0, pos)).getBytes()).length;
		int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
		// creating a new file with the same name and writing the content in new file
		FileOutputStream fileOut = new FileOutputStream(path + saveFile);
		fileOut.write(dataBytes, startPos, (endPos - startPos));
		fileOut.flush();
		fileOut.close();
out.println("done");
		try
		{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		}
		catch(ClassNotFoundException ae)
		{}
	try
	{
		a=(String)session.getAttribute("pid");
		int code=Integer.parseInt(a);
	con=DriverManager.getConnection("jdbc:odbc:real");
	st=con.createStatement();
	
	st.executeUpdate("update  propertydetail set propertyimage='"+saveFile+"' where code="+code+" "); 
	}
	catch(Exception se)
	{out.println(se);}%>
<%}%>
<jsp:forward page="/rehome.jsp"/>

