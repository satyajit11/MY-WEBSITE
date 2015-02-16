function gradient(id, level)
{
	var box = document.getElementById(id);
	box.style.opacity = level;
	box.style.MozOpacity = level;
	box.style.KhtmlOpacity = level;
	box.style.filter = "alpha(opacity=" + level * 100 + ")";
	box.style.display="block";
	return;
}


function fadein(id) 
{
	var level = 0;
	while(level <= 1)
	{
		setTimeout( "gradient('" + id + "'," + level + ")", (level* 1000) + 10);
		level += 0.01;
	}
}


// Open the lightbox
function openbox(formtitle, fadin)
{
  var box = document.getElementById('box'); 
  document.getElementById('filter').style.display='block';

  if(fadin)
  {
	 gradient("box", 0);
	 fadein("box");
  }
  else
  { 	
    box.style.display='block';
  }  	
}

function openbox2(formtitle, fadin)
{
  var box2 = document.getElementById('box2'); 
  document.getElementById('filter2').style.display='block';
  

  if(fadin)
  {
	 gradient("box2", 0);
	 fadein("box2");
  }
  else
  { 	
    box2.style.display='block';
  }  	
}

function openbox3(formtitle, fadin)
{
  var box3 = document.getElementById('box3'); 
  document.getElementById('filter3').style.display='block';

  if(fadin)
  {
	 gradient("box3", 0);
	 fadein("box3");
  }
  else
  { 	
    box3.style.display='block';
  }  	
}
// Close the signup windows(lightbox)
function closebox()
{
   document.getElementById('box').style.display='none';
   document.getElementById('filter').style.display='none';
   document.form.name.value="";
   document.form.email.value="";
   document.form.password.value="";
   document.form.conpassword.value="";
   document.form.address.value="";
   document.form.city.value="";
   document.form.state.value="";
   document.form.pincode.value="";
	document.form.country.value="";
	document.form.phone.value="";
	document.form.rad.value="";
   
}
// close the forgot window(lightbox)
function closebox2()
{
   document.getElementById('box2').style.display='none';
   document.getElementById('filter2').style.display='none';
   
   document.form2.email.value="";
   document.form2.password.value="";
}
function closebox3()
{
   document.getElementById('box3').style.display='none';
   document.getElementById('filter3').style.display='none';
   
   document.form.email.value="";
   document.form.password.value="";
   
   
   

}