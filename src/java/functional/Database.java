
package functional;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

class Database {
    private static Connection conn;
    private static InitialContext ic;
    private static DataSource ds;
    
    public static Connection getConnection(){
        try{
            ic = new InitialContext();
            ds = (DataSource) ic.lookup("jdbc/Library");
            if(conn == null){
                conn = ds.getConnection();
            }
        }
        catch(SQLException ex) {
                    Logger.getLogger(AuthorList.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch(NamingException ex) {
                    Logger.getLogger(AuthorList.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
}


