<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <!-- CSS 파일 불러오기 -->
    <link rel="stylesheet" type="text/css" href="assets/css/topbar.css"> <!-- 상단바 스타일-->
    <link rel="stylesheet" type="text/css" href="assets/css/sidebar_menu.css"> <!-- 사이드바 메뉴 스타일-->
    <link rel="stylesheet" type="text/css" href="assets/css/mapApi.css"> <!--mapApi 스타일-->
    <link rel="stylesheet" type="text/css" href="assets/css/sidebar_content.css"> <!-- 사이드바 내용 스타일-->
    <link rel="stylesheet" type="text/css" href="assets/css/sidebar.css"> <!-- 사이드바 스타일 -->

    <style> 
        /* 사이드바 크기 100% 적용해주기 위해서 html과 body에 height 100% 적용 */        
        html{
            height: 100%
        }

        body {
            height: 100%;
        }
    </style>
    <!-- 검색 아이콘 불러오기 -->
    <script src="https://kit.fontawesome.com/a0003427fc.js" crossorigin="anonymous"></script>
    <!-- jquery 불러오기 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>

<body>
    <!-- 상단바 -->
    <header>
        <h1>카페핏유</h1>

        <!-- 검색창 -->
        <form action="#">
            <div class="search-box">
                <input class="search-txt" type="text" name="" placeholder="지역 / 공간 / 큐레이션 검색">
                <a class="search-btn" href="#">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </a>
            </div>
        </form>

        <!-- 상단바 버튼 -->
        <button id="category">카테고리</button>

        <button id="save">저장한공간</button>

        <button id="follow">팔로잉</button>
    </header>

    <!-- 상단바 왼쪽 사이드바 여는 체크박스 -->
    <input type="checkbox" id="menuicon" style="z-index: 100;">
    <label for="menuicon" style="top: 40px;" style="z-index: 100;">
        <span style="z-index: 100;"></span>
        <span style="z-index: 100;"></span>
        <span style="z-index: 100;"></span>
    </label>

    <!-- 사이드바 영역 -->
    <div class="sidebar" style="z-index: 2;" id="sidebar">
        <span style="width: 300px; height: 110px; display: block;" id="sidebarspan"></span>

    </div>

    <!-- 맵영역 생성 -->
    <div id="map" style="width:100%;height:89%;" z-index:1></div>

    <!-- 카카오 api 불러오기 -->
    <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0f3dc0804e4d3bcafcaed409c1bfc7e6"></script>
    
    <!-- mapApi js 불러오기 -->
    <script type="text/javascript" src="assets/js/mapApi.js"></script>
    <!-- sidebarContent js 불러오기 -->
    <script type="text/javascript" src="assets/js/sidebarContent.js"></script>


    <script>
        
        addSidebarContent();
        addSidebarContent();
        addSidebarContent();
        addSidebarContent();
        addSidebarContent();

    </script>
</body>

</html>