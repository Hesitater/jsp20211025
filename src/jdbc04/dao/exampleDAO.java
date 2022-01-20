package jdbc04.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc02.bean.Supplier;

public class exampleDAO {

	public List<String> getCountryList(Connection con) {
		List<String> list = new ArrayList<>();
		String sql = "SELECT DISTINCT Country FROM Suppliers ORDER BY Country";
		
		try (Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				) {
				while (rs.next()) {
					list.add(rs.getString(1));
				}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return list;
	}

	public List<Supplier> getSupplierList(Connection con, String country) {
		// TODO Auto-generated method stub
		return null;
	}


}




