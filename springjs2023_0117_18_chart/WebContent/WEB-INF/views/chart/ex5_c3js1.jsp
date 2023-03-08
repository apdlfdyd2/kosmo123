<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="resources/css/c3.css" rel="stylesheet">

<style></style>
<script src="resources/js/d3-5.8.2.min.js" charset="utf-8"></script>
<script src="resources/js/c3.min.js"></script>
</head>
<body>
<div id="chart"></div>

<script>
/*var chart = c3.generate({
    bindto: '#chart',
    data: {
      columns: [
        ['data1', 30, 200, 100, 400, 150, 250],
        ['data2', 50, 20, 10, 40, 15, 25]
      ]
    }
});*/
/*var chart = c3.generate({
    data: {
        x: 'x', //step1 ) x축을 추가 이름은x
//        xFormat: '%Y%m%d', // 'xFormat' can be used as custom format of 'x'
        columns: [
        	//step2)x축에 들어갈 데이터를 배열로 작성
            ['x','2013-01-01','2013-01-02','2013-01-03','2013-01-04','2013-01-05','2013-01-06'],
//            ['x', '20130101', '20130102', '20130103', '20130104', '20130105', '20130106'],
            ['data1', 30, 200, 100, 400, 150, 250],
            ['data2', 130, 340, 200, 500, 250, 350]
        ]
    },
    axis: {
    	//step3) axis.type으로 x축의 날짜관련 format을 작성해야함
        x: {
            type: 'timeseries',
            tick: {
                format: '%Y-%m-%d'
            }
        },y: {
            label: {
                text: 'Y Label',
                position: 'outer-middle'
                // inner-top : default
                // inner-middle
                // inner-bottom
                // outer-top
                // outer-middle
                // outer-bottom
            }
        },
        y2: {
            show: true,
            label: {
                text: 'Y2 Label',
                position: 'outer-middle'
                // inner-top : default
                // inner-middle
                // inner-bottom
                // outer-top
                // outer-middle
                // outer-bottom
            }
        }
    },
    bar: {
        width: {
            ratio: 0.5 // this makes bar width 50% of length between ticks
        }
        // or
        //width: 100 // this makes bar width 100px
    }

});*/
var chart = c3.generate({
	bindto: '#chart',
    data: {
    		  x: 'x', //x축을 추가한다 이름은 x
    		
        columns: [
        	['x','2013-01-01','2013-01-02','2013-01-03','2013-01-04','2013-01-05','2013-01-06'],
            ['data1', 30, 200, 100, 400, 150, 250],
            ['data2', 130, 100, 140, 200, 150, 50]
        ],
        //bar그래프를 axes로 지정한다.
        axes:{
        	data2:'y2'
        },
        types: {
        	data2:'bar'
        }
        //type: 'bar'
    },
   
    axis: {
    	//step3) axis.type으로 x축의 날짜관련 format을 작성해야함
        x: {
            type: 'timeseries',
            tick: {
                format: '%Y-%m-%d'
            }
        },y: {
            label: {
                text: 'Y Label',
                position: 'outer-middle'
                // inner-top : default
                // inner-middle
                // inner-bottom
                // outer-top
                // outer-middle
                // outer-bottom
            }
        },
        y2: {
            show: true,
            label: {
                text: 'Y2 Label',
                position: 'outer-middle'
                // inner-top : default
                // inner-middle
                // inner-bottom
                // outer-top
                // outer-middle
                // outer-bottom
            }
        }
    },
    bar: {
        width: {
            ratio: 0.5 // this makes bar width 50% of length between ticks
        }
        // or
        //width: 100 // this makes bar width 100px
    }
});
</script>
</body>
</html>



