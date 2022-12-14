<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
@font-face {
        font-family: nanum;
        src: url(assets/fonts/NanumGothic.otf);
    }
</style>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html;">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="assets/css/Style.css?ver=1">
</head>
<%
String email = (String) request.getAttribute("email");
String nick = (String) request.getAttribute("nick");
%>
<body>

	<div class="main">

		<!-- 개인정보처리방침 -->
		<div class>
			<tr>
				<td colspan="2"><textarea class="info" rows="31" cols="31"
						readonly="readonly">
        
        개인정보처리방침
        
           < 코딩거탑 >
                        ('www.abcd.com'이하 '카페핏유')은(는) 「개인정보 보호법」 제30조에 따라 정보주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리방침을 수립·공개합니다.

○ 이 개인정보처리방침은 2022년 7월 28부터 적용됩니다.
           
           
제1조(개인정보의 처리 목적)

            < 코딩거탑 >('www.abcd.com'이하 '카페핏유')은(는) 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며 이용 목적이 변경되는 경우에는 「개인정보 보호법」 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.

1. 홈페이지 회원가입 및 관리

회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리 목적으로 개인정보를 처리합니다.




제2조(개인정보의 처리 및 보유 기간)

① < 코딩거탑 >은(는) 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의받은 개인정보 보유·이용기간 내에서 개인정보를 처리·보유합니다.

② 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.

1.<홈페이지 회원가입 및 관리>
<홈페이지 회원가입 및 관리>와 관련한 개인정보는 수집.이용에 관한 동의일로부터<3년>까지 위 이용목적을 위하여 보유.이용됩니다.
보유근거 : 홈페이지 회원정보 수집 및 이용에 관한 기록
관련법령 : 신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년
예외사유 :


제3조(처리하는 개인정보의 항목)

① < 코딩거탑 >은(는) 다음의 개인정보 항목을 처리하고 있습니다.

1< 홈페이지 회원가입 및 관리 >
필수항목 : 이메일, 비밀번호 질문과 답, 비밀번호, 로그인ID, 성별
선택항목 :


제4조(개인정보처리의 위탁에 관한 사항)

① < 코딩거탑 >은(는) 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.

1. < >
위탁받는 자 (수탁자) :
위탁하는 업무의 내용 :
위탁기간 :
② < 코딩거탑 >은(는) 위탁계약 체결시 「개인정보 보호법」 제26조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적․관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리․감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.

③ 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.



제5조(개인정보의 파기절차 및 파기방법)


① < 코딩거탑 > 은(는) 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체없이 해당 개인정보를 파기합니다.

② 정보주체로부터 동의받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도 불구하고 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는, 해당 개인정보를 별도의 데이터베이스(DB)로 옮기거나 보관장소를 달리하여 보존합니다.
1. 법령 근거 :
2. 보존하는 개인정보 항목 : 계좌정보, 거래날짜

③ 개인정보 파기의 절차 및 방법은 다음과 같습니다.
1. 파기절차
< 코딩거탑 > 은(는) 파기 사유가 발생한 개인정보를 선정하고, < 코딩거탑 > 의 개인정보 보호책임자의 승인을 받아 개인정보를 파기합니다.

2. 파기방법

전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.

종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다


제6조(정보주체와 법정대리인의 권리·의무 및 그 행사방법에 관한 사항)



① 정보주체는 코딩거탑에 대해 언제든지 개인정보 열람·정정·삭제·처리정지 요구 등의 권리를 행사할 수 있습니다.

② 제1항에 따른 권리 행사는코딩거탑에 대해 「개인정보 보호법」 시행령 제41조제1항에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 코딩거탑은(는) 이에 대해 지체 없이 조치하겠습니다.

③ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다.이 경우 “개인정보 처리 방법에 관한 고시(제2020-7호)” 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.

④ 개인정보 열람 및 처리정지 요구는 「개인정보 보호법」 제35조 제4항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.

⑤ 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.

⑥ 코딩거탑은(는) 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.



제7조(개인정보의 안전성 확보조치에 관한 사항)

< 코딩거탑 >은(는) 개인정보의 안전성 확보를 위해 다음과 같은 조치를 취하고 있습니다.

1. 정기적인 자체 감사 실시
개인정보 취급 관련 안정성 확보를 위해 정기적(분기 1회)으로 자체 감사를 실시하고 있습니다.

2. 개인정보 취급 직원의 최소화 및 교육
개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.

3. 내부관리계획의 수립 및 시행
개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.

4. 해킹 등에 대비한 기술적 대책
<코딩거탑>('카페핏유')은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.

