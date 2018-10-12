<%@include file="header.jsp"%>
<!DOCTYPE html>
<%
    String courseSelected = request.getParameter("course");
%>
<html>
    <head>
        <title>Halogen Questionaire</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://unpkg.com/jquery"></script>
        <script src="https://surveyjs.azureedge.net/1.0.49/survey.jquery.js"></script>
        <link rel="stylesheet" href="./res/css/survey.css">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap@3.3.7/dist/css/bootstrap.min.css">
    <div id="surveyElement"></survey>
</head>
<body>
    <div id="survey"></div>
</body>
</html>

<script>
    $(document).ready(function () {
        baseUrl = 'https://cfgtestdrive.firebaseio.com/Question.json';
        $.get(baseUrl).then(function (data) {
            var jsonQns = {};
            var questions = {
                type: "matrix",
                name: "Workshop Feedback",
                title: "Please indicate the extent to which you agree or disagree to the following statements",
                columns: [
                    {
                        value: 1,
                        text: "Strongly Disagree"
                    }, {
                        value: 2
                    },
                    {
                        value: 3
                    },
                    {
                        value: 4
                    },
                    {
                        value: 5
                    },
                    {
                        value: 6
                    },
                    {
                        value: 7,
                        text: "Strongly Agree"
                    }
                ]
            };
            rows = [];
            let keys = Object.keys(data);
            for (let key of keys) {
                let question = data[key];
                if (question !== null) {
                    var id = key;
                    var text = question.text;
                    var questionObj = {
                        value: id,
                        text: text
                    };
                    rows.push(questionObj);
                }
            }
            questions['rows'] = rows;
            jsonQns['questions'] = [questions];
            json = JSON.stringify(jsonQns);
            Survey.defaultBootstrapCss.navigationButton = "btn btn-green";
            Survey.defaultBootstrapCss.rating.item = "btn btn-default my-rating";
            Survey.StylesManager.applyTheme("bootstrap");
            window.survey = new Survey.Model(json);
            survey.onComplete.add(function (result) {
                //document.querySelector('#surveyResult').innerHTML = "result: " + JSON.stringify(result.data);
                //console.log(JSON.stringify(result.data));
                let qns = Object.keys(JSON.stringify(result.data));
                console.log(JSON.stringify(result.data));
                console.log(qns);
                for (let key of qns) {
                    let questionNo = key;
                    console.log(questionNo);
                    let response = result.data['Workshop Feedback'][questionNo];
                    console.log(response);
                    if(result.data.hasOwnProperty(response)){
                        var param = '{' + questionNo + ': ' + response + "}";
                        console.log(param);
                        /*$.ajax({
                            url: 'https://cfgtestdrive.firebaseio.com/StudentResponses/pre/1/1.json',
                            type: "POST",
                            data: {"1":"7"},
                            success: function () {
                                alert("success");
                            }
                        });*/
                        var key1 = firebase.database().ref('StudentResponses').child('pre').child('1').child('1').push(param);
                    }else{
                        console.log('halp');
                    }
                }
            });
            $("#surveyElement").Survey({
                model: survey
            });
        });
    });
</script>
