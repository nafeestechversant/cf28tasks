function submitForm() {
    if (document.getElementById("fld_userEmail").value != "") {
       ColdFusion.Ajax.submitForm('myform', 'task24vaildate.cfm', callback,
       errorHandler);
    }
 }
 function callback(text)
 {
   if(text == 1)
     document.getElementById("erroeMsg").innerHTML = "Mail id is already there";
    else 
     document.getElementById("fld_FormSubmit").disabled = false;
 }
 function errorHandler(code, msg)
 {
    alert("Error!!! " + code + ": " + msg);
 }