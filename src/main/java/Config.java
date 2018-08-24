class Config {
    private String url = "jdbc:mysql://localhost/adlister_db?serverTimezone=UTC&useSSL=false";
    private String user = "stephen";
    private String password = "codeup";

    public String getUrl() {
        return url;
    }
    public String getUsername() {
        return user;
    }
    public String getPassword() {
        return password;
    }
}