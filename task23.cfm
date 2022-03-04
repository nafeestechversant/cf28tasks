<cfif structKeyExists(form,'saveForm')>
<cfset application.task23.addUser(form.Field17,form.Field19,form.fld_userdob,form.Field14,form.Field12,form.Field16,form.Field22,form.Field23,form.Field13,form.Field25) />
</cfif>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 23</title>
<link href="./css/button.css" rel="stylesheet" type="text/css" media="all" />
<link href="./css/index.css" rel="stylesheet" type="text/css" media="all"  />
<link href="./css/theme.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<div id="container" class="ltr ">
	<h1 id="logo">
		    <a href="#" target="_blank" title="Powered by Wufoo">Wufoo</a>
			</h1> 
      <p id="error"></p>
<form id="form54" name="form54" class="wufoo  page1" accept-charset="UTF-8" autocomplete="off" enctype="multipart/form-data" method="post" action="">
<header id="header" class="info">
	<h2 class="">Employment Application</h2>
	<div class="">Infinity Box Inc.</div>
</header>
<ul>
<li id="fo54li17" class="">
	<label class="desc notranslate" id="title17" for="Field17">
		Which position are you applying for?
				<span id="req_17" class="req">*</span>
			</label>
	<div>
		<select id="Field17" name="Field17" class="field select medium" onchange="handleInput(this);" onkeyup="handleInput(this);" tabindex="0" data-wufoo-field="dropdown">
						<option value="" selected="selected">
				
			</option>
						<option value="Interface Designer">
				Interface Designer
			</option>
						<option value="Software Engineer">
				Software Engineer
			</option>
						<option value="System Administrator">
				System Administrator
			</option>
						<option value="Office Manager">
				Office Manager
			</option>
					</select>
	</div>
	</li>


<li id="fo54li19" class="focused">
	<fieldset>
	<!--[if !IE | (gte IE 8)]-->
	<legend id="title19" class="desc notranslate">
		Are you willing to relocate?
				<span id="req_19" class="req">*</span>
			</legend>
	<!--[endif]-->
	<!--[if lt IE 8]>
	<label id="title19" class="desc">
		Are you willing to relocate?
				<span id="req_19" class="req">*</span>
			</label>
	<![endif]-->
	<div>
  <input id="radioDefault_19" name="Field19" type="hidden" value="">
    <span>
  <input id="Field19_0" name="Field19" type="radio" class="field radio" value="Yes" tabindex="0" onchange="handleInput(this);" onmouseup="handleInput(this);" checked="checked">
  <label class="choice" for="Field19_0">
    <span class="choice__text notranslate">Yes</span>
          <span class="choice__qty">
              </span>
  </label>
    </span>
	  <span>
  <input id="Field19_1" name="Field19" type="radio" class="field radio" value="No" tabindex="0" onchange="handleInput(this);" onmouseup="handleInput(this);" >
  <label class="choice" for="Field19_1">
    <span class="choice__text notranslate">No</span>
          <span class="choice__qty">
              </span>
  </label>
    </span>
		</div>
	</fieldset>
	</li>



<li id="fo54li20" class="date notranslate">
	<label class="desc" id="title20">
		When can you start?
				<span id="req_20" class="req">*</span>
			</label>
      <input type="date" name="fld_userdob" id="fld_userdob"  />

	</li>



<li id="fo54li14" class="notranslate       ">
	<label class="desc" id="title14" for="Field14">
		Portfolio Web Site
			</label>
	<div>
		<input id="Field14" name="Field14" type="text" class="field text large" value="" maxlength="255" tabindex="0" placeholder="">
	</div>
	</li>



<li id="fo54li12" class="notranslate altInstruct      ">
		<label class="desc" id="title12" for="Field12">
		Attach a Copy of Your Resume
			</label>
	<div>
		<input id="Field12" name="Field12" type="file" class="field file" size="12" data-file-max-size="10" tabindex="0" data-wufoo-field="file-upload">
	</div>
			<p class="instruct" id="instruct12">
			<small>Word or PDF Documents Only</small>
		</p>
	</li>



<li id="fo54li16" class="notranslate      ">
	<label class="desc" id="title16">
		Salary Requirements
			</label>
	<span class="symbol">$</span>
	<span>
		<input id="Field16" name="Field16" type="text" class="field text currency nospin" value="" size="10" tabindex="0" onkeyup="handleInput(this);" onchange="handleInput(this);">
		<label for="Field16">Dollars</label>
	</span>
		<span class="symbol radix">.</span>
	<span class="cents">
		<input id="Field16-1" name="Field16-1" type="text" class="field text nospin" value="" size="2" maxlength="2" tabindex="0" onkeyup="handleInput(this);" onchange="handleInput(this);">
		<label for="Field16-1">Cents</label>
	</span>
	</li>


<li id="fo54li24" class="notranslate section      ">
	<section>
		<h3 id="title24">
			Your Contact Information
		</h3>
			</section>
	</li>



<li id="fo54li22" class="notranslate">
	<label class="desc" id="title22">
		Name
				<span id="req_22" class="req">*</span>
			</label>
	<span>
		<input id="Field22" name="Field22" type="text" class="field text fn" value="" size="8" tabindex="0" onkeyup="handleInput(this);" onchange="handleInput(this);" placeholder="">
		<label for="Field22">First</label>
	</span>
	<span>
		<input id="Field23" name="Field23" type="text" class="field text ln" value="" size="14" tabindex="0" onkeyup="handleInput(this);" onchange="handleInput(this);" placeholder="">
		<label for="Field23">Last</label>
	</span>
	</li>



