<cfif structKeyExists(form,'saveForm')>
	<cfif structKeyExists(form,"Field12") and len(trim(form.Field12))>
		<cfset thisDir = expandPath(".")>
		<cffile action="upload" fileField="Field12" destination="#thisDir#" result="fileUpload"
				nameconflict="overwrite" accept="application/pdf,application/vnd.ms-word" >
			<cfif fileUpload.fileWasSaved>
			</cfif>
	</cfif>
		<cfset application.task23.addUser(form.Field17,form.Field19,form.fld_userdob,form.Field14,#fileUpload.serverfile#,form.Field16,form.Field22,form.Field23,form.Field13,form.Field25) />
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
								<label class="desc notranslate" id="title17" for="Field17">Which position are you applying for?
									<span id="req_17" class="req">*</span>
								</label>
								<div>
									<select id="Field17" name="Field17" class="field select medium" onchange="handleInput(this);" onkeyup="handleInput(this);" tabindex="0" data-wufoo-field="dropdown">
										<option value="" selected="selected"></option>
										<option value="Interface Designer">Interface Designer</option>
										<option value="Software Engineer">Software Engineer</option>
										<option value="System Administrator">System Administrator</option>
										<option value="Office Manager">Office Manager</option>
									</select>
								</div>
							</li>
							<li id="fo54li19" class="focused">
								<fieldset>
									<legend id="title19" class="desc notranslate">Are you willing to relocate?
										<span id="req_19" class="req">*</span>
									</legend>
									<div>
										<input id="radioDefault_19" name="Field19" type="hidden" value="">
										<span>
											<input id="Field19_0" name="Field19" type="radio" class="field radio" value="Yes" tabindex="0" onchange="handleInput(this);" onmouseup="handleInput(this);" checked="checked">
											<label class="choice" for="Field19_0">
												<span class="choice__text notranslate">Yes</span>
												<span class="choice__qty"></span>
											</label>
										</span>
										<span>
											<input id="Field19_1" name="Field19" type="radio" class="field radio" value="No" tabindex="0" onchange="handleInput(this);" onmouseup="handleInput(this);" >
											<label class="choice" for="Field19_1">
												<span class="choice__text notranslate">No</span>
												<span class="choice__qty"></span>
											</label>
										</span>
									</div>
								</fieldset>
							</li>
							<li id="fo54li20" class="date notranslate">
								<label class="desc" id="title20">When can you start?
									<span id="req_20" class="req">*</span>
								</label>
								<input type="date" name="fld_userdob" id="fld_userdob"  />
							</li>
							<li id="fo54li14" class="notranslate       ">
								<label class="desc" id="title14" for="Field14">Portfolio Web Site</label>
								<div>
									<input id="Field14" name="Field14" type="text" class="field text large" value="" maxlength="255" tabindex="0" placeholder="">
								</div>
							</li>
							<li id="fo54li12" class="notranslate altInstruct">
								<label class="desc" id="title12" for="Field12">Attach a Copy of Your Resume</label>
								<div>
									<input id="Field12" name="Field12" type="file" class="field file" size="12" data-file-max-size="10" tabindex="0" data-wufoo-field="file-upload">
								</div>
								<p class="instruct" id="instruct12">
									<small>Word or PDF Documents Only</small>
								</p>
							</li>
							<li id="fo54li16" class="notranslate">
								<label class="desc" id="title16">Salary Requirements</label>
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
							<li id="fo54li24" class="notranslate section">
								<section>
									<h3 id="title24">
										Your Contact Information
									</h3>
								</section>
							</li>
							<li id="fo54li22" class="notranslate">
								<label class="desc" id="title22">Name
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
								<label class="desc" id="title13" for="Field13">Email Address
									<span id="req_13" class="req">*</span>
								</label>
								<div>
									<input id="Field13" name="Field13" type="email" spellcheck="false" class="field text large" value="" maxlength="255" tabindex="0" onkeyup="handleInput(this);" onchange="handleInput(this);" placeholder="" >
								</div>
							</li>
							<li id="fo54li25" class="phone notranslate">
								<label class="desc" id="title25">Phone
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
									<input id="saveForm" name="saveForm" class="btTxt submit" type="button" value="Submit" onclick="validateForm()">
								</div>
							</li>
						</ul>
					</form>
			</div>
<script src="./js/task23.js"></script>
</body>
</html>