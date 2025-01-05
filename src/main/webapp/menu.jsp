<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>FiapStore</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/CSS/bootstrap.css">
</head>
<body>
<%@include file="header.jsp"%>
<div class="container">
    <div class="mt-5 ms-5 me-5">

        <div class="card mb-3">
            <div class="card-header">
                LISTA DE GAMES
            </div>
            <div class="card-body">
                <h5 class="card-title">Catálogo de games</h5>
                <p class="card-text">Mantenha a lista de games atualizados e acessíveis.</p>

                <!-- Exibe a mensagem de feedback, caso exista -->
                <c:if test="${not empty mensagem}">
                    <div class="alert alert-success" role="alert">
                            ${mensagem}
                    </div>
                </c:if>

                <table class="table table-striped table-bordered">
                    <thead>
                    <tr>
                        <th>Título</th>
                        <th class="text-start">Estúdio</th>
                        <th class="text-center">Ano lançamento</th>
                        <th class="text-center">Finalizado</th>
                        <th class="text-center">Ações</th>
                    </tr>
                    </thead>
                    <tbody>

                    <!-- Loop para exibir a lista de games -->
                    <c:forEach items="${games}" var="game">
                        <c:if test="${empty game}">
                            <tr>
                                <td><strong>Não há games cadastrados</strong></td>
                            </tr>
                        </c:if>
                        <tr>
                            <td>${game.titulo}</td>
                            <td class="text-start">${game.estudio}</td>
                            <td class="text-center">${game.anoLancamento}</td>
                            <td class="text-center">
                                <c:choose>
                                    <c:when test="${game.finalizado}">
                                        <input type="checkbox" checked="checked" disabled="disabled"/>
                                    </c:when>
                                    <c:otherwise>
                                        <input type="checkbox" disabled="disabled"/>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td class="text-center">
                                <!-- Formulário para deletar o game -->
                                <form method="POST" action="deleteGame">

                                    <input type="hidden" name="gameId" value="${game.gameId}">
                                    <button type="submit" class="btn btn-danger btn-sm"
                                            onclick="return confirm('Tem certeza que deseja excluir este jogo?');">
                                        Excluir
                                    </button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>

                <a href="cadastrar-game.jsp" class="btn btn-primary">Cadastrar novo game</a>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp"%>
<script src="resources/JS/bootstrap.bundle.js"></script>
</body>
</html>