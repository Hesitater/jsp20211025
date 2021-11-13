<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<title>10button.jsp</title>
</head>
<body>

<!-- button.btn.btn-info*10>lorem1 -->
<button type="button" class="btn">Basic</button>
<button type="button" class="btn btn-primary">Primary</button>
<button type="button" class="btn btn-secondary">Secondary</button>
<button type="button" class="btn btn-success">Success</button>
<button type="button" class="btn btn-info">Info</button>
<button type="button" class="btn btn-warning">Warning</button>
<button type="button" class="btn btn-danger">Danger</button>
<button type="button" class="btn btn-dark">Dark</button>
<button type="button" class="btn btn-light">Light</button>
<button type="button" class="btn btn-link">Link</button>

<hr>

<button type="button" class="btn">Basic</button>
<button type="button" class="btn btn-primary btn-lg">Primary</button>
<button type="button" class="btn btn-secondary btn-sm">Secondary</button>
<button type="button" class="btn btn-success btn-md">Success</button>
<button type="button" class="btn btn-info">Info</button>
<button type="button" class="btn btn-warning">Warning</button>
<button type="button" class="btn btn-danger">Danger</button>
<button type="button" class="btn btn-dark">Dark</button>
<button type="button" class="btn btn-light">Light</button>
<button type="button" class="btn btn-link">Link</button>

<hr>
<!--outline buttons  -->

<button type="button" class="btn">Basic</button>
<button type="button" class="btn btn-outline-primary">Primary</button>
<button type="button" class="btn btn-outline-secondary">Secondary</button>
<button type="button" class="btn btn-outline-success">Success</button>
<button type="button" class="btn btn-outline-info">Info</button>
<button type="button" class="btn btn-outline-warning">Warning</button>
<button type="button" class="btn btn-outline-danger">Danger</button>
<button type="button" class="btn btn-outline-dark">Dark</button>
<button type="button" class="btn btn-outline-light">Light</button>
<button type="button" class="btn btn-outline-link">Link</button>

<hr>
<button type="button" class="btn btn-primary btn-block">Full-Width Button</button>

<hr>
<!-- button.btn.btn-primary{Primary} -->
<button class="btn btn-primary">Primary</button>
<input type="button" value="input Primary" class="btn btn-primary">
<input type="sumbit" value="submit" class="btn btn-primary">

<a href="#"  class="btn btn-primary">a태그 primary</a>

<button class="btn btn-primary">
<span class="spinner-border spinner-border-sm"></span>
  Loading..
</button>

<hr>
<button type="button" class="btn btn-outline-primary"><span class="spinner-border spinner-border-sm"></span>Primary</button>
<button type="button" class="btn btn-outline-secondary"><span class="spinner-border spinner-border-sm"></span>Secondary</button>
<button type="button" class="btn btn-outline-success"><span class="spinner-border spinner-border-sm"></span>Success</button>
<button type="button" class="btn btn-outline-info"><span class="spinner-border spinner-border-sm"></span>Info</button>
<button type="button" class="btn btn-outline-warning"><span class="spinner-border spinner-border-sm"></span>Warning</button>
<button type="button" class="btn btn-outline-danger"><span class="spinner-border spinner-border-sm"></span>Danger</button>
<button type="button" class="btn btn-outline-dark"><span class="spinner-border spinner-border-sm"></span>Dark</button>
<button type="button" class="btn btn-outline-light text-dark"><span class="spinner-border spinner-border-sm"></span>Light</button>




<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>






















