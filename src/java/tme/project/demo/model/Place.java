/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tme.project.demo.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import tme.project.demo.datasource.ConnectionBuilder;

/**
 *
 * @author Antonymz
 */
public class Place {
    private int place_id;
    private String place_name;

    public Place() {
    }

    public Place(String place_name) {
        this.place_name = place_name;
    }

    public Place(int place_id, String place_name) {
        this.place_id = place_id;
        this.place_name = place_name;
    }

    public int getPlace_id() {
        return place_id;
    }

    public void setPlace_id(int place_id) {
        this.place_id = place_id;
    }

    public String getPlace_name() {
        return place_name;
    }

    public void setPlace_name(String place_name) {
        this.place_name = place_name;
    }
    
    private static void ORM(Place p, ResultSet rs) {
        try {
            p.setPlace_id(rs.getInt("place_id"));
            p.setPlace_name(rs.getString("place_name"));
            
        } catch (SQLException ex) {
            Logger.getLogger(Ticket.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static ArrayList<Place> getAllPlaces() {
        Place p = null;
        ArrayList<Place> places = null;
        try {
            Connection conn = ConnectionBuilder.getConnection();
            Statement stmt = conn.createStatement();
            String sqlCmd = "SELECT * FROM `Place`";
            ResultSet rs = stmt.executeQuery(sqlCmd);
            while (rs.next()) {
                p = new Place();
                ORM(p, rs);
                if (places == null) {
                    places = new ArrayList<Place>();
                }
                places.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Ticket.class.getName()).log(Level.SEVERE, null, ex);
        }
        return places;
    }
    
    public static String getNameById(int id) throws SQLException , NumberFormatException{
        String sqlCmd = "SELECT `place_name` FROM `Place` WHERE place_id = '" + id + "'";
        Connection conn = ConnectionBuilder.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sqlCmd);
        String name = "";
        if(rs.next()){
            name = rs.getString("place_name");
        }
        return name;
    }
    
    public static Place getPlaceById(int place_id) {
        Place p = null;
        try {
            Connection conn = ConnectionBuilder.getConnection();
            Statement stmt = conn.createStatement();
            String sqlCmd = "SELECT * FROM `Place` WHERE place_id = " + place_id;
            ResultSet rs = stmt.executeQuery(sqlCmd);
            while (rs.next()) {
                p = new Place();
                ORM(p, rs);

            }
        } catch (SQLException ex) {
            Logger.getLogger(Ticket.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }
}