5. 개인정보의 암호화
이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.

6. 접속기록의 보관 및 위변조 방지
개인정보처리시스템에 접속한 기록을 최소 1년 이상 보관, 관리하고 있으며,다만, 5만명 이상의 정보주체에 관하여 개인정보를 추가하거나, 고유식별정보 또는 민감정보를 처리하는 경우에는 2년이상 보관, 관리하고 있습니다.
또한, 접속기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다.

7. 개인정보에 대한 접근 제한
개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.

8. 문서보안을 위한 잠금장치 사용
개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.

9. 비인가자에 대한 출입 통제
개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.




제8조(개인정보를 자동으로 수집하는 장치의 설치·운영 및 그 거부에 관한 사항)



코딩거탑 은(는) 정보주체의 이용정보를 저장하고 수시로 불러오는 ‘쿠키(cookie)’를 사용하지 않습니다.


제9조(행태정보의 수집·이용·제공 및 거부 등에 관한 사항)



① <개인정보처리자>은(는) 서비스 이용과정에서 정보주체에게 최적화된 맞춤형 서비스 및 혜택, 온라인 맞춤형 광고 등을 제공하기 위하여 행태정보를 수집·이용하고 있습니다.

② <개인정보처리자>은(는) 다음과 같이 행태정보를 수집합니다.

9. 행태정보의 수집·이용·제공 및 거부 등에 관한 사항 제공을 위해 수집하는 행태정보의 항목, 행태정보 수집 방법, 행태정보 수집 목적, 보유·이용기간 및 이후 정보처리 방법을 입력하기 위한 표입니다.
수집하는 행태정보의 항목	행태정보 수집 방법	행태정보 수집 목적	보유·이용기간 및 이후 정보처리 방법
웹 검색 이력	이용자의 웹 사이트 방문시 자동 수집	이용자의 관심, 성향에 기반한 개인 맞춤형 상품추천서비스를 제공	
<온라인 맞춤형 광고 등을 위해 제3자(온라인 광고사업자 등)가 이용자의 행태정보를 수집·처리할수 있도록 허용한 경우>
③ <개인정보처리자>은(는) 다음과 같이 온라인 맞춤형 광고 사업자가 행태정보를 수집·처리하도록 허용하고 있습니다.

- 행태정보를 수집 및 처리하려는 광고 사업자 : ○○○, ○○○, ○○○, ○○○,

- 행태정보 수집 방법 : 이용자가 당사 웹사이트를 방문하거나 앱을 실행할 때 자동 수집 및 전송

- 수집·처리되는 행태정보 항목 : 이용자의 웹/앱 방문이력, 검색이력, 구매이력

- 보유·이용기간 : 00일

④ <개인정보처리자>은(는) 온라인 맞춤형 광고 등에 필요한 최소한의 행태정보만을 수집하며, 사상, 신념, 가족 및 친인척관계, 학력·병력, 기타 사회활동 경력 등 개인의 권리·이익이나 사생활을 뚜렷하게 침해할 우려가 있는 민감한 행태정보를 수집하지 않습니다.
⑤ <개인정보처리자>은(는) 만 14세 미만임을 알고 있는 아동이나 만14세 미만의 아동을 주 이용자로 하는 온라인 서비스로부터 맞춤형 광고 목적의 행태정보를 수집하지 않고, 만 14세 미만임을 알고 있는 아동에게는 맞춤형 광고를 제공하지 않습니다.

⑥ <개인정보처리자>은(는) 모바일 앱에서 온라인 맞춤형 광고를 위하여 광고식별자를 수집·이용합니다. 정보주체는 모바일 단말기의 설정 변경을 통해 앱의 맞춤형 광고를 차단·허용할 수 있습니다.

‣ 스마트폰의 광고식별자 차단/허용

(1) (안드로이드) ① 설정 → ② 개인정보보호 → ③ 광고 → ③ 광고 ID 재설정 또는 광고ID 삭제

(2) (아이폰) ① 설정 → ② 개인정보보호 → ③ 추적 → ④ 앱이 추적을 요청하도록 허용 끔

※ 모바일 OS 버전에 따라 메뉴 및 방법이 다소 상이할 수 있습니다.

⑦ 정보주체는 웹브라우저의 쿠키 설정 변경 등을 통해 온라인 맞춤형 광고를 일괄적으로 차단·허용할 수 있습니다. 다만, 쿠키 설정 변경은 웹사이트 자동로그인 등 일부 서비스의 이용에 영향을 미칠 수 있습니다.

‣ 웹브라우저를 통한 맞춤형 광고 차단/허용

