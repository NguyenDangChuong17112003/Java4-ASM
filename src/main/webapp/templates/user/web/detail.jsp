<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="./assets/angular-1.8.2/angular.js"></script>
    <script src="./assets/angular-1.8.2/angular-route.js"></script>
    <script src="./assets/angular-1.8.2/angular.min.js"></script>
    <style>
        td b {
            color: #ccc;
        }

        h6 {
            background: -webkit-gradient(linear, left top, right top, from(#ff8a00), to(#da1b60));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .film-ct p {
            color: #ccc;
        }
    </style>
</head>

<body ng-app="myApp" ng-controller="myCtrl" style="background-color:#151d25">
    <div class="container">
        <div class="detailfilm" style="margin: 5px;">
            <div class="row">
                <!-- <img src="/image/item/{{movies[index].img}}" alt="" class="col-3">
                <div class="col-2" style="color: white;">
                    <div class="row"><b>Tên</b></div>
                    <div class="row"><b>Tên khác</b></div>
                    <div class="row"><b>Thể loại</b></div>
                    <div class="row"><b>Tập mới nhất</b></div>
                    <div class="row"><b>Thông tin khác</b></div>
                    <div class="row"><b>Đánh giá</b></div>
                </div>
                <div class="col-7" style="color: white;">
                    <div class="row"><b>{{movies[index].nameMv}}</b></div>
                    <div class="row"><b>{{movies[index].transMv}}</b></div>
                    <div class="row"><b>Phim vui</b></div>
                    <div class="row"><b>1</b></div>
                    <div class="row"><b>chua them</b></div>
                    <div class="row"><b>chua them</b></div>
                </div> -->
                <table class="table table-considered" style="background-color: #0f171e;">
                    <div ng-repeat="mv in movies">
                        <tr>
                            <td rowspan="6" style="width: 300px;"><img src="./image/item/{{movies[index].img}}" alt=""
                                    width="100%"></td>
                            <td><b>Tên</b></td>
                            <th><b style="color: #cf8e19;">{{movies[index].nameMv}}</b></th>
                        </tr>
                        <tr>
                            <td><b>Tên khác</b></td>
                            <td><b>{{movies[index].transMv}}</b></td>
                        </tr>
                        <tr>
                            <td><b>Thể loại</b></td>
                            <td><b>{{movies[index].genres}}</b></td>
                        </tr>
                        <tr>
                            <td><b>Thông tin khác</b></td>
                            <td><b>{{movies[index].another-info}}</b></td>
                        </tr>
                        <tr>
                            <td><b>Đánh giá</b></td>
                            <td><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                    class="bi bi-star-fill" viewBox="0 0 16 16" style="color:#cf8e19;">
                                    <path
                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                </svg><b>{{movies[index].rate}}</b></td>
                        </tr>
                    </div>

                </table>

            </div>
            <div class="row watch" style="background-color: #151d25; padding-top:8px !important; padding-bottom: 8px;">
                <div class="col-2">
                    <a class="btn btn-success" href="#!watch/{{movies[index].id}}">Xem phim</a>
                </div>
                <div class="col offset-7">
                    <button class="btn btn-success" data-toggle="modal" data-target="#exampleModalCenter">Chia
                        sẻ</button>
                </div>
                <div class="col">
                    <button class="btn btn-success" ng-click="addFav(movies[index])">Theo dõi</button>
                </div>
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
                <button class="btn btn-light chap" style="padding:2px 20px !important;margin: 5px 10px">1</button>
            </div>
            <div class="row"
                style="background-color: #22466b; padding-top:8px !important; padding-bottom: 8px;margin-top: 10px !important;">
                <b style="color:#ccc; padding-left: 10px;">Phim Chiếu 1 Tập Vào Trưa Thứ 7</b>
            </div>
            <div class="row" style="background-color: #151d25; padding-top:8px !important; padding-bottom: 8px;">
                <div class="col">
                    <h6>NỘI DUNG PHIM</h6>
                </div>
                <div class="col-12">
                    <b style="color: #ccc;">Xem phim {{movies[index].nameMv}}</b> <br>
                    <p>{{movies[index].film-content}}</p>
                    <p>{{movies[index].film-content1}}</p>
                    <p>{{movies[index].film-content2}}</p>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content" style="background-color:#1b2d3c ;">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle" style="color: #ccc;">Chia sẻ cho bạn bè</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <tr>
                        <th><img src="./image/item/{{movies[index].img}}" alt="" width="30%"></th>
                        <th><b style="color: #cf8e19;">{{movies[index].nameMv}}</b></th>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <input type="text"
                                style="color: #ccc; background-color: #040607; margin-top: 10px; margin-bottom: 10px;"
                                class="form-control" placeholder="Nhập email">
                        </th>
                    </tr>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Chia sẻ</button>
                </div>
            </div>
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