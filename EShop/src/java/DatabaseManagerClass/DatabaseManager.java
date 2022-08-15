/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DatabaseManagerClass;

import BeanClasses.ProductCategoryBean;
import BeanClasses.ProductsBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;

/**
 *
 * @author Danish
 */
public class DatabaseManager {
	public static Connection con;
   // private static String fac_id;
	static{
		try{
			init();
		}catch(Exception e){
		}
	}
	public static void init()throws Exception{
//		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//		con=DriverManager.getConnection("jdbc:odbc:university");
//                System.out.println("Connection succesfull");
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
                String path="F:\\eShop\\eShop.accdb";
                String url = "jdbc:ucanaccess://"+path;      
                con=DriverManager.getConnection(url);
                System.out.println("Connection Successful");            
	}
     // usindh connection ends    
    
	public static ArrayList<ProductCategoryBean> getProductCategory()throws Exception{
            ArrayList<ProductCategoryBean> list = new ArrayList<ProductCategoryBean>();
		String query="select * from productCategories";
		System.out.println(query);
		Statement st=null;
		ResultSet result=null;
		try{
			st=con.createStatement();
			result=st.executeQuery(query);
			
			while(result.next()){
				ProductCategoryBean bean=new ProductCategoryBean();	
				bean.setProdCatId( result.getInt("prod_cat_id") );
				bean.setProdCat( result.getString("prod_cat") );
				bean.setRemarks( result.getString("remarks") );			
				list.add(bean);
			}
			return list;
		}finally{
			if(result!=null)result.close();
			if(st!=null)st.close();
		}
	}

	public static ArrayList<ProductsBean> getProducts(int prodCatId)throws Exception{
            ArrayList<ProductsBean> list =new ArrayList<ProductsBean>();
		String query="select * from products where prod_cat_id="+prodCatId;
		System.out.println(query);
		Statement st=null;
		ResultSet result=null;
		try{
			st=con.createStatement();
			result=st.executeQuery(query);
			
			while(result.next()){
				ProductsBean bean=new ProductsBean();	
				bean.setProdCatId( result.getInt("prod_cat_id") );
                                bean.setProdId( result.getInt("prod_id") );
				bean.setProdName( result.getString("prod_name") );
                                bean.setPrice( result.getInt("price") );
				bean.setProdDesc( result.getString("prod_desc") );			
				list.add(bean);
			}
			return list;
		}finally{
			if(result!=null)result.close();
			if(st!=null)st.close();
		}
	}        
        


}//end database class