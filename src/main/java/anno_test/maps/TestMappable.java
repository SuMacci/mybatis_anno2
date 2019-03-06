package anno_test.maps;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.mybatis.spring.annotation.MapperScan;

public interface TestMappable {

	/* XML */
	//select
	public List selectTest();
	
	//insert
	public void insertTest(Map<String, String> map);
	
	//update
	public void updateTest(Map<String, String> map);
	
	//delete
	public void deleteTest(String s);
	
	//whereselect
	public List selectWhereTest(String s);
}
