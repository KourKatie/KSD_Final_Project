package com.test.util;

import org.jasypt.util.password.StrongPasswordEncryptor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DAO {

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

            StrongPasswordEncryptor enc = new StrongPasswordEncryptor();

            String passEncrypted = enc.encryptPassword(password);

            String addCustomerCommand = "INSERT INTO userinfo " +
                    "(FirstName, LastName, email, phoneNumber, cellProvider, Company, " +
                    "gender, passEncrypted, vehicleMPG) " +
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

<<<<<<< HEAD
            boolean match = enc.checkPassword(password,passEncrypted);
=======

>>>>>>> ae76c388f6900c2a084005ef0d37f2c2f74795dc

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
