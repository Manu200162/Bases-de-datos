package cuarentena;

import java.sql.SQLException;

public class Main {

	public static void main(String[] args) {
		Conector instancia = Conector.getInstancia();
		/*
		 * 3) Mostrar los nombres de los pacientes.
		 */
		try {
			System.out.println("Nombres");
			for (String s : instancia.getNombres()) {
				System.out.println(s);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("");
		System.out.println("");
		/*
		 * 4) Mostrar el consultorio y nombre de los doctores
		 */
		try {
			System.out.println("DOCTOR    CONSULTORIO");
			for (int i = 0; i < instancia.getDoctores().size(); i++) {
				System.out.print(instancia.getDoctores().get(i));
				i++;
				System.out.println("      " + instancia.getDoctores().get(i));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
