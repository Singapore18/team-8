<!DOCTYPE html>
<%
    String courseSelected = request.getParameter("course");
%>
<html>
    <head>
        <title>Bootstrap theme, jQuery Survey Library Example</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://unpkg.com/jquery"></script>
        <script src="https://surveyjs.azureedge.net/1.0.49/survey.jquery.js"></script>
        <link rel="stylesheet" href="./res/css/survey.css">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap@3.3.7/dist/css/bootstrap.min.css">
    </head>
    <body>
        <div id="surveyElement">
        </div>
        <div id="surveyResult"></div>
        <script type="text/javascript" src="./res/js/survey.js"></script>

    </body>
</html>
