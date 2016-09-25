<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset='utf-8'>
<meta http-equiv="X-UA-Compatible" content="chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="../assets/stylesheets/main.css" rel="stylesheet" type="text/css" />
<script src="../assets/javascripts/jquery-3.0.0.min.js"></script>
<script src="../assets/javascripts/main.js"></script>
<!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<title>路知网|loozhi.cn</title>
</head>
<body>
	<div class="form-inline searchGroup">
		<select id="city" class="form-control">
			<option value="沈阳">沈阳</option>
		</select> <select id="line" class="form-control">
			<option value="152">152</option>
			<option value="180">180</option>
			<option value="272">272</option>
			<option value="286">286</option>
			<option value="333">333</option>
		</select>
		<button id="getBusline" class="btn btn-primary">获取线路</button>
	</div>
	
	<div id="buslineInfo" class="buslineInfo">
		<span id="name"></span>
		<span id="front"></span>
		<span id="terminal"></span>
		<span id="price"></span>
		<span id="stations"></span>
	</div>
</body>
</html>