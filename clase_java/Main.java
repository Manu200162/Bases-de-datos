package cuarentena;

import java.sql.SQLException;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Conector instancia = Conector.getInstancia();
		//try {
			//instancia.getNombres();
			//for (String s : instancia.getNombres()) {
			//	System.out.println(s);
			//}

		//} catch (SQLException e) {
		//	e.printStackTrace();
		//}
		try {
			System.out.println("DOCTOR    CONSULTORIO");
			for (int i = 0; i< instancia.getDoctores().size(); i++) {
				System.out.print(instancia.getDoctores().get(i));  
			    i++;
			    System.out.println("      "+instancia.getDoctores().get(i));  
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