<li id="fo54li13" class="notranslate">
	<label class="desc" id="title13" for="Field13">
		Email Address
				<span id="req_13" class="req">*</span>
			</label>
	<div>
		<input id="Field13" name="Field13" type="email" spellcheck="false" class="field text large" value="" maxlength="255" tabindex="0" onkeyup="handleInput(this);" onchange="handleInput(this);" placeholder="" >
	</div>
	</li>



<li id="fo54li25" class="phone notranslate">
	<label class="desc" id="title25">
		Phone
				<span id="req_25" class="req">*</span>
			</label>
	<span>
		<input id="Field25" name="Field25" type="tel" class="field text" value="" size="3" maxlength="3" tabindex="0" onkeyup="handleInput(this); autotab(this, document.getElementById('Field25-1'), this); filterNonnumeric(this);" onchange="handleInput(this);" onfocus="this.selectionStart = this.selectionEnd = this.value.length;" placeholder="">
		<label for="Field25">###</label>
	</span>
	<span class="symbol">-</span>
	<span>
		<input id="Field25-1" name="Field25-1" type="tel" class="field text" value="" size="3" maxlength="3" tabindex="0" onkeyup="handleInput(this); autotab(this, document.getElementById('Field25-2'), document.getElementById('Field25')); filterNonnumeric(this);" onchange="handleInput(this);" onfocus="this.selectionStart = this.selectionEnd = this.value.length;" placeholder="">
		<label for="Field25-1">###</label>
	</span>
	<span class="symbol">-</span>
	<span>
	 	<input id="Field25-2" name="Field25-2" type="tel" class="field text" value="" size="4" maxlength="4" tabindex="0" onkeyup="handleInput(this); autotab(this, this, document.getElementById('Field25-1')); filterNonnumeric(this);" onchange="handleInput(this);" onfocus="this.selectionStart = this.selectionEnd = this.value.length;" placeholder="">
		<label for="Field25-2">####</label>
	</span>
	</li>


 

	
	<li class="buttons ">
		<div>
								<input type="hidden" name="currentPage" id="currentPage" value="BR0wGNq1Wpm4boNzHwuBeNVDwuBeQKxX86IAnNX7wuBeWdUUgdOs=">
			    
    			    			    			        						    <input id="saveForm" name="saveForm" class="btTxt submit" type="buttob" value="Submit" onclick="validateForm()">
					
		
    
				</div>
	</li>

		<!--<li class="hide">
		<label for="comment">Do Not Fill This Out</label>
		<textarea name="comment" id="comment" rows="1" cols="1"></textarea>
		<input type="hidden" id="idstamp" name="idstamp" value="MXYWiSHySWeWc9cXfVzZOw==">
		<input type="hidden" id="encryptedPassword" name="encryptedPassword" value="">
				<input type="hidden" id="stats" name="stats" value="{&quot;errors&quot;:0,&quot;startTime&quot;:0,&quot;endTime&quot;:0,&quot;referer&quot;:null}">
				<input type="hidden" id="clickOrEnter" name="clickOrEnter" value="">
			</li>-->
	</ul>
</form>
</div>

<script>
function validateForm() {
  let position = document.forms["form54"]["Field17"].value;
  var text = "";
  if (position == "") {
    text += "<span style='color: red'>Please select position </span>"+ "<br>"; 
    document.forms["form54"]["Field17"].focus();  
    document.getElementById("error").innerHTML = text;
    return false;
  }

  if (document.forms["form54"]["Field19"].value == "") {
    text += "<span style='color: red'>Please select willing to relocate </span>"+ "<br>"; 
    document.forms["form54"]["Field19"].focus();    
    document.getElementById("error").innerHTML = text;
    return false;
  }

  if (document.forms["form54"]["fld_userdob"].value == "") {
    text += "<span style='color: red'>Please select start date </span>"+ "<br>";
    document.forms["form54"]["fld_userdob"].focus();   
    document.getElementById("error").innerHTML = text;
    return false;
  } 

   if (document.forms["form54"]["Field22"].value == "") {
    text += "<span style='color: red'>Please enter firstname </span>"+ "<br>";
    document.forms["form54"]["Field22"].focus();    
    document.getElementById("error").innerHTML = text;
    return false;
  }
   if (document.forms["form54"]["Field23"].value == "") {
    text += "<span style='color: red'>Please enter lastname </span>"+ "<br>"; 
    document.forms["form54"]["Field23"].focus();  
    document.getElementById("error").innerHTML = text;
    return false;
  }

  if (document.forms["form54"]["Field13"].value == "") {
    text += "<span style='color: red'>Please enter email </span>"+ "<br>"; 
    document.forms["form54"]["Field13"].focus();  
    document.getElementById("error").innerHTML = text;
    return false;
  }
    if (document.forms["form54"]["Field25"].value == "" || document.forms["form54"]["Field25-1"].value == "" || document.forms["form54"]["Field25-2"].value == "") {
    text += "<span style='color: red'>Please enter phone </span>"+ "<br>"; 
    document.forms["form54"]["Field25"].focus(); 
    document.forms["form54"]["Field25-1"].focus(); 
    document.forms["form54"]["Field25-2"].focus();    
    document.getElementById("error").innerHTML = text;
    return false;
  }
  document.getElementById('form54').submit();
   return( true );  

}
</script>
</body>
</html>