public with sharing class UsersPOSTWrapper {
    public Integer id;
    public String name;
    public String email;
    public String gender;
    public String status;
	
    public UsersPOSTWrapper(Integer id1,String name1,String email1,String gender1,String status1){
        this.id = id1;
        this.name = name1;
        this.email = email1;
        this.gender = gender1;
        this.status = status1;
    }
}