package anno_test.maps;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.mapping.StatementType;

public interface AnnoMaps {

	// 등록
	@Insert("INSERT INTO spr_test VALUES(SQ_SPR_TEST.NEXTVAL, #{sname})")
	public void getInsert(String sname);

	// 삭제
	@Delete("DELETE FROM spr_test WHERE S_NAME = #{sname}")
	public void getDelete(String sname);

	// 수정
	@Select("UPDATE spr_test SET S_NAME = #{s_name} WHERE S_NUM= #{s_num}")
	public HashMap<String, String> getUpdate(HashMap<String, String> m);

	// 파라메터가 없는 메서드
	@Select("SELECT * FROM spr_test ORDER BY S_NUM ASC")
	public ArrayList<HashMap<String, String>> getList();

	// 파라메터가 있는 메서드
	@Select("SELECT * FROM spr_test WHERE S_NUM > #{snum}  ORDER BY S_NUM ASC")
	public ArrayList<HashMap<String, String>> getListWhere(int snum);
	
	// 연습
	@Insert("{ CALL SHC_TESTCODING(#{shc_title, mode=IN, jdbcType=VARCHAR}, #{shc_name, mode=IN, jdbcType=VARCHAR}, #{shc_main, mode=IN, jdbcType=VARCHAR})")
	@Options(statementType = StatementType.CALLABLE)
	public void getCoding(HashMap<String, String> m);

	@Select("SELECT * FROM t_t_test WHERE T_PAGE(R, 1, 10)=1")
	public ArrayList<HashMap<String, String>> getCodingMain();
	
	/*게시판 테스트*/

	//게시글 인서트

	@Insert("INSERT INTO T_QNA(TEST_NUM, TEST_TITLE) VALUES(SEQ_T_QNA.NEXTVAL, #{b_title})")

	public void insertBoard(HashMap<String, Object> hm);

	//게시글 불러오기

	@Select("SELECT * FROM v_t_qna WHERE TEST_PAGE(R, #{pagenum}, 10)=1 ORDER BY q_group  DESC, q_verti ASC")

	public ArrayList<HashMap<String, Object>> boardList(String pagenum);

	//페이징 view

	@Select("SELECT * FROM v_page")

	public HashMap<String, String> paging();

	//답글쓰기

	@Insert("{ CALL P_REPLY(#{r_num, mode=IN, jdbcType=INTEGER}, #{r_title, mode=IN, jdbcType=VARCHAR})}")

	@Options(statementType = StatementType.CALLABLE)

	public void Insertreply(HashMap<String, Object> hm);
	
}

