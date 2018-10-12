<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-image: linear-gradient(-45deg, #000000, #ffffff);">
    <a class="navbar-brand" href="CourseList.jsp"><strong><span>Halogen Foundation Singapore</strong></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="CourseList.jsp">Course Lists</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="results.jsp">Results</a>
            </li>
        </ul>
    </div>

    <div>
        <u1 class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="Login.jsp">Logout</a>
            </li>
        </u1>
    </div>
</nav>

<script src="https://www.gstatic.com/firebasejs/5.5.3/firebase.js"></script>
<script>
  // Initialize Firebase
  // TODO: Replace with your project's customized code snippet
  var config = {
    apiKey: "AIzaSyBnuIGVLDRzsKk7ppsisiBSAUQnAgm5c-I",
    authDomain: "cfgtestdrive.firebaseapp.com",
    databaseURL: "https://cfgtestdrive.firebaseio.com",
    projectId: "cfgtestdrive"
  };
  firebase.initializeApp(config);
</script>
