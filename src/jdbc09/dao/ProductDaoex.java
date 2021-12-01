package jdbc09.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc09.bean.ProductDtoex;

public class ProductDaoex {

	public List<ProductDtoex> getList(Connection con) {
		List<ProductDtoex> list = new ArrayList<>();
		String sql = "SELECT " + 
				"    c.CategoryName, p.ProductName, p.Unit, p.Price " + 
				"FROM " + 
				"    Products p " + 
				"        JOIN " + 
				"    Categories c ON p.CategoryID = c.CategoryID " + 
				"ORDER BY 1 , 2";
		
		
		try (Statement stmt = con.createStatement(); 
				ResultSet rs = stmt.executeQuery(sql);) {
				while (rs.next()) {
					ProductDtoex dto = new ProductDtoex();
					dto.setCategoryName(rs.getString(1));
					dto.setProductName(rs.getString(2));
					dto.setUnit(rs.getString(3));
					dto.setPrice(rs.getDouble(4));
					
					list.add(dto);
				}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		
		
		return list;
	}

}
