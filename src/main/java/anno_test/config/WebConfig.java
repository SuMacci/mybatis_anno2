package anno_test.config;

import javax.servlet.Filter;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

// web.xml 대체
public class WebConfig extends AbstractAnnotationConfigDispatcherServletInitializer {

	// 기본설정파일
	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return new Class[] { MvcConfig.class };
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub
		return new String[] { "/" };
	}
	@Override
	 protected Filter[] getServletFilters() {
	  CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
	  characterEncodingFilter.setEncoding("UTF-8");
	  characterEncodingFilter.setForceEncoding(true);

	  return new Filter[] { characterEncodingFilter };
	 }

}
