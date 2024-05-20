<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css">
<title>중고차량조회</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #f0f0f0;
}

.form_container {
	width: 600pX;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.yearStaFrom {
	width: 200px;
	height: 40pX;
}

.yearStaTo {
	width: 200px;
	height: 40pX;
}

#yearStaFrom {
	width: 200px;
	height: 40pX;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box; 
}

#yearStaTo {
	width: 200px;
	height: 40pX;
/*     padding: 8px; */
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box; 
}

table td, th {
	border: none; /* 테이블, th(테이블 헤더), td(테이블 셀)의 테두리를 없앱니다. */
	/* border: 1px solid #ddd; */
	padding: 10px;
	text-align: right;
}

tr{
	padding: 20px;
}

.fuel-options, .gear-options{
	text-align: center;
}

input:hover, #kiacar:hover, #manufacturer:hover,
#mileageFrom:hover, #mileageTo:hover, #carpriceForm:hover, #carpriceTo:hover,
#carcolor:hover {
	background: skyblue;
}
</style>
</head>
<body>
    <div class="form_container">
        <form action="app_old_car_data.jsp">
            <table style="">
                <tr>
                    <td colspan="4" style="padding: 0px; font-size: 20px; color:blue; text-align: center;">
                    <b>중고차량 선택조회</b>
                    <div style="padding:15px" >
                    </div>               
                    </td>
                </tr>
                <tr>
                    <td>제조사 :</td>
                    <td colspan="3">
                        <select name="manufacturer" id="manufacturer" size="1" onchange="updateModels()">
                            <option value="기아">기아</option>
                            <option value="현대">현대</option>
                            <option value="삼성">삼성</option>
                            <option value="쌍용">쌍용</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>차종 :</td>
                    <td colspan="3">
                        <select name="kiacar" id="kiacar" size="1">
                            <!-- This will be populated dynamically -->
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>연식 :</td>
                    <td><input type="number" class="yearStaFrom" name="yearStaFrom"
                         id="yearStaFrom" value="2000" min="2000" max="2024" placeholder="2000~2024"> 
                    </td>
                    <td>-</td>
                    <td><input type="number" class="yearStaTo" name="yearStaTo"
                        id="yearStaTo" value="2004" min="2000" max="2024" placeholder="2000~2024">
                    </td>
                </tr>
                <tr>
                    <td>가격 :</td>
                    <td><select name="carpriceForm" id="carpriceForm" size="1">
                            <option value="10">10만</option>
                            <option value="100">100만</option>
                            <option value="1000">1000만</option>
                            <option value="2000">2000만</option>
                            <option value="3000">3000만</option>
                            <option value="4000">4000만</option>
                            <option value="5000">5000만</option>
                            <option value="6000">6000만</option>
                            <option value="7000">7000만</option>
                            <option value="8000">70000만</option>
                            <option value="9000">80000만</option>
                            <option value="10000">1억</option>
                            <option value="20000">2억</option>
                            <option value="50000">5억</option>
                            <option value="100000">10억</option>
                    </select></td>
                    <td>-</td>
                    <td><select name="carpriceTo" id="carpriceTo" size="1">
                            <option value="100">100만</option>
                            <option value="1000">1000만</option>
                            <option value="2000">2000만</option>
                            <option value="3000">3000만</option>
                            <option value="4000">4000만</option>
                            <option value="5000">5000만</option>
                            <option value="6000">6000만</option>
                            <option value="7000">7000만</option>
                            <option value="8000">70000만</option>
                            <option value="9000">80000만</option>
                            <option value="10000">1억</option>
                            <option value="20000">2억</option>
                            <option value="50000">5억</option>
                            <option value="100000">10억</option>
                    </select></td>
                </tr>
                <tr>
                    <td>주행거리 :</td>
                    <td><select name="mileageFrom" id="mileageFrom" size="1">
                            <option value="1">1km</option>
                            <option value="1000">1000km</option>
                            <option value="5000">5000km</option>
                            <option value="10000">10000km</option>
                            <option value="20000">20000km</option>
                            <option value="30000">30000km</option>
                            <option value="40000">40000km</option>
                            <option value="50000">50000km</option>
                            <option value="70000">70000km</option>
                            <option value="80000">80000km</option>
                            <option value="100000">100000km</option>
                            <option value="150000">150000km</option>
                            <option value="200000">200000km</option>
                            <option value="300000">300000km</option>
                    </select></td>
                    <td>-</td>
                    <td><select name="mileageTo" id="mileageTo" size="1">
                            <option value="1000">1000km</option>
                            <option value="5000">5000km</option>
                            <option value="10000">10000km</option>
                            <option value="20000">20000km</option>
                            <option value="30000">30000km</option>
                            <option value="40000">40000km</option>
                            <option value="50000">50000km</option>
                            <option value="70000">70000km</option>
                            <option value="80000">80000km</option>
                            <option value="100000">100000km</option>
                            <option value="150000">150000km</option>
                            <option value="200000">200000km</option>
                            <option value="300000">300000km</option>
                    </select></td>
                </tr>
                <tr>
                    <td style="text-align: right;">
                    연료 :</td>
                    <td colspan="3" class="fuel-options id="fuel-options">
                        <input type="radio" name="fuel" value="휘발유">휘발유 
                        <input type="radio" name="fuel" value="경유">경유 
                        <input type="radio" name="fuel" value="가스">가스 
                        <input type="radio" name="fuel" value="전기">전기
                    </td>
                </tr>
                <tr>
                    <td>변속기 :</td>
                    <td colspan="3" class="gear-options" id="gear-options">
                    <input type="radio" name="gear" value="오토">오토 
                    <input type="radio" name="gear" value="수동">수동
                    </td>
                </tr>
                <tr>
                    <td>색상 :</td>
                    <td colspan="3"><select name="color" id="carcolor" size="1">
                            <option value="흰색">흰색</option>
                            <option value="검정색">검정색</option>
                            <option value="쥐색">쥐색</option>
                            <option value="은색">은색</option>
                            <option value="청색">청색</option>
                            <option value="빨간색">빨간색</option>
                            <option value="노란색">노란색</option>
                    </select></td>
                </tr>
                <tr>
                    <td colspan="4" class="kia_car_btn" style="text-align: center;">
                        <div style="display: inline-block; text-align: center;">
                            <input type="submit" value="확인" id="carcondition" style="width: 400px; background:#1862f5" />
                        </div>
                    </td>
                </tr>
            </table>
            <a href="app_old_car_recent_out.jsp" ><button type="button">이전입력조건결과보기</button> </a>
        </form>
    </div>
