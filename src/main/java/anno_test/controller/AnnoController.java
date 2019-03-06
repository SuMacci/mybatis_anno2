package anno_test.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.yourbatis.Dbs;

import anno_test.maps.AnnoMaps;
import anno_test.maps.TestMappable;

import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.io.BufferedReader;
import java.io.IOException;

@org.springframework.stereotype.Controller
public class AnnoController {
	@Autowired
	Connection con;
	@Autowired
	Dbs dbs;
	@Autowired
	AnnoMaps amap;
	@Autowired
	TestMappable tm;
	

	// 마이바티스 테스트
	@RequestMapping(value = { "/get_list" }, method = RequestMethod.GET)
	public String getList(Model m) {
		m.addAttribute("message", amap.getList());
		return "get_list";
	}

	/* *****************************XML 방식***************************** */
	/* 1. 쿼리없는 SELECT */
	@RequestMapping(value = { "/get_list_xml" }, method = RequestMethod.GET)
	public String getListXml(ModelMap m) {
		System.out.println("getListXml START!");
		m.addAttribute("message", tm.selectTest());
		return "xml_test/list";
	}

	/* 인서트 */
	@RequestMapping(value = { "/get_insert_xml" })
	public String xml_insert() {
		return "xml_test/insert";
	}

	@RequestMapping(value = { "/get_insert_xml" }, method = RequestMethod.POST)
	public String getinsertXml(ModelMap m, @RequestParam Map<String, String> map) {
		tm.insertTest(map);
		m.addAttribute("message", tm.selectTest());
		return "xml_test/list";
	}

	/* 업데이트 */
	@RequestMapping(value = { "/get_update_xml" })
	public String xml_update() {
		return "xml_test/update";
	}

	@RequestMapping(value = { "/get_update_xml" }, method = RequestMethod.POST)
	public String getupdateXml(ModelMap m, @RequestParam Map<String, String> map) {
		tm.updateTest(map);
		m.addAttribute("message", tm.selectTest());
		return "xml_test/list";
	}

	/* 삭제하기 */
	@RequestMapping(value = { "/get_delete_xml" })
	public String xml_delete() {
		return "xml_test/delete";
	}

	@RequestMapping(value = { "/get_delete_xml" }, method = RequestMethod.POST)
	public String getdeleteXml(ModelMap m, @RequestParam("xml_name") String s) {
		tm.deleteTest(s);
		m.addAttribute("message", tm.selectTest());
		return "xml_test/list";
	}

	/* WHERE SELECT */
	@RequestMapping(value = { "/get_where_xml" })
	public String xml_where() {
		return "xml_test/where";
	}

	@RequestMapping(value = { "/get_where_xml" }, method = RequestMethod.POST)
	public String getwhereXml(ModelMap m, @RequestParam("xml_num") String s) {
		m.addAttribute("message", tm.selectWhereTest(s));
		return "xml_test/list";
	}

	/* *****************************애노테이션 방식***************************** */
	// 리스트 인서트
	@RequestMapping(value = { "/getlistwhere" })
	public String getlistwhere() {
		return "getlistwhere";
	}

	@RequestMapping(value = { "/getlistwhere2" }, method = RequestMethod.GET)
	public String getlistwhere2(Model m, @RequestParam Map<String, String> map) {
		int snum = Integer.parseInt(map.get("s_num"));
		m.addAttribute("message", amap.getListWhere(snum));
		return "get_list";
	}

	// 업데이트
	@RequestMapping(value = { "/getupdate" })
	public String getupdate() {
		return "getupdateform";
	}

	@RequestMapping(value = { "/getupdate2" }, method = RequestMethod.POST)
	public String getupdate(Model m, @RequestParam HashMap<String, String> map) {
		m.addAttribute("message2", amap.getUpdate(map));
		m.addAttribute("message", amap.getList());
		return "get_list";
	}

	// 삭제
	@RequestMapping(value = { "/getdelete" })
	public String getDelete() {
		return "getdeleteform";
	}

	@RequestMapping(value = { "/getdelete2" }, method = RequestMethod.POST)
	public String getDelete2(Model m, @RequestParam("s_name") String name) {
		amap.getDelete(name);
		m.addAttribute("message", amap.getList());
		return "get_list";
	}

	// 인서트
	@RequestMapping(value = { "/getinsert" })
	public String getInsert() {
		return "getinsert";
	}

	@RequestMapping(value = { "/getinsert2" }, method = RequestMethod.POST)
	public String getInsert2(Model m, @RequestParam("s_name") String name) {
		amap.getInsert(name);
		m.addAttribute("message", amap.getList());
		return "get_list";
	}

	// 코딩
	@RequestMapping(value = { "/test_coding" })
	public String getCoding(Model m) {
		m.addAttribute("coding", amap.getCodingMain());
		return "hahyun/hi";
	}

	@RequestMapping(value = { "/insert_coding" }, method = RequestMethod.POST)
	public String getInsertCoding(Model m, @RequestParam HashMap<String, String> map) {
		amap.getCoding(map);
		m.addAttribute("coding", amap.getCodingMain());
		return "hahyun/hi";
	}
	
	/* ***************************** 도시 등등 ***************************** */
	@RequestMapping(value= {"/api_buy"})
	public String apiBuy(ModelMap m) {
		return "api/apibuy";
	}
	
	@RequestMapping(value= {"/api_code"}, method=RequestMethod.GET)
	public String apiCode(ModelMap m) {
		return "";
	}
	
	@RequestMapping(value= {"/api_testcode"}, method=RequestMethod.GET)
	public void apiTestCode() {
		
	}
	/**
	 * --------------------------------------------------------------------------
	 **/

	// 히카리 피시 테스트
	@RequestMapping(value = { "/test_yourbatis" }, method = RequestMethod.GET)
	public String testYourbatis(Model m) {
		// ResultSet을 ArrayList화
		ArrayList<HashMap<String, String>> list = dbs.selectListMap("SELECT * FROM spr_test2 ORDER BY S_NUM DESC");
		// return
		m.addAttribute("message", list);
		return "test_yourbatis";
	}

	@RequestMapping(value = { "/test_hikari" }, method = RequestMethod.GET)
	public String testHikari(Model m) {
		/* 3.2. SELECT SQL실행 */
		Statement s = null;
		ResultSet rs = null;
		try {
			s = con.createStatement();
			rs = s.executeQuery("SELECT * FROM spr_test2 ORDER BY S_NUM DESC");
		} catch (SQLException e) {
			System.out.println("3. SQL실행 예외 : " + e.getMessage());
		}
		// ResultSet을 ArrayList화
		ArrayList<HashMap<String, String>> list = new ArrayList<HashMap<String, String>>();
		HashMap<String, String> map = null;
		try {
			while (rs.next()) {
				map = new HashMap<String, String>();
				// 열의 개수 가져오기
				ResultSetMetaData rm = rs.getMetaData();
				int c_count = rm.getColumnCount();
				for (int i = 1; i <= c_count; i++) {
					map.put(rm.getColumnName(i), rs.getString(i));
				}
				//
				list.add(map);
			}
		} catch (SQLException e) {
			System.out.println("ResultSet을 ArrayList화 예외 : " + e.getMessage());
		}
		// return
		m.addAttribute("message", list);
		return "test_hikari";
	}

	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String homePage(ModelMap m) {
		m.addAttribute("message", "HI MESSAGE");
		return "home";
	}

}
