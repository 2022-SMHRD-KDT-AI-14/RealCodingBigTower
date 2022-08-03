

    var positions = [  // 마커의 위치
    new kakao.maps.LatLng(33.44975, 126.56967),
    new kakao.maps.LatLng(33.450579, 126.56956),
    new kakao.maps.LatLng(33.4506468, 126.5707)
],

selectedMarker = null; // 클릭한 마커를 담을 변수

var names=[
    '라면',
    '돈까스',
    '짜장면'
]

var mapContainer = document.getElementById('map'), // 지도를 표시할 div
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption), // 지도를 생성합니다
    selectedCustomOverlay = null;




// 지도에 마커와 오버레이 생성
for(var i = 0, len = positions.length; i < len; i++){

// 마커생성 함수 사용
addMarker(positions[i], names[i],i)

// 오버레이생성 함수 사용
addCustomOverlay(positions[i], names[i],i)


}

// 커스텀오버레이 생성 함수
function addCustomOverlay(position, name,i){
// 오버레이 컨텐트

var content = '<div class ="label'+i+' basic"><span class="slabel">'+name+'</span></div>';

var position = position

// 커스텀 오버레이를 생성합니다
var customOverlay = new kakao.maps.CustomOverlay({
    position: position,
    content: content
});

// 커스텀 오버레이를 지도에 표시합니다
customOverlay.setMap(map);

}

// 마커 생성 함수
function addMarker(position, name,i){
    // 마커 2가지 생성
// 기본 마커 이미지 생성(normalImage)
var N_imageSrc='https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png',
    N_imageSize = new kakao.maps.Size(64,69),
    N_imageOption = {offset: new kakao.maps.Point(27,69)}

// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다.
var N_markerImage = new kakao.maps.MarkerImage(N_imageSrc, N_imageSize, N_imageOption)
    
// 클릭 마커 이미지 생성(clickImage)
var C_imageSrc='images/horse_man.png',
    C_imageSize=new kakao.maps.Size(64,69)
    C_imageOption = {offset: new kakao.maps.Point(27,69)}

// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다.
var C_markerImage = new kakao.maps.MarkerImage(C_imageSrc, C_imageSize, C_imageOption)

// 마커 맵에 표현
var marker = new kakao.maps.Marker({
    map: map,
    position: position,
    image: N_markerImage,
    content : name
});

// marker에 Normal 마커이미지 저장
marker.N_markerImage = N_markerImage;

// 클릭시 동작 생성
kakao.maps.event.addListener(marker, 'click', function() {

    $('*').removeClass('clicked')


// 클릭된 마커가 없고, click 마커가 클릭된 마커가 아니면
    // 마커의 이미지를 클릭 이미지로 변경합니다
    if (!selectedMarker || selectedMarker !== marker) {

// 클릭된 마커 객체가 null이 아니면
// 클릭된 마커의 이미지를 기본 이미지로 변경하고
!!selectedMarker && selectedMarker.setImage(selectedMarker.N_markerImage);

// 현재 클릭된 마커의 이미지는 클릭 이미지로 변경합니다
marker.setImage(C_markerImage);
    }

// 클릭된 마커를 현재 클릭된 마커 객체로 설정합니다
selectedMarker = marker;

$('.label'+i).addClass('clicked')

panTo(position);



});


}

function panTo(position) {
// 이동할 위도 경도 위치를 생성합니다 
var moveLatLon = position

// 지도 중심을 부드럽게 이동시킵니다
// 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
map.panTo(moveLatLon);            
}        

// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
// var zoomControl = new kakao.maps.ZoomControl();
// map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

map.setZoomable(false);   