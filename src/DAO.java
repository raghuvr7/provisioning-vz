import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO {
	PreparedStatement ps = null;
	ResultSet rset = null;
	List<Adddata> zipcode = null;

	public List distinctZipCode() {
		Connection conn = new DBConnectionClass().makeConnection();
		String query = "Select distinct zipcode from adddata";
		try {
			ps = conn.prepareStatement(query);
			rset = ps.executeQuery();
			zipcode = new ArrayList<Adddata>();
			while (rset.next()) {
				int zip = rset.getInt("zipcode");

				Adddata ad = new Adddata(zip);
				zipcode.add(ad);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}
}
