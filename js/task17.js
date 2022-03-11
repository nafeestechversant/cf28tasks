function testNumeric(form, ctrl, value) {
    var aNumber = /[0-9]/;
    var chknum = document.getElementById('fld_userNumber').value;
    if (chknum.search(aNumber) == -1) {

        document.getElementById("error").innerHTML = "Not a Number";
        return (false);
    }
    else 
    {
        var text = "";
        var color = "";
        for (var i = 1; i <= chknum; i++) {
            var oddOReven = i % 2 == 0;

            if (i & 1) {
                text += "<span style='color: blue'>" + i + "</span>" + "<br>";
            }
            else {
                text += "<span style='color: green'>" + i + "</span>" + "<br>";
                // EVEN
            }

        }
        document.getElementById("demo").innerHTML = text;
        return (true);
    }
}