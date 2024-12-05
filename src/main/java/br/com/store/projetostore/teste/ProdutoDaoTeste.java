package br.com.store.projetostore.teste;

import br.com.store.projetostore.dao.ProdutoDao;
import br.com.store.projetostore.exception.DBException;
import br.com.store.projetostore.factory.DaoFactory;
import br.com.store.projetostore.model.Produto;

import java.time.LocalDate;
import java.util.List;

public class ProdutoDaoTeste {

    public static void main(String[] args) {

        //cadastrar um produto

        ProdutoDao dao = DaoFactory.getProdutoDAO ();

        Produto produto = new Produto (
                0 ,
                "Teclado JBL" ,
                28.99 ,
                100 ,
                LocalDate.of ( 2024 , 11 , 11 )
        );

//        try {
//            dao.cadastrar ( produto );
//        } catch (DBException e) {
//            throw new RuntimeException ( e );
//        }




////Buscar um produto pelo código e atualizar
//      produto = dao.buscar(21);
//        produto.setName("Mouse microsof");
//        produto.setValor(1.99);
//    try {
//        dao.atualizar ( produto );
//    } catch(
//    DBException e)
//
//    {
//        e.printStackTrace ();
//    }




//Listar os produtos
    List<Produto> lista = dao.listar ();
        for(
    Produto item :lista)

    {
        System.out.println (
                item.getName () + " " +
                        item.getQuantidade () + " " +
                        item.getValor () );
    }




////Remover um produto
//    try{
//        dao.remover ( 21 );
//
//    } catch(
//    DBException e)
//
//    {
//        e.printStackTrace ();
//    }


}


}



