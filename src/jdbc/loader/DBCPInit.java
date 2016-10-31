package jdbc.loader;

import java.util.StringTokenizer;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class DBCPInit extends HttpServlet {
	public void init(ServletConfig config) throws ServletException {
		try {
			String drivers = config.getInitParameter("jdbcdriver"); //�ʱ�ȭ �Ķ���� �� �� 'jdbcdriver'��� ���� �����ͼ� ����.
			//oracle.jdbc.driver.OracleDriver
			StringTokenizer st = new StringTokenizer(drivers,","); //��ǥ�� ���еǴ� ��ū. ���� ���� �ϳ�����ū���� ����
			
			while (st.hasMoreTokens()) { //token�� �ִ��� Ȯ��.
				String jdbcDriver = st.nextToken(); //token�� �����ͼ� ����
				Class.forName(jdbcDriver);//oracle����̹� �ε�.  
				//forName("oracle.jdbc.driver.OracleDriver")���� ���൵ ������ �������ϰ�,���� DB���� �� ���� �� ������ ������ �ʾƵ� �Ǽ� ��
			}
		
		Class.forName("org.apache.commons.dbcp.PoolingDriver"); //poolingDriver ���� -> Ŀ�ؼ� Ǯ�� ������ �� ����.
		
		} catch(Exception ex) {
			throw new ServletException(ex);
		}
	}
}
