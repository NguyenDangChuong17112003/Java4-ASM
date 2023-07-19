<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./assets/angular-1.8.2/angular.js"></script>
    <script src="./assets/angular-1.8.2/angular-route.js"></script>
    <script src="./assets/angular-1.8.2/angular.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
</head>

<body>
    <div class="container">
        <div class="row">
            <iframe width="100%" height="500" src="https://www.youtube.com/embed/rTITHMhXm4s"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                allowfullscreen></iframe>
        </div>
        <div class="row">
            <div class="col-1"><button class="btn btn-primary" ng-click="addFav(movies[index])"><i class="bi bi-hand-thumbs-up"></i>Thích</button></div>
            <div class="col-1"><button class="btn btn-primary"><i class="bi bi-hand-thumbs-down"></i>Không thích</button></div>
        </div>
        <div class="row" style="margin-top: 5px !important;">
            <div class="col-3">
                <label for="" style="color: #ccc; font-weight: 600;">TÌM TẬP NHANH</label>
                <input type="text" class="form-control"
                    style="background-color: rgb(23, 36, 46); color: white; border:1px solid #273e52">
            </div>
        </div>
        <div class="row"
            style="background-color: #151d25; padding-top:8px !important; padding-bottom: 8px;margin-top: 10px !important;">
            <button class="btn chap">1</button>
        </div>
        <div class="row"
            style="background-color: #22466b; padding-top:8px !important; padding-bottom: 8px;margin-top: 10px !important;">
            <b style="color:#ccc; padding-left: 10px;">Phim Chiếu 1 Tập Vào Trưa Thứ 7</b>
        </div>
        <div class="row" style="background-color: #151d25; padding-top:8px !important; padding-bottom: 8px;">
            <div class="row">

            </div>
        </div>
    </div>
    	<script src="./assets/js/javascript.js"></script>
</body>
</html>