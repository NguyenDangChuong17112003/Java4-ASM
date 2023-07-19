<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        h4 {
            background: -webkit-gradient(linear, left top, right top, from(#ff8a00), to(#da1b60));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="./assets/angular-1.8.2/angular.js"></script>
    <script src="./assets/angular-1.8.2/angular-route.js"></script>
    <script src="./assets/angular-1.8.2/angular.min.js"></script>
</head>

<body  style="background-color:#151d25">
   
        
        
        <div class="container" style="background-color:#151d25 ;">
            <div class="row" style="margin-top:20px">
                <h4 style="margin-left: 40px;">ĐĂNG NHẬP TÀI KHOẢN</h4>
            </div>
            <hr>
            <div class="row" style="margin-bottom:20px ;">
                <a href="">
                    <img src="./login/google.jpg" alt="">
                </a>
            </div>
            <div class="row" style="margin-bottom:20px ;">
                <a href="">
                    <img src="./login/facebook.jpg" alt="">
                </a>
            </div>
            <form action="">
                <b style="color: white">Tên tài khoản</b>
                <input type="text" class="form-control" placeholder="Nhập tên tài khoản của bạn"
                    style="background-color:#040607 ; color: white; border: 0;margin-top: 10px; margin-bottom: 10px;">
                <b style="color: white">Mật khẩu</b>
                <input type="text" class="form-control" placeholder="Nhập mật khẩu của bạn"
                    style="background-color:#040607 ; color: white; border: 0;margin-top: 10px; margin-bottom: 10px;">
                <div style="color: white;">
                    <input type="checkbox" value="remeber">Ghi nhớ đăng nhập <br>
                </div>
                <button class="btn btn-success" style="margin-bottom: 15px;margin-top: 15px;">Đăng nhập</button>
            </form>
            <div class="row">
                <label for="" style="color: #ccc;">Chưa có tài khoản? <a href="#!register">Đăng ký ngay</a></label>
            </div>
        </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    <script src="./assets/js/javascript.js"></script>
</body>

</html>