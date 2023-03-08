<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<article>
    <header>
        <h1>[회원 찾기]deptJsonDemo</h1>
    </header>
    <ul class="list-unstyled">
        <li class="border-top my-3"></li>
    </ul>
    <div class="container">
        <div class="row">

            <button id="listBtn">Click</button>
            <div class="row justify-content-center">
                <table class="table">
                    <thead>
                        <tr>
                            <td>Num</td>
                            <td>ID</td>
                            <td>Name</td>
                            <td>Age</td>
                            <td>Gender</td>
                        </tr>
                    </thead>

                    <tbody id="target">
                    </tbody>
                </table>

            </div>

        </div>
    </div>

</article>


<script>

 /*
 $(function() {
    $('#listBtn').click(function() {

        $.ajaxSetup({
            cache:false
        });

        $.ajax({
            url:"../listJsonDemo",
            success:function(jsonData){
                console.log(jsonData);
                $('#target').html("");
                $.each(jsonData, function(i, v) {

                    let tags = "<tr>";

                    $.each(v, function(key, val) {
                        console.log(key+":"+val);
                        if(val !== null)
                        tags +="<td>"+val+ "</td>";
                    });
                    tags += "</tr>";
                    $('#target').append(tags);
                });
            }
        });
    });
});
*/
</script>




<script>
$(function(){
	$('#listbtn').click(function() {
		
		$.ajaxSetup({
			cache:false
		});
		
		$.ajax({
			url:"../listJsonDemo",
			success:function(jsonData){
				console.log(jsonData);
				$('#target').html("");	
				$.each(jsonData, function(k, v) {
					
					let tags = "<tr>";
					
					$.each(v, function(key, val) {
						console.log(key+":"+val);
						tags += "<td>"+val+"</td>";
					});
					tags+= "</tr>";
					$('#target').append(tags);
				});
			}
		});
		
	});
});
</script>