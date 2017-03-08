/********************************/
/*	Autor: Ennio Gonzalez				*/
/*	Preparador de Bases de Datos*/
/********************************/


package Connected;
import java.sql.*;
import java.util.logging.*;

public class conexion {

	String user;
	String url;
	char[] password;
	Connection connection = null;

	public Connection Conectar()
	{
			try{
				System.out.println(url);
				Class.forName("org.postgresql.Driver");
				this.connection = DriverManager.getConnection(url,this.user,new String(this.password));
			}catch(Exception e){

			}
			return this.connection;
	}
	public conexion(String usr, char[] password){
		this.url ="jdbc:postgresql://localhost:5432/choco_systems";
		this.password =password;
		this.user = usr;
	}
}

//java -classpath ./lib/postgresql-9.2-1004.jdbc4.jar:. Connected.Principal
