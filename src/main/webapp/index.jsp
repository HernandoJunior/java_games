<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--TAG PARA USAR --%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>JavaGame</title>
    <link rel="stylesheet" href="resources/CSS/bootstrap.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div style="width: 100%; height: 100vh; background-image: url('resources/imgs/imagem1carousel.jpg'); background-size: cover;">
        <%--Inclusão do header da pagina--%>
        <%@include file="header.jsp"%>
            <br/>
<%--        <a href="hello-servlet">Hello Servlet</a>--%>
            <div style="width: 100%; height: 70vh; display: flex; align-items: center; justify-content: center; overflow: hidden;">
                <%@include file="textIndex.jsp"%>
            </div>
    </div>
    <%@include file="footer.jsp"%>
</body>
</html>