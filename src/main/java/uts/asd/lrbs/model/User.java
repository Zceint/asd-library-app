package uts.asd.lrbs.model;
import java.io.Serializable;

public class User implements Serializable {
    
    private int userID;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private boolean type;

    public User (int id, String firstName, String lastName, String email, String password, boolean type) {
        this.userID = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.type = true;
    }

    public int getId() {return userID;}
    public void setId(int id) {this.userID = id;}

    public boolean getType() { return type; }
    public void setType(boolean type) { this.type = type; }
    
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getFirstName() { return firstName; }
    public void setFirstName(String firstName) { this.firstName = firstName; }
    
    public String getLastName() { return lastName; }
    public void setLastName(String lastName) { this.lastName = lastName; }

    
    @Override
    public String toString() {
        return getEmail();
    }
}
