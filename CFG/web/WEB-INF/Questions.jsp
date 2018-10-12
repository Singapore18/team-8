<%@include file="header.jsp"%>
<link href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap.min.css">
<script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap.min.js"></script>

<style>
    body {
        background-image: linear-gradient(-30deg, #fed8b1, #ff7f50);
    }
</style>

<div class="container" style="width: 100%;">
    <ul id="courses" class="list-group" style="padding-top: 100px; padding-bottom: 100px; align-content: center;">
        <li class="list-group-item list-group-item-action">Cras justo odio</li>
        <li class="list-group-item list-group-item-action">Dapibus ac facilisis in</li>
        <li class="list-group-item list-group-item-action">Morbi leo risus</li>
        <li class="list-group-item list-group-item-action">Porta ac consectetur ac</li>
        <li class="list-group-item list-group-item-action   ">Vestibulum at eros</li>
    </ul>
</div>

<script>
    $(document).ready(function () {
        $('.list-group-item').on('click', function () {
            question_selected = $(this).text();
            window.location.href = 'Questionaire.jsp?question=' + question_selected;
        });

        baseUrl = 'https://cfgtestdrive.firebaseio.com/Question.json';
        $('#questions').empty();
        $.get(baseUrl).then(displayQuestions);
    });
    
    function displayQuestions(questions){
        let keys = Object.keys(questions);
        for(let key of keys){
            let question = questions[key];
            if(question.text){
                $('#questions').append('<li class="list-group-item list-group-item-action" id='+ question.ID + '>' + course.Description + '</li>');
            }
        }
    }
</script>