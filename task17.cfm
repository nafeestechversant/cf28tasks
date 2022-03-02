<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 17</title>
</head>
<body>
<form id="">
<p id="error"></p>
<p id="demo"></p>
<table width="75%" cellpadding="0" cellspacing="0">
 <tr><td align="center">
   <label for="fld_userNumber">Enter Number:</label>					
 </td>
 <td align="left"><input name="fld_userNumber" id="fld_userNumber" required="true" message="Please provide a Number Only." /></td>
 </tr>
  <tr><td align="right"><input type="button" value="Submit" onclick="testNumeric()">
  </td>
  </tr>
 </table>
</form>
<script>
function testNumeric(form, ctrl, value) {
    var aNumber = /[0-9]/;
    var chknum = document.getElementById('fld_userNumber').value;
if (chknum.search (aNumber) == -1)
{
   
    document.getElementById("error").innerHTML = "Not a Number";
return (false);
}
else
{
    var text = "";
    var color = "";
    for (var i = 1; i <= chknum; i++) {
        var oddOReven = i % 2 == 0;

        if(i & 1)
        {
           text += "<span style='color: blue'>"+ i +"</span>"+ "<br>";
        }
        else
        {
             text += "<span style='color: green'>"+ i +"</span>"+ "<br>";
            // EVEN
        }
        
    }

    document.getElementById("demo").innerHTML = text;
return (true);
}
}
</script>
</body>
</html>