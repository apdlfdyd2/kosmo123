<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<article>
<header>
            <h1>deptJsonDemo.jsp</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div class="container">
		<div id="row">
		<input type="text" id="id" name="id" placeholder="���̵� �Է��ϼ���">
		<hr>
		<button id="jsonAjaxTest">Click</button>
		<div id="target" class="row justify-content-center">���Ⱑ Ÿ���̿�</div>
	</div>
</div>
</article>
<script>
    //JQuery ����
    $(function() {
        //alert("Test");
        $('#jsonAjaxTest').click(
                function() {
                    //alert("Test");
                    alert("Test" + $('#id').val());

                    $.ajaxSetup({ //ajax ĳ�� ����
                        cache : false
                    });
                    $.ajax({
                        //url : "../deptJsonView1",
                        url : "../deptJsonView1?id="+$('#id').val(),
                        success : function(jsonData) {
                            $('#target').html(""); //����
                            console.log(jsonData);
                            console.log(Object.keys(jsonData));
                            console.log(typeof (jsonData));
                            //json�����͸� JQuery�ݺ��ڸ� ����ؼ� ����ϱ�
                            //JQuery.each(collection,callback)
                            $.each(jsonData, function(k, v) {
                                console.log(k + " : " + v);
                                //append : +=�� ����
                                $('#target').append(
                                        "<p>" + k + " : " + v + "</p>");
                            });
                            //target>p : target�� �ڽ��� p�±� ����
                            //.css(name, value) : css�� �������� ����
                            $('#target>p').css("background", "orange").css(
                                    "text-align", "center").css("color",
                                    "#ffffff")
                        }
                    });
                });
    });
</script>