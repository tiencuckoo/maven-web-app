<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rock, Paper, Scissors Game</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            margin-top: 50px;
        }
        .choice {
            padding: 10px 20px;
            margin: 10px;
            font-size: 20px;
            cursor: pointer;
        }
        #result {
            margin-top: 20px;
            font-size: 24px;
        }
    </style>
</head>
<body>
    <h1>Rock, Paper, Scissors!</h1>
    <div>
        <button class="choice" onclick="playGame('rock')">Rock</button>
        <button class="choice" onclick="playGame('paper')">Paper</button>
        <button class="choice" onclick="playGame('scissors')">Scissors</button>
    </div>
    <div id="result"><%= (request.getAttribute("result") != null) ? request.getAttribute("result") : "" %></div>
    <script>
        function playGame(playerChoice) {
            var form = document.createElement('form');
            form.method = 'POST';
            form.action = 'result.jsp';
            var input = document.createElement('input');
            input.type = 'hidden';
            input.name = 'playerChoice';
            input.value = playerChoice;
            form.appendChild(input);
            document.body.appendChild(form);
            form.submit();
        }
    </script>
</body>
</html>

