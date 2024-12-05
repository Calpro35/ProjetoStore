package br.com.store.projetostore.dao;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {

    private static ConnectionManager connectionManager;

    public static ConnectionManager getInstance() {
        if (connectionManager == null) {
            connectionManager = new ConnectionManager();

        }

        return connectionManager;
    }


    public Connection getConnection() {
        Connection connection = null;

        try {
            Class.forName( "oracle.jdbc.driver.OracleDriver");

          connection = DriverManager.getConnection(
                 "jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL",
                  "",
                  ""
          );

        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException ( e );
        }

         return connection;
    }


}