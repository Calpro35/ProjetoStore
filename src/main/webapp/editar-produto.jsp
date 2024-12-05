<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Edição de Produtos</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./resources/css/bootstrap.css">
</head>
<body>
<%@include file="header.jsp" %>

<div class="container w-50 mt-5 ">

  <div class="mt-5 ms-5 me-5">
    <div class="card mb-3">
      <div class="card-header p-3">
       ATUALIZAR PRODUTO
      </div>

      <c:if test="${not empty mensagem}">
        <div class="alert alert-success ms-1 me-1 mt-3">
            ${mensagem}
        </div>
      </c:if>


      <c:if test="${not empty erro}">
        <div class="alert alert-danger ms-1 me-1 mt-3">
            ${erro}
        </div>
      </c:if>


      <div class="card-body">

        <form action="produtos?acao=listar" method="post">

          <input type="hidden" value="${produto.codigo}" name="codigo"/>

          <div class="form-group">
            <label for="id-nome" class="mb-1">Nome</label>
            <input type="text" name="nome" id="id-nome" class="form-control" value="${produto.name}">
          </div>

          <div class="form-group mt-2">
            <label for="id-valor" class="mb-1">Valor</label>
            <input type="text" name="valor" id="id-valor" class="form-control" value="${produto.valor}">
          </div>

          <div class="form-group mt-2 ">
            <label for="id-quantidade" class="mb-1">Quantidade</label>
            <input type="text" name="quantidade" id="id-quantidade" class="form-control" value="${produto.quantidade}">
          </div>

          <div class="form-group w-50 mt-2">
            <label for="id-fabricacao" class="mb-1">Data de Fabricação</label>
            <input type="date" name="fabricacao" id="id-fabricacao" class="form-control w-50" value="${produto.dataFabricacao}">
          </div>

          <div class="form-group w-50 mt-3 d-flex " >

            <label class="align-content-center me-2 " for="id-categoria" >Categoria
            </label>

            <select
                    name="categoria"
                    id="id-categoria"
                    class="form-control w-50"
            >
              <option   value="0">Selecione</option>

              <c:forEach var="c" items="${categorias}">
               <c:if test="${c.codigo == produto.categoria.codigo}">
                <option value="${c.codigo}" selected>${c.nome}</option>
               </c:if>

              <c:if test="${c.codigo != produto.categoria.codigo}">
                <option value="${c.codigo}">${c.nome}</option>
              </c:if>

              </c:forEach>
            </select>
          </div>

          <input type="submit" value="Salvar" class="btn btn-primary mt-3">
        </form>
      </div>
    </div>
  </div>
</div>
<%@include file="footer.jsp" %>
<script src="resources/js/bootstrap.bundle.js"></script>
</body>
</html>