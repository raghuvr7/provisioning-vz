import java.util.Iterator;
import java.util.List;


public class TestDAO {

	public static void main(String[] args) {
		DAOOrderToBill dao=new DAOOrderToBillOracle();
		List<Order> list=dao.getProvisionReadyOrders();
		Iterator<Order> it=list.iterator();
		while(it.hasNext()){
			System.out.println(it.toString());
		}
		
	}

}
