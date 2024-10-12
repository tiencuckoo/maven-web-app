<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Random" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
    <h2>Rock-Paper-Scissors Result</h2>
    <%
        String userChoice = request.getParameter("choice");
        String[] options = {"rock", "paper", "scissors"};
        String aiChoice = options[new Random().nextInt(options.length)];

        String result = "";
        if (userChoice.equals(aiChoice)) {
            result = "It's a tie!";
        } else if ((userChoice.equals("rock") && aiChoice.equals("scissors")) ||
                   (userChoice.equals("scissors") && aiChoice.equals("paper")) ||
                   (userChoice.equals("paper") && aiChoice.equals("rock"))) {
            result = "You win!";
        } else {
            result = "AI wins!";
        }
    %>
    <p>Your choice: <%= userChoice %></p>
    <p>AI choice: <%= aiChoice %></p>
    <p><%= result %></p>
    <a href="index.jsp">Play again</a>
</body>
</html>
