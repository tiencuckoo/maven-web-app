<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rock Paper Scissors</title>
</head>
<body>
    <h2>Play Rock-Paper-Scissors</h2>
    <form action="result.jsp" method="post">
        <label for="choice">Choose:</label>
        <select id="choice" name="choice">
            <option value="rock">Rock</option>
            <option value="paper">Paper</option>
            <option value="scissors">Scissors</option>
        </select>
        <input type="submit" value="Play">
    </form>
</body>
</html>