(1) 인터넷 익스플로러(Windows 10용 Internet Explorer 11)

- Internet Explorer에서 도구 버튼을 선택한 다음 인터넷 옵션을 선택

- 개인 정보 탭을 선택하고 설정에서 고급을 선택한 다음 쿠키의 차단 또는 허용을 선택

(2) Microsoft Edge

- Edge에서 오른쪽 상단 ‘…’ 표시를 클릭한 후, 설정을 클릭합니다.

- 설정 페이지 좌측의 ‘개인정보, 검색 및 서비스’를 클릭 후 「추적방지」 섹션에서 ‘추적방지’ 여부 및 수준을 선택합니다.

- ‘InPrivate를 검색할 때 항상 ""엄격"" 추적 방지 사용’ 여부를 선택합니다.

- 아래 「개인정보」 섹션에서 ‘추적 안함 요청보내기’ 여부를 선택합니다.

(3) 크롬 브라우저

- Chrome에서 오른쪽 상단 ‘⋮’ 표시(chrome 맞춤설정 및 제어)를 클릭한 후, 설정 표시를 클릭합니다.

- 설정 페이지 하단에 ‘고급 설정 표시’를 클릭하고 「개인정보」 섹션에서 콘텐츠 설정을 클릭합니다.

- 쿠키 섹션에서 ‘타사 쿠키 및 사이트 데이터 차단’의 체크박스를 선택합니다.

52 | 개인정보 처리방침 작성지침 일반

⑧ 정보주체는 아래의 연락처로 행태정보와 관련하여 궁금한 사항과 거부권 행사, 피해 신고 접수 등을 문의할 수 있습니다.

‣ 개인정보 보호 담당부서

부서명 : ○○○ 팀

담당자 : ○○○

연락처 : <전화번호>, <이메일>, <팩스번호>



제10조(추가적인 이용·제공 판단기준)

< 코딩거탑 > 은(는) ｢개인정보 보호법｣ 제15조제3항 및 제17조제4항에 따라 ｢개인정보 보호법 시행령｣ 제14조의2에 따른 사항을 고려하여 정보주체의 동의 없이 개인정보를 추가적으로 이용·제공할 수 있습니다.
이에 따라 < 코딩거탑 > 가(이) 정보주체의 동의 없이 추가적인 이용·제공을 하기 위해서 다음과 같은 사항을 고려하였습니다.
▶ 개인정보를 추가적으로 이용·제공하려는 목적이 당초 수집 목적과 관련성이 있는지 여부

▶ 개인정보를 수집한 정황 또는 처리 관행에 비추어 볼 때 추가적인 이용·제공에 대한 예측 가능성이 있는지 여부

▶ 개인정보의 추가적인 이용·제공이 정보주체의 이익을 부당하게 침해하는지 여부

▶ 가명처리 또는 암호화 등 안전성 확보에 필요한 조치를 하였는지 여부

※ 추가적인 이용·제공 시 고려사항에 대한 판단기준은 사업자/단체 스스로 자율적으로 판단하여 작성·공개함



제11조(가명정보를 처리하는 경우 가명정보 처리에 관한 사항)

< 코딩거탑 > 은(는) 다음과 같은 목적으로 가명정보를 처리하고 있습니다.

▶ 가명정보의 처리 목적

- 직접작성 가능합니다.

▶ 가명정보의 처리 및 보유기간

- 직접작성 가능합니다.

▶ 가명정보의 제3자 제공에 관한 사항(해당되는 경우에만 작성)

- 직접작성 가능합니다.

▶ 가명정보 처리의 위탁에 관한 사항(해당되는 경우에만 작성)

- 직접작성 가능합니다.

▶ 가명처리하는 개인정보의 항목

- 직접작성 가능합니다.

▶ 법 제28조의4(가명정보에 대한 안전조치 의무 등)에 따른 가명정보의 안전성 확보조치에 관한 사항

- 직접작성 가능합니다.

제12조 (개인정보 보호책임자에 관한 사항)

① 코딩거탑 은(는) 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.

▶ 개인정보 보호책임자
성명 :김준영
직책 :팀원
직급 :팀원
연락처 :01075595273, rlawnsdudwmf@naver.com,
※ 개인정보 보호 담당부서로 연결됩니다.


▶ 개인정보 보호 담당부서
부서명 :
담당자 :
연락처 :, ,
② 정보주체께서는 코딩거탑 의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. 코딩거탑 은(는) 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.



제13조(국내대리인의 지정)

