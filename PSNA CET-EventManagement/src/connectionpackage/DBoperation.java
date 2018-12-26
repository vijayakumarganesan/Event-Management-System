package connectionpackage;

import java.util.ArrayList;

public interface DBoperation {
	public int EventRegisteration(String name,String dept,String year,String clg,String city,String mail,String contact,String addr,String event);
    public ArrayList eventDetail(String event);
    public String update(String name);
}
