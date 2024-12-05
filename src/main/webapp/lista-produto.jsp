<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>

<head>
    <title>StoreProdutos</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./resources/css/bootstrap.css">
</head>

<body>
<%@include file="header.jsp"%>
<div class="container w-75">
    <div class="mt-5 ms-5 me-5">

        <div class="card mb-3">
            <div class="card-header p-3 ">
                LISTA DE PRODUTOS
            </div>
            <div class="card-body">
                <h5 class="card-title">Gestão de produdos eficiente</h5>
                <p class="card-text">Mantenha os dados dos seus produtos sempre atualizados e acessíveis.</p>
                <table class="table table-striped table-bordered">
                    <thead>
                    <tr>
                        <th>Nome</th>
                        <th class="text-center ">Quantidade</th>
                        <th class="text-center">Valor</th>
                        <th class="text-center">Data de fabricação</th>
                        <th class="text-center">Categoria</th>
                        <th class="text-center"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach  var="produto" items="${produtos}">
                          <tr class="">
                              <td class="align-content-center">${produto.name}</td>
                              <td class="text-center align-content-center">${produto.quantidade}</td>
                              <td class="text-center align-content-center ">R$ ${produto.valor}</td>
                              <td class="text-center align-content-center">
                                      <fmt:parseDate
                                              value=" ${produto.dataFabricacao}"
                                      pattern="yyyy-mm-dd"
                                      var="datafmt"/>
                                <fmt:formatDate value="${datafmt}"
                                  pattern="dd/mm/yyyy"/>
                             </td>

                              <td class="text-center align-content-center ">${produto.categoria.nome}</td>

                              <td class="text-center">
                                  <c:url value="produtos" var="link">
                                      <c:param name="acao" value="abrir-form-edicao"/>
                                      <c:param name="codigo" value="${produto.codigo}"/>
                                  </c:url>
                                  <a href="${link}" class="btn btn-primary">Editar</a>

                                               <%--modal button excluir--%>
                                  <button type="button"
                                          class="btn btn-danger"
                                          data-bs-toggle="modal"
                                          data-bs-target="#excluirModal"
                                          onclick="codigoExcluir.value = ${produto.codigo}">
                                      Excluir
                                  </button>

                              </td>

                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
                <a href="produtos?acao=abrir-form-cadastro" class="btn btn-primary mt-3">Adicionar produto</a>
            </div>
        </div>
    </div>
</div>

<%-- modal--%>

<div class="modal" tabindex="-1" id="excluirModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title">Confirmar Exclusão</h6>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close">

                </button>
            </div>
            <div class="modal-body">
                <h5>Você confirma a exclusão deste Produto?</h5>
                <p><strong>Atencao!</strong> Esta ação é irreversível.</p>
            </div>

            <div class="modal-footer">
                <form action="produtos" method="post">

                    <input
                            type="hidden"
                            name="acao"
                            value="excluir">

                    <input
                            type="hidden"
                            name="codigoExcluir"
                            id="codigoExcluir">

                    <button
                            type="submit"
                            class="btn btn-danger">
                        sim
                    </button>
                    <button
                            type="button"
                            class="btn btn-secondary"
                            data-bs-dismiss="modal" >
                        Não
                    </button>



                </form>
            </div>
        </div>
    </div>
</div>










<%@include file="footer2.jsp"%>
<script src="resources/js/bootstrap.bundle.js"></script>
</body>
</html>