정보주체는 ｢개인정보 보호법｣ 제39조의11에 따라 지정된 < 코딩거탑 >의 국내대리인에게 개인정보 관련 고충처리 등의 업무를 위하여 연락을 취할 수 있습니다. < 코딩거탑 >은(는) 정보주체의 개인정보 관련 고충처리 등 개인정보 보호책임자의 업무 등을 신속하게 처리할 수 있도록 노력하겠습니다.

▶ < 코딩거탑 > 은(는) ｢개인정보 보호법｣ 제39조의11에 따라 국내대리인을 지정하였습니다.

- 국내대리인의 성명 : [대리인 성명_직접입력] (법인의 경우 법인명, 대표자의 성명)

- 국내대리인의 주소 : [대리인 주소_직접입력] (법인의 경우 영업소 소재지)

- 국내대리인의 전화번호 : [대리인 전화번호_직접입력]

- 국내대리인의 전자우편 주소 : [대리인 전자우편_직접입력]

제14조(개인정보의 열람청구를 접수·처리하는 부서)
정보주체는 ｢개인정보 보호법｣ 제35조에 따른 개인정보의 열람 청구를 아래의 부서에 할 수 있습니다.
< 코딩거탑 >은(는) 정보주체의 개인정보 열람청구가 신속하게 처리되도록 노력하겠습니다.

▶ 개인정보 열람청구 접수·처리 부서
부서명 :
담당자 :
연락처 : , ,


제15조(정보주체의 권익침해에 대한 구제방법)



정보주체는 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.

1. 개인정보분쟁조정위원회 : (국번없이) 1833-6972 (www.kopico.go.kr)
2. 개인정보침해신고센터 : (국번없이) 118 (privacy.kisa.or.kr)
3. 대검찰청 : (국번없이) 1301 (www.spo.go.kr)
4. 경찰청 : (국번없이) 182 (ecrm.cyber.go.kr)

「개인정보보호법」제35조(개인정보의 열람), 제36조(개인정보의 정정·삭제), 제37조(개인정보의 처리정지 등)의 규정에 의한 요구에 대 하여 공공기관의 장이 행한 처분 또는 부작위로 인하여 권리 또는 이익의 침해를 받은 자는 행정심판법이 정하는 바에 따라 행정심판을 청구할 수 있습니다.

※ 행정심판에 대해 자세한 사항은 중앙행정심판위원회(www.simpan.go.kr) 홈페이지를 참고하시기 바랍니다.

제16조(영상정보처리기기 운영·관리에 관한 사항)
① < 코딩거탑 >은(는) 아래와 같이 영상정보처리기기를 설치·운영하고 있습니다.

1.영상정보처리기기 설치근거·목적 : < 코딩거탑 >의

2.설치 대수, 설치 위치, 촬영 범위 :
설치대수 : 대
설치위치 :
촬영범위 :
3.관리책임자, 담당부서 및 영상정보에 대한 접근권한자 :

4.영상정보 촬영시간, 보관기간, 보관장소, 처리방법
촬영시간 : 시간
보관기간 : 촬영시부터
보관장소 및 처리방법 :
5.영상정보 확인 방법 및 장소 :

6.정보주체의 영상정보 열람 등 요구에 대한 조치 : 개인영상정보 열람.존재확인 청구서로 신청하여야 하며, 정보주체 자신이 촬영된 경우 또는 명백히 정보주체의 생명.신체.재산 이익을 위해 필요한 경우에 한해 열람을 허용함

7.영상정보 보호를 위한 기술적.관리적.물리적 조치 :



제17조(개인정보 처리방침 변경)


① 이 개인정보처리방침은 2022년 7월 28부터 적용됩니다.

② 이전의 개인정보 처리방침은 아래에서 확인하실 수 있습니다.

예시 ) - 20XX. X. X ~ 20XX. X. X 적용 (클릭)

예시 ) - 20XX. X. X ~ 20XX. X. X 적용 (클릭)

