<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- 2023. 1. 17. / Kosmo -->
<article>

	<!-- Load c3.css -->
	<link href="../resources/css/c3.css" rel="stylesheet">
	

	<!-- Load d3.js and c3.js -->
	<script src="../resources/js/d3-5.8.2.min.js" charset="utf-8"></script>
	<script src="../resources/js/c3.min.js"></script>


	<div id="chart"></div>

<script>
$.ajax({
	url : "../surveyJsonObj?num=22",
	success : function(jsondata) {
		console.log(jsondata[0].sub);
		console.log("---------------------");
		console.log(jsondata[1]);
		console.log("---------------------");
		var chart = c3.generate({
			bindto : '#chart',
			data : {
				json : [jsondata[1]],
				keys : {
					value : Object.keys(jsondata[1]),
				},
				type : 'donut'
			},
			donut : {
				title : jsondata[0].sub,
			},
		});
		//----------------------
	},
	error : function(e) {
		console.log("error:" + e);
	}
});
</script>
</article>
