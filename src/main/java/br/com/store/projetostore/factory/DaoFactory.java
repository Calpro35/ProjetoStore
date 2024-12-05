package br.com.store.projetostore.factory;

import br.com.store.projetostore.dao.CategoriaDao;
import br.com.store.projetostore.dao.ProdutoDao;
import br.com.store.projetostore.dao.impl.OracleCategoriaDao;
import br.com.store.projetostore.dao.impl.OracleProdutoDao;

public class DaoFactory {

    public static ProdutoDao getProdutoDAO() {
        return new OracleProdutoDao ();
    }

    public static CategoriaDao getCategoriaDAO() {
        return new OracleCategoriaDao ();
    }


}




