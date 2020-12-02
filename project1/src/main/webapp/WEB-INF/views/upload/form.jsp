<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>

<!-- 
<form method="post" enctype="multipart/form-data">

	<label for="file">업로드할 파일 선택</label>
	<input type="file" id="file" accept="image/*" multiple><br>
	<button>Submit</button>
</form>
 -->
 
    <h1>파일 업로드 예제</h1>


<form method="post" action="upload" enctype="multipart/form-data">

         <label>email:</label>
         <input type="text" name="email">
         <br><br>
         <label>파일:</label>
         <input type="file" name="file1">
         <br><br>
         <input type="submit" value="upload">
</form>

    

</div>
</body>
</html>