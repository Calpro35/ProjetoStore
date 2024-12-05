package br.com.store.projetostore.teste;

import br.com.store.projetostore.dao.CategoriaDao;
import br.com.store.projetostore.factory.DaoFactory;
import br.com.store.projetostore.model.Categoria;

import java.util.List;

public class CategoriaDaoTeste {

    public static void main(String[] args) {

        CategoriaDao dao = DaoFactory.getCategoriaDAO ();

        List<Categoria> lista  = dao.listar();
        for (Categoria categoria : lista) {
            System.out.println(categoria.getNome() + " " + categoria.getCodigo ());
        }
    }
}
