package com.test.util;

import org.jasypt.util.password.StrongPasswordEncryptor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DAO {
    public static ArrayList<items> getItemsList() {

        // Calling the database address
        // protocol
        // name of database
        // port number
        // database name
        //String dbAddress = "jdbc:mysql://localhost:3306/coffeeshopdb";


        try {
            //Load driver
            // below is more dynamic
            Class.forName("com.mysql.jdbc.Driver");

            // below is static
            //DriverManager.registerDriver(new com.mysql.jdbc.Driver());

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);

            // Next step is to create db statement
            // the select statement can be changed to insert into, update, delete
            String readCustomersCommand = "select name, description, quantity, price from items";

            // creates a statement
            Statement readCustomers = mysqlConnection.createStatement();

            //executes the statement
            ResultSet results = readCustomers.executeQuery(readCustomersCommand);

            //Array list of customers
            ArrayList<items> itemsList = new ArrayList<items>();

            //map from result set to ArrayList
            //ORM Object Relational Mapping

            // if you have more rows to read it continues
            while (results.next()) {
                // gets data from column 1 and column 2
                items temp = new items(results.getString(1), results.getString(2),
                        results.getInt(3), results.getDouble(4));

                // added the temp customer to the arrayList
                itemsList.add(temp);
            }

            return itemsList;

        } catch (Exception ex) {
            ex.printStackTrace();
            return null; //null result indicates an issue
        }
        // doing return null for now, but this can be an error for the user on a new view/page
        // create an error page with custom error message
        }

    public static boolean addCustomer(
            String FirstName,
            String LastName,
            String email,
            int phoneNumber,
            String cellProvider,
            String Company,
            String gender,
            String password,
            Integer vehicleMPG


    ) {

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);
            //Instantiate Password Encryptor

            StrongPasswordEncryptor enc = new StrongPasswordEncryptor();

            String passEncrypted = enc.encryptPassword(password);

            String addCustomerCommand = "INSERT INTO userinfo " +
                    "(FirstName, LastName, email, phoneNumber, cellProvider, Company, " +
                    "gender, password, vehicleMPG) " +
                    "VALUES ('" +
                    FirstName + "', '" +
                    LastName + "', '" +
                    email + "', '" +
                    phoneNumber + "', '" +
                    cellProvider + "', '" +
                    Company + "', '" +
                    gender + "', '" +
                    passEncrypted + "', '" +
                    vehicleMPG + "')";

            boolean match = enc.checkPassword(password,passEncrypted);

            System.out.println("SQL Query " + addCustomerCommand);

            Statement st = mysqlConnection.createStatement();// creates the statement

            int result = st.executeUpdate(addCustomerCommand);// executes the statement
            // array list of customers

            //if (result == 1)
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false; //null result indicates an issue
        }
    }




    public static boolean deleteCustomer(String userID) {

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);

            String deleteCustomerCommand = "DELETE FROM customers " +
                    "WHERE userID = '" +
                    userID + "'";
            System.out.println("SQL Deletion Query " + deleteCustomerCommand);

            Statement st = mysqlConnection.createStatement();// creates the statement

            int result = st.executeUpdate(deleteCustomerCommand);// executes the statement
            // array list of customers

            //if (result == 1)
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false; //null result indicates an issue
        }
    }

    public static ArrayList<customers> getCustomersList() {
        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);

            String readCustomersCommand = "select userID, fname, lname, username from customers";
            Statement readCustomers = mysqlConnection.createStatement();
            ResultSet results = readCustomers.executeQuery(readCustomersCommand);

            ArrayList<customers> customersList = new ArrayList<customers>();

            //map from result set to ArrayList
            //ORM Object Relational Mapping

            // if you have more rows to read it continues
            while (results.next()) {
                // gets data from column 1 and column 2
                customers temp = new customers(results.getString(1), results.getString(2),
                        results.getString(3), results.getString(4));

                // added the temp customer to the arrayList
                customersList.add(temp);
            }

                return customersList;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null; //null result indicates an issue
        }
    }
    public static boolean addrequest(
            String UserId,
            String departure,
            String arrival,
            String time,
            String date,
            String frequency,
            String message

    ) {

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);

            String addRequestCommand = "INSERT INTO request " +
                    "(UserId, departure, arrival, time, date, frequency, message)" +
                    "VALUES ('" +
                    UserId + "', '" +
                    departure + "', '" +
                    arrival + "', '" +
                    time + "', '" +
                    date + "', '" +
                    frequency + "', '" +
                    message + "')";

            System.out.println("SQL Query " + addRequestCommand);

            Statement st = mysqlConnection.createStatement();// creates the statement

            int result = st.executeUpdate(addRequestCommand);// executes the statement
            // array list of customers

            //if (result == 1)
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false; //null result indicates an issue
        }
    }
}
