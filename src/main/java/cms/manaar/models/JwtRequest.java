package cms.manaar.models;

import java.io.Serializable;

public class JwtRequest implements Serializable {

    private static final long serialVersionUID = 4444595779520627542L;

    private String userName;
    private String password;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    //need default constructor for JSON Parsing
    public JwtRequest()
    {

    }
    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


}
