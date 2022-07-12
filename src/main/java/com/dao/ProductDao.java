package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.ProductBean;

@Repository
public class ProductDao {

		@Autowired
		JdbcTemplate stmt;
		
		public void insertProduct(ProductBean product)
		{
			stmt.update("insert into product (productname,price,qty) values (?,?,?)",product.getProductName(),product.getPrice(),product.getQty());			
		}
		public List<ProductBean> getAllProduct()
		{
				List<ProductBean> product = stmt.query("select * from product",new BeanPropertyRowMapper<ProductBean>(ProductBean.class));
				return product;
		}
		
		public void deleteProduct(int productId)
		{
			
			stmt.update("delete from product where productid = ?",productId);
		}
		public ProductBean getProductById(int productId)
		{
				try {
					return stmt.queryForObject("select * from product where productid = ?", new BeanPropertyRowMapper<ProductBean>(ProductBean.class),new Object[] {productId});
					
				}catch(Exception e)
				{
					System.out.println("SWM in Dao --> ");
				}
			return null;
		}
		public void updateProduct(ProductBean product)
		{
			stmt.update("update product set productname = ? , price = ? , qty  = ? where productid = ?",product.getProductName(),product.getPrice(),product.getQty(),product.getProductId());			
		}
}

