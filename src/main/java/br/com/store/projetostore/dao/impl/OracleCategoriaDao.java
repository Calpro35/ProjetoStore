package br.com.store.projetostore.dao.impl;

import br.com.store.projetostore.dao.CategoriaDao;
import br.com.store.projetostore.dao.ConnectionManager;
import br.com.store.projetostore.model.Categoria;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OracleCategoriaDao implements CategoriaDao {

      private Connection conexao;

    @Override
    public List<Categoria> listar() {

       List<Categoria> lista = new ArrayList<> ();
       PreparedStatement stmt = null;
       ResultSet rs = null;
       try {
           conexao = ConnectionManager.getInstance ().getConnection ();
           stmt = conexao.prepareStatement ( "SELECT * FROM TB_CATEGORIA" );
           rs = stmt.executeQuery ();

           //PERCORRE TODOS OS REGISTROS ENCONTRADOS
           while (rs.next ()) {
               int codigo = rs.getInt ( "COD_CATEGORIA" );
               String nome = rs.getString ( "NOME_CATEGORIA" );
               Categoria categoria = new Categoria ( codigo , nome );
               lista.add ( categoria );

           }
       }catch (SQLException e) {
           e.printStackTrace ();
       }finally {
           try{
               stmt.close ();
               rs.close ();
               conexao.close ();
           }catch (SQLException e) {
               e.printStackTrace ();
           }
         return  lista;
       }
    }
}
