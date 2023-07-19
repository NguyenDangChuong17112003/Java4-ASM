<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        a {
            text-decoration: none;
            color: #ccc;
        }

        a:hover {
            text-decoration: none;
        }
    </style>
</head>

<body>
    <div class="content">
        <div class="container">
            <div class="row" style="background-color: #151d25;">
                <div class="article col-8" style="margin-top: 15px; margin-bottom: 15px;">
                    <h5 style="margin-left: 30px; font-weight: 700;">TỦ PHIM THEO DÕI</h5>
                    <div class="row row-cols-lg-4">
                        <div class="col-3 " ng-repeat="f in fav track by $index" style="padding:5px !important;">
                            <a href="#!detail/{{f.id}}">
                                <div class="card" style="border: 0;position: relative;">
                                    <div class="card-body"
                                        style="background: url(./image/item/{{f.img}}) no-repeat; height: 260px; width: 100%;">
                                        <div class="title-card">
                                            <b style="position: absolute; bottom: 25%;">{{f.nameMv}}</b>
                                            <p>{{f.transMv}}</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>

                </div>
                <div class="aside col-4" style="margin-top: 15px; background-color: #060808;">
                    <div class="row aside-heading">
                        <h6 style="margin-left: 40px;">XẾP HẠNG</h6>
                    </div>
                    <div class="row">
                        <div class="col-12" ng-repeat="mv in movies">
                            <a href="#!detail/{{mv.id}}">
                                <div class="row">
                                    <img src="./image/item/{{mv.img}}" alt="" class="col-4">
                                    <div class="title">
                                        <label style="color:white">{{mv.nameMv}}</label>
                                        <p>{{mv.transMv}}</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="./assets/js/javascript.js"></script>
</body>
</html>