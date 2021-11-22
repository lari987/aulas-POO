/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.util.ArrayList;
import java.sql.*;
import web.LarissaDbListener;
/**
 *
 * @author Cristiano
 */
public class Tasks {
    
    String id;
    String title;
    String username;
    
    public static ArrayList<String> getTasks() throws Exception{
        ArrayList<String> list = new ArrayList<>();
        Connection con = LarissaDbListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from larissa_tasks");
        while(rs.next()){
            list.add(rs.getString("title"));
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
    }
    public static void addTask(String taskName) throws Exception{
        Connection con = LarissaDbListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("insert into larissa_tasks values('"+taskName+"')");
        stmt.close();
        con.close();
    }
    public static void removeTask(String taskName) throws Exception{
        Connection con = LarissaDbListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("delete from larissa_tasks where title = '"+taskName+"'");
        stmt.close();
        con.close();
    }
}