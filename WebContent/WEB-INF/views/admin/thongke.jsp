<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

</head>
<body>
	
	<jsp:include page="bt-libra.jsp"></jsp:include>
	<div class="wrapper">
		<jsp:include page="side-bar.jsp"></jsp:include>
		<div class="main-panel">
			<jsp:include page="header.jsp"></jsp:include>
			
						<div class="example">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1>Thống kê lượt ghé thăm</h1>
							<div style="width:1000px;height:400px">
								<canvas id="myChart" width="1000px" height="400px"></canvas>
							</div>
							
							
						</div>
					</div>
				</div>
			</div>
 </div>
 </div>
 <script src='<c:url value="/resources/layout/dist/Chart.min.js"/>'></script>
 <script>
var ctx = document.getElementById('myChart');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10' , 'Tháng 11',],
        datasets: [{
            label: 'lượt xem',
            data: [19, 58, 131, 89, 69, 0],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});
</script>
 </body>
</html>