<div>
</div>
    <script>
        var carModels = {
            "기아": ["카니발", "K3", "K5", "K6", "K7", "K9", "모닝", "레이", "셀토스", "스포티지", "쏘렌토", "모하비"],
            "현대": ["아반떼", "그랜저", "투싼", "싼타페", "팰리세이드", "벨로스터", "아이오닉", "소나타"],
            "삼성": ["QM6", "QM3", "QM5", "SM6", "SM5", "SM3"],
            "쌍용": ["티볼리", "렉스턴", "코란도", "렉스턴스포츠"]
        };

        function updateModels() {
        	/* var manufacturerSelect = document.getElementById("manufacturer");
            var modelSelect = document.getElementById("kiacar"); */
            var manufacturerSelect = document.querySelector("#manufacturer");
            var modelSelect = document.querySelector("#kiacar");
            var manufacturer = manufacturerSelect.value;

            // Clear existing options
            modelSelect.innerHTML = "";

            // Populate options based on selected manufacturer
            carModels[manufacturer].forEach(function(model) {
                var option = document.createElement("option");
                option.text = model;
                option.value = model;
                modelSelect.add(option);
            });
        }

        // Initially populate options based on the default selected manufacturer
        updateModels();
    </script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var fromInput = document.querySelector("#yearStaFrom");
			var toInput = document.querySelector("#yearStaTo");

			fromInput.addEventListener("mouseover", function() {
				showRangeInfo("2000~2024", fromInput);
			});

			toInput.addEventListener("mouseover", function() {
				showRangeInfo("2000~2024", toInput);
			});

			function showRangeInfo(info, input) {
				var rangeInfo = input.nextElementSibling.nextElementSibling;
				rangeInfo.textContent = "2000~2024범위" + info; // 범위를 보여주는 텍스트 설정
				rangeInfo.style.display = "inline"; // 텍스트를 보여주도록 스타일 설정
			}
		});

 		const manufacturerSelect = document.querySelector('#manufacturer');
		const kiacarSelect = document.querySelector('#kiacar');
		const yearStaFromSelect = document.querySelector('#yearStaFrom');
		const yearStaToSelect = document.querySelector('#yearStaTo');
		const carpriceFormSelect = document.querySelector('#carpriceForm');
		const carpriceToSelect = document.querySelector('#carpriceTo');
		const mileageFromSelect = document.querySelector('#mileageFrom');
		const mileageToSelect = document.querySelector('#mileageTo');
		const fueloptionsSelect = document.querySelector('#fuel-options');
		const gearoptionsSelect = document.querySelector('#gear-options');
		const carcolorSelect = document.querySelector('#carcolor');
		const carconditionSelect = document.querySelector('#carcondition');
		
		// 제조사선택 -> 차종포커스
		manufacturerSelect.addEventListener('change', () => {
		    kiacarSelect.focus();
		});

		// 차종선택 -> 연식From 포커스 이동
		kiacarSelect.addEventListener('change', () => {
		    // 다음 input 상자로 포커스 이동
		    yearStaFromSelect.focus();
		});
		// 차량가격From -> 차량가격To 포커스 이동
		carpriceFormSelect.addEventListener('change', () => {
		    carpriceTo.focus();
		});
		// 차량가격To -> 주행거리From 포커스 이동
		carpriceTo.addEventListener('change', () => {
		    // 다음 input 상자로 포커스 이동
		    mileageFromSelect.focus();
		});
		// 주행거리From -> 주행거리To 포커스 이동
		mileageFromSelect.addEventListener('change', () => {
		    mileageToSelect.focus();
		});
		// 색상 -> 확인버튼 포커스 이동
		carcolorSelect.addEventListener('change', () => {
			carconditionSelect.focus();
		});
		
		// 차종(select) 요소의 모든 option을 숨김
/* 		    Array.from(kiacarSelect.options).forEach(option => {
		        option.style.display = 'none';
		    }); */
		    
		    // 선택된 제조사에 맞는 차종 option을 보이도록 함
/* 		    const manufacturerOptions = document.querySelectorAll(`#kiacar option[value^="${selectedManufacturer}"]`);
		    manufacturerOptions.forEach(option => {
		        option.style.display = 'block';
		    }); */
	        var carModels = {
 		            "기아": ["카니발", "K3", "K5", "K6", "K7", "K9", "모닝", "레이", "셀토스", "스포티지", "쏘렌토", "모하비"],
		            "현대": ["아반떼", "그랜저", "투싼", "싼타페", "팰리세이드", "벨로스터", "아이오닉", "소나타"],
		            "삼성": ["QM6", "QM3", "QM5", "SM6", "SM5", "SM3"],
		            "쌍용": ["티볼리", "렉스턴", "코란도", "렉스턴스포츠"]
		        };

		        function updateModels() {
		            var manufacturerSelect = document.getElementById("manufacturer");
		            var modelSelect = document.getElementById("kiacar");
		            var manufacturer = manufacturerSelect.value;

		            // Clear existing options
		            modelSelect.innerHTML = "";

		            // Populate options based on selected manufacturer
		            carModels[manufacturer].forEach(function(model) {
		                var option = document.createElement("option");
		                option.text = model;
		                option.value = model;
		                modelSelect.add(option);
		            });
		        }

		        updateModels();
	</script>
</body>

</html>