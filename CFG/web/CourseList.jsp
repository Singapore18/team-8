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
    </ul>
</div>

<script>
    $(document).ready(function () {
        baseUrl = 'https://cfgtestdrive.firebaseio.com/Courses.json';
        $.get(baseUrl).then(displayCourses);
    });

    function displayCourses(courses) {
        let keys = Object.keys(courses);
        for (let key of keys) {
            let course = courses[key];
            if (course.Description) {
                $('#courses').append('<button onclick="accessSurvey(this)" class="btn btn-default survey-link" id='+ course.ID +' style="width: 500px; height: 50px; padding-bottom: 30px;">' + course.Description + '</button><br/>');
            }
        }
    }
    
    function accessSurvey(course){
        window.location.href = 'Questionaire.jsp?course=' + course.id;
    }
</script>
