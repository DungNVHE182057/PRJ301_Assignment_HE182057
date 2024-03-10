/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import static dal.DBContext.connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import model.Product;
import model.User;
import model.UserDTO;

/**
 *
 * @author admin
 */
public class DAO extends DBContext {
    
    
    
    ////////////////////////////////////////////////////////Product Services/////////////////////////////////////////////////////
    //get all product
    
    public List<Product> getAllProduct(){
        List<Product> list = new ArrayList<>();
        String stm = "select * from Product where inStock > 0";
        try{
            PreparedStatement pstm = connection.prepareStatement(stm);
            ResultSet rs = pstm.executeQuery();
            while(rs.next()){
                Product product = new Product(rs.getInt("id"),
                                                 rs.getString("pname"),
                                                 rs.getString("description"),
                                                 rs.getFloat("price"),
                                                 rs.getInt("discount"),
                                                 rs.getInt("inStock"),
                                                 rs.getInt("sold"),
                                                 rs.getString("imageLink"),
                                                 rs.getInt("category_id"),
                                                 rs.getInt("owner_id"));
                list.add(product);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    public List<Product> getTop5Product(){
        List<Product> list = new ArrayList<>();
        String stm = "select top 5 * from Product order by sold desc";
        try{
            PreparedStatement pstm = connection.prepareStatement(stm);
            ResultSet rs = pstm.executeQuery();
            while(rs.next()){
                Product product = new Product(rs.getInt("id"),
                                                 rs.getString("pname"),
                                                 rs.getString("description"),
                                                 rs.getFloat("price"),
                                                 rs.getInt("discount"),
                                                 rs.getInt("inStock"),
                                                 rs.getInt("sold"),
                                                 rs.getString("imageLink"),
                                                 rs.getInt("category_id"),
                                                 rs.getInt("owner_id"));
                list.add(product);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    //get products containing key
    
    public List<Product> getProductsContainKey(String key){
        List<Product> list = new ArrayList<>();
        String stm = "select * from Product where pname like ? and inStock>0";
        try{
            PreparedStatement pstm = connection.prepareStatement(stm);
            pstm.setString(1,"%"+key+"%");
            ResultSet rs = pstm.executeQuery();
            while(rs.next()){
                Product product = new Product(rs.getInt("id"),
                                                 rs.getString("pname"),
                                                 rs.getString("description"),
                                                 rs.getFloat("price"),
                                                 rs.getInt("discount"),
                                                 rs.getInt("inStock"),
                                                 rs.getInt("sold"),
                                                 rs.getString("imageLink"),
                                                 rs.getInt("category_id"),
                                                 rs.getInt("owner_id"));
                list.add(product);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    //get products by id
    public Product getProductById(int id){
        
        String stm = "select * from Product where id = ?";
        try{
            PreparedStatement pstm = connection.prepareStatement(stm);
            pstm.setInt(1,id);
            ResultSet rs = pstm.executeQuery();
            if(rs.next()){
                Product product = new Product(rs.getInt("id"),
                                                 rs.getString("pname"),
                                                 rs.getString("description"),
                                                 rs.getFloat("price"),
                                                 rs.getInt("discount"),
                                                 rs.getInt("inStock"),
                                                 rs.getInt("sold"),
                                                 rs.getString("imageLink"),
                                                 rs.getInt("category_id"),
                                                 rs.getInt("owner_id"));
                return product;
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return null;
    }
    
    
    
    //get products by category_id
    
    public List<Product> getProductByCid(int cid){
        List<Product> list = new ArrayList<>();
        String stm = "select * from Product where category_id = ?";
        try{
            PreparedStatement pstm = connection.prepareStatement(stm);
            pstm.setInt(1,cid);
            ResultSet rs = pstm.executeQuery();
            while(rs.next()){
                Product product = new Product(rs.getInt("id"),
                                                 rs.getString("pname"),
                                                 rs.getString("description"),
                                                 rs.getFloat("price"),
                                                 rs.getInt("discount"),
                                                 rs.getInt("inStock"),
                                                 rs.getInt("sold"),
                                                 rs.getString("imageLink"),
                                                 rs.getInt("category_id"),
                                                 rs.getInt("owner_id"));
                list.add(product);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    //get product of a seller
    public List<Product> getProductOfSeller(int sid){
        List<Product> list = new ArrayList<>();
        String stm = "select * from Product where owner_id = ?";
        try{
            PreparedStatement pstm = connection.prepareStatement(stm);
            pstm.setInt(1,sid);
            ResultSet rs = pstm.executeQuery();
            while(rs.next()){
                Product product = new Product(rs.getInt("id"),
                                                 rs.getString("pname"),
                                                 rs.getString("description"),
                                                 rs.getFloat("price"),
                                                 rs.getInt("discount"),
                                                 rs.getInt("inStock"),
                                                 rs.getInt("sold"),
                                                 rs.getString("imageLink"),
                                                 rs.getInt("category_id"),
                                                 rs.getInt("owner_id"));
                list.add(product);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    
    //get product by category name
    public List<Product> getProductByCategory(String cname){
        List<Product> list = new ArrayList<>();
        String stm = "select * from [Product] p join [Category] c on p.category_id = c.id where cname = ? and inStock>0";
        try{
            PreparedStatement pstm = connection.prepareStatement(stm);
            pstm.setString(1,cname);
            ResultSet rs = pstm.executeQuery();
            while(rs.next()){
                Product product = new Product(rs.getInt("id"),
                                                 rs.getString("pname"),
                                                 rs.getString("description"),
                                                 rs.getFloat("price"),
                                                 rs.getInt("discount"),
                                                 rs.getInt("inStock"),
                                                 rs.getInt("sold"),
                                                 rs.getString("imageLink"),
                                                 rs.getInt("category_id"),
                                                 rs.getInt("owner_id"));
                list.add(product);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    public List<Product> getCart(String txt){
        List<Product> list =  new ArrayList<>();
        if(txt != null && !txt.isBlank()){
            String[] s =txt.split("/");
            DAO dao = new DAO();
            for(String idraw: s){
                int id = Integer.parseInt(idraw);
                Product p = dao.getProductById(id);
                list.add(p);
            }
        }
        return list;
    }
    
    
    //delete a product
    public void delete(int id){
        String sql = "Delete from [Product] where id =?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
    
    //Update a product
    public void update(Product p){
        String sql = "UPDATE [dbo].[Product]\n" +
            "   SET [pname] = ? \n" +
            "      ,[description] = ? \n" +
            "      ,[price] = ? \n" +
            "      ,[discount] = ? \n" +
            "      ,[inStock] = ? \n" +
            "      ,[sold] = ? \n" +
            "      ,[imageLink] = ? \n" +
            "      ,[category_id] = ? \n" +
            "      ,[owner_id] = ? \n" +
            " WHERE id=?";
                
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, p.getPname());
            ps.setString(2, p.getDescription());
            ps.setFloat(3, p.getPrice());
            ps.setInt(4, p.getDiscount());
            ps.setInt(5, p.getInStock());
            ps.setInt(6, p.getSold());
            ps.setString(7,p.getImageLink());
            ps.setInt(8, p.getCategory_id());
            ps.setInt(9, p.getOwner_id());
            ps.setInt(10, p.getId());

            ps.executeUpdate();
        } catch (SQLException e) {
        }
    
    }
    //Add a product
    public void add(Product p){
        String sql="insert into [Product] ([pname]\n" +
                    "           ,[description]\n" +
                    "           ,[price]\n" +
                    "           ,[discount]\n" +
                    "           ,[inStock]\n" +
                    "           ,[sold]\n" +
                    "           ,[imageLink]\n" +
                    "           ,[category_id]\n" +
                    "           ,[owner_id])"
                + "values (?,?,?,?,?,?,?,?,?)";
        
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            
            ps.setString(1, p.getPname());
            ps.setString(2, p.getDescription());
            ps.setFloat(3, p.getPrice());
            ps.setInt(4, p.getDiscount());
            ps.setInt(5, p.getInStock());
            ps.setInt(6, p.getSold());
            ps.setString(7,p.getImageLink());
            ps.setInt(8, p.getCategory_id());
            ps.setInt(9, p.getOwner_id());

            
            

            ps.executeUpdate();
            
        }catch(SQLException e){
            System.out.println(e);
        }
    }
    
    
    
    ////////////////////////////////////////////////////////Account Services/////////////////////////////////////////////////////
    public void registerNewUser(String username, String password, int role_id){
        String stm = "INSERT INTO [dbo].[User]\n" +
                        "           ([username]\n" +
                        "           ,[password]\n" +
                        "           ,[role_id])\n" +
                        "     VALUES\n" +
                        "           (?,?,?)";

        
        try{
            PreparedStatement pstm = connection.prepareStatement(stm);
            
            pstm.setString(1,username);
            pstm.setString(2,password);
            pstm.setInt(3,role_id);
            pstm.executeUpdate();
        }catch(SQLException e){
            
        }
        
    }
    public boolean checkExistedUser(String username){
        String stm = "select * from [User] where username = ?";
        try{
            PreparedStatement pstm = connection.prepareStatement(stm);
            
            pstm.setString(1,username);
            
            ResultSet rs = pstm.executeQuery();
            if(rs.next()){
                return true;
            }
            
        }catch(SQLException e){
            
        }
        return false;
    }
    
    public User login(String username, String password)
    {
        String stm = "Select * from [User] where username = ? and password = ?";
        try{
            PreparedStatement pstm = connection.prepareStatement(stm);
            
            pstm.setString(1,username);
            pstm.setString(2,password);

            
            ResultSet rs = pstm.executeQuery();
            if (rs.next()){
                User user = new User(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getInt("role_id"));
                
                
                return user;
            }
            
        }catch(SQLException e){
            
        }
        return null;
    }    
    
   
    //////////////////////////////////////////////////////Cart///////////////////////////////////////////////////
    
    
    public void updateBill(int id, float total){
        String stm = "INSERT INTO [Bill]\n" +
                        "           ([user_id]\n" +
                        "           ,[value])\n" +
                       
                        "     VALUES\n" +
                        "           (?,?)";

        
        try{
            PreparedStatement pstm = connection.prepareStatement(stm);
            
            pstm.setInt(1,id);
            pstm.setFloat(2,total);
            
            pstm.executeUpdate();
        }catch(SQLException e){
            
        }
    }
    
    
    /////////////////////////////////////////////////////Admin site////////////////////////////////////////////////
    public List<UserDTO> topXUser(){
        List<UserDTO> topUsers = new ArrayList<>();
        String stm ="with temp as (select u.id,u.username as Username, COUNT(*) as Orders, sum(b.value) as [Total Spend]\n" +
                    "from [User] u join Bill b on u.id = b.user_id\n" +
                    "group by u.id,u.username) \n" +
                    "select top 5 * from temp order by [Total Spend] desc";
        try{
            
            PreparedStatement pstm = connection.prepareStatement(stm);
            

            

            
            ResultSet rs = pstm.executeQuery();
            while (rs.next()){
               UserDTO user = new UserDTO(rs.getInt("id"), 
                                            rs.getString("Username"), 
                                            rs.getInt("Orders"), 
                                            rs.getFloat("Total Spend"));
               topUsers.add(user);
            }
        }catch(SQLException e){
            
        }
        return topUsers;
    }
    

    public int countUser(int role){
        int i = 0;
        
        String stm = "Select * from [User] where role_id=?";
        try{
            PreparedStatement pstm = connection.prepareStatement(stm);
            
            pstm.setInt(1,role);
            

            
            ResultSet rs = pstm.executeQuery();
            while (rs.next()){
                i++;
            }
            
        }catch(SQLException e){
            
        }
        
        
        return i;
    }
    public int countProduct(){
        int i = 0;
        
        String stm = "Select * from [Product] ";
        try{
            PreparedStatement pstm = connection.prepareStatement(stm);
            
            
            

            
            ResultSet rs = pstm.executeQuery();
            while (rs.next()){
                i++;
            }
            
        }catch(SQLException e){
            
        }
        
        
        return i;
    }
    public float calculateRevenue(){
        String stm = "select sum(value) AS total from [Bill]";
        float total = 0;
        try{
            PreparedStatement pstm = connection.prepareStatement(stm);
            
            
            

            
            ResultSet rs = pstm.executeQuery();
            if (rs.next()){
                total = rs.getFloat("total");
            }
            
        }catch(SQLException e){
            
        }
        return total;
    }
    public int countOrder(){
        String stm = "select Count(*) AS total from [Bill]";
        int total = 0;
        try{
            PreparedStatement pstm = connection.prepareStatement(stm);
            
            ResultSet rs = pstm.executeQuery();
            if (rs.next()){
                total = rs.getInt("total");
            }
            
        }catch(SQLException e){
            
        }
        return total;
    }
    public List<User> getUsers(int role){
        List<User> list = new ArrayList<>();
        String stm = "select * from [User] where role_id = ? or ?=4 and role_id <> 3";
        try{
            PreparedStatement pstm = connection.prepareStatement(stm);
            pstm.setInt(1, role);
            pstm.setInt(2, role);

            ResultSet rs = pstm.executeQuery();
            while(rs.next()){
                User user = new User(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getInt("role_id"));
                list.add(user);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    public void deleteUser(int id){
        String sql = "Delete from [User] where id =?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }
}


