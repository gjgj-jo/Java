package a20_9_3_JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class JDBCTest1 {

	public static void main(String[] args) throws Exception {
		String driver="oracle.jdbc.OracleDriver";
		String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String user="system";
		String password="123456";
		
		Class.forName(driver); //class ������ �޸𸮷� �������� ������ ��
								//1����)) DB����̹������� �ε�
		
		Connection con=DriverManager.getConnection(url,user,password);
		Statement stmt=con.createStatement(); //3)������
		System.out.println("OK");

	}

}
