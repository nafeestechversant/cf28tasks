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
                    <table>
                        <tr>
                            <td>
                                <label for="fld_userNumber">Enter Number:</label>					
                            </td>
                            <td>
                                <input name="fld_userNumber" id="fld_userNumber" required="true" message="Please provide a Number Only." />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="button" value="Submit" onclick="testNumeric()">
                            </td>
                        </tr>
                    </table>
                </form>
<script src="./js/task17.js"></script>
</body>
</html>