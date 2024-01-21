<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stoplight</title>
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .light-container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .light {
            width: 100px;
            height: 50px;
            border: 1px solid #000;
            transition: opacity 0.5s ease; /* Smooth transition for opacity changes */
            margin-bottom: 10px; /* Adjust margin between buttons */
        }

        #redButton {
            background-color: #ff0000;
        }

        #yellowButton {
            background-color: #ffff00;
        }

        #greenButton {
            background-color: #008000;
        }

        .light.off {
            opacity: 0.2; /* Adjust opacity for a very faint color */
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var counter = 1;

            function toggleLights() {
                $("#redButton").toggleClass("off", counter % 4 !== 1);
                $("#yellowButton").toggleClass("off", counter % 2 !== 0);
                $("#greenButton").toggleClass("off", counter % 4 !== 3);

                counter++;
                setTimeout(toggleLights, counter % 2 === 0 ? 6000 : 2000); // 2 seconds for yellow, 8.5 seconds for others
            }

            toggleLights();
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="light-container">
            <button id="redButton" class="light"></button>
            <button id="yellowButton" class="light"></button>
            <button id="greenButton" class="light"></button>
        </div>
    </form>
</body>
</html>