예시 ) - 20XX. X. X ~ 20XX. X. X 적용 (클릭)
            
            </textarea></td>
			</tr>
		</div>



		<div class="form-regi">

			<div class="button-wrap">
				<div id="btn"></div>
				<div class="Logo">
					<img src="images/LogoL.png" alt="Logo">
				</div>
			</div>

			<!-- 로그인 폼-->
			<form id="login" action="LoginCon" class="input-group">
				<input type="text" class="input-field" placeholder="아이디를 입력해주세요." name="u_email"
					required> <input type="password" class="input-field"
					placeholder="패스워드를 입력해주세요." name="u_pw" required><br> <br> <br>
				<!-- <button class="submit">Login</button> -->
				<button class="submit" type="submit">Login</button>
				<br> <br>
				<h5>
					<p class="rgmessage">
						<a href="pwfind.html">비밀번호를 잊으셨나요?</a>
					</p>
				</h5>
				<br>
				<p class="message">
					계정이 없으신가요? <a class="rgmessage" onclick="register()">가입하기</a><br>
				</p>
				
			</form>

			<!-- 회원가입 폼 1-->
			<form id="register" action="JoinCon" class="input-group">

				<!-- 아이디 -->
				<input type="email" id="inputE" class="input-field"
					placeholder="아이디를 입력해주세요." name="email" required>

				<!-- 패스워드 -->
				<input type="password" id="password1" class="input-field"
					placeholder="패스워드를 입력해주세요." name="pw" required> <input
					type="password" id="password2" class="input-field"
					placeholder="패스워드를 다시 입력해주세요." name="pw" required>
				<button type="button" class="submit2" onclick="test()">비밀번호
					확인</button>

				<!-- 닉네임 -->
				<input type="text" class="input-field" placeholder="닉네임을 입력해주세요."
					name="nick" required> <br> <br>

				<!-- 성별 -->
				<tr align="center" type="gender" class="input-field">
					<td align="center">성별 :</td>
					<td align="center">남 <input type="radio" value="M"
						name="gender"> 여 <input type="radio" value="F"
						name="gender"></td>
				</tr>
				<br>

				<!-- 직업 -->
				</select>
				<tr type="job" class="input-field">
					<br>
					<td>직업 :</td>
					<select name="job" id="job" class="selectbox"
						onchange="CheckText();">
						<option checked>분류</option>
						<option value="학생">학생</option>
						<option value="대학생">대학생</option>
						<option value="직장인">직장인</option>
						<option value="주부">주부</option>
						<option value="other" checked>기타</option>

					</select>
					<!-- 직업 기타 입력 -->
					<div id="job_kind" style="display: none">
						<input name="job_kind" type="job" class="textbox"
							placeholder="직업을 입력해주세요." value="">
					</div>
					</select>
				</tr>
				<br> <br> <br>

				<!-- 다음 버튼 -->
				<button type="button" class="submit" onclick="login()">이전</button>
				<br>
<!-- 				<button type="button" class="submit" onclick="register2()">다음</button> -->
				<button type="submit" class="submit">가입완료</button>
			</form>

		</div>
		<footer class="footer" align="center">
			<div id="serviceNameArea">
				</a>
			</div>
			<ul>
				<li>Meta &nbsp; 소개 &nbsp; 블로그 &nbsp; 채용 &nbsp; 정보 &nbsp; 도움말
					&nbsp; API &nbsp; 개인정보처리방침 &nbsp; 약관 &nbsp; 인기 &nbsp; 계정 &nbsp;
					해시태그 &nbsp; 위치 &nbsp; Cafe Fit You Lite &nbsp; 연락처 업로드 & 사용자</li>
				<li>댄스 &nbsp; 식음료 &nbsp; 집 및 정원 &nbsp; 음악 시각 &nbsp; 예술</li>
				<li>한국어 ▽ 2022 Cafe Fit You from Mata</li>
			</ul>
	</div>

	<script>
		var x = document.getElementById("login");
		var y = document.getElementById("register");

		function login() {
			x.style.left = "50px";
			y.style.left = "400px";
		}

		function register() {
			x.style.left = "-750px";
			y.style.left = "60px";
			z.style.left = "400px";
		}

		function CheckText() {
			var job_kind = document.getElementById("job_kind");
			if (document.getElementById("job").value == "other") {
				if (navigator.appName.indexOf("Microsoft") > -1) {
					var visible = 'block';
				} else {
					var visible = 'table-row';
				}
				job_kind.style.display = visible;
			} else {
				job_kind.style.display = 'none';
			}
		}

		function checkE() {
			var inputE = $('#inputE').val()
			console.log(inputE)

			$.ajax({
				url : 'EmailCheckCon',
				data : {
					'inputE' : inputE
				},
				type : 'get',
				success : function(data) {
					if (data == 'true') {
						$('#resultCheck').text('사용할 수 없는 아이디')
					} else {
						$('#resultCheck').text('사용할 수 있는 아이디')
					}

				},
				error : function() {
					alert("통신실패!")
				}
			})
		}
		function test() {
			var p1 = document.getElementById('password1').value;
			var p2 = document.getElementById('password2').value;
			if (p1 != p2) {
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			} else {
				alert("비밀번호가 일치합니다.");
				return true;
			}

		}
	</script>
	​