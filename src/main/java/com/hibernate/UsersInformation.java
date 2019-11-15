package com.hibernate;



/**
 * UsersInformation entity. @author MyEclipse Persistence Tools
 */

public class UsersInformation  implements java.io.Serializable {


    // Fields    

     private String usersName;
     private String usersPassword;


    // Constructors

    /** default constructor */
    public UsersInformation() {
    }

    
    /** full constructor */
    public UsersInformation(String usersName, String usersPassword) {
        this.usersName = usersName;
        this.usersPassword = usersPassword;
    }

   
    // Property accessors

    public String getUsersName() {
        return this.usersName;
    }
    
    public void setUsersName(String usersName) {
        this.usersName = usersName;
    }

    public String getUsersPassword() {
        return this.usersPassword;
    }
    
    public void setUsersPassword(String usersPassword) {
        this.usersPassword = usersPassword;
    }
   








}