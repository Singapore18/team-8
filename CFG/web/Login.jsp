<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<!------ Include the above in your HEAD tag ---------->

<style>
    .login-block{
        background: #009fff;  /* fallback for old browsers */
        background: -webkit-linear-gradient(to bottom, #000000, #ffffff);  /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to bottom, #000000, #ffffff); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        float:left;
        width:100%;
        padding : 50px 0;
    }
    .banner-sec{background:url(${pageContext.request.contextPath}/res/img/login-bg.jpg)  no-repeat left bottom; background-size:cover; min-height:500px; border-radius: 0 10px 10px 0; padding:0;}
    .container{background:#fff; border-radius: 10px; box-shadow:15px 20px 0px rgba(0,0,0,0.1);}
    .carousel-inner{border-radius:0 10px 10px 0;}
    .carousel-caption{text-align:left; left:5%;}
    .login-sec{padding: 50px 30px; position:relative;}
    .login-sec .copy-text{position:absolute; width:80%; bottom:20px; font-size:13px; text-align:center;}
    .login-sec .copy-text i{color:#FEB58A;}
    .login-sec .copy-text a{color:#E36262;}
    .login-sec h2{margin-bottom:30px; font-weight:800; font-size:30px; color: #DE6262;}
    .login-sec h2:after{content:" "; width:100px; height:5px; background:#FEB58A; display:block; margin-top:20px; border-radius:3px; margin-left:auto;margin-right:auto}
    .btn-login{background: #DE6262; color:#fff; font-weight:600;}
    .banner-text{width:70%; position:absolute; bottom:40px; padding-left:20px;}
    .banner-text h2{color:#000000; font-weight:600;}
    .banner-text h2:after{content:" "; width:100px; height:5px; background:#000000; display:block; margin-top:20px; border-radius:3px;}
    .banner-text p{color:#000000;}
</style>    

<section class="login-block">
    <div class="container">
        <div class="row">
            <div class="col-md-4 login-sec">
                <h2 class="text-center">Login Now</h2>
                <form class="login-form">
                    <div class="form-group">
                        <label for="exampleInputEmail1" class="text-uppercase">Username</label>
                        <input type="text" class="form-control" placeholder="">

                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1" class="text-uppercase">Password</label>
                        <input type="password" class="form-control" placeholder="">
                    </div>


                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="checkbox" class="form-check-input">
                            <small>Remember Me</small>
                        </label>
                        <button type="submit" id="submit" class="btn btn-login float-right"><a href="http://localhost:8084/CFG/CourseList.jsp">Submit</a></button>
                    </div>

                </form>
                <div class="copy-text">Created with <i class="fa fa-heart"></i> by <a href="http://grafreez.com">Grafreez.com</a></div>
            </div>
            <div class="col-md-8 banner-sec">
                <div>
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active">
                            <img class="d-block img-fluid" src="${pageContext.request.contextPath}/res/img/login-bg.jpg" alt="First slide">
                            <div class="carousel-caption d-none d-md-block">
                                <div class="banner-text">
                                    <h2>Halogen Foundation Singapore</h2>
                                    <p>To inspire and influence a generation of young people to lead themselves and others well</p>
                                </div>	
                            </div>
                        </div>
                    </div>	   

                </div>
            </div>
        </div>
</section>
                            <script>
// onclick event is assigned to the #button element.
document.getElementById("submit").onclick = function() {
  window.location.href = "http://localhost:8084/CFG/CourseList.jsp";
};
</script>