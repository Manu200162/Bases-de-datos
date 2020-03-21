# EJERCICIOS JAVA
## 2) Conectarse a la base cuarentena con el nuevo usuario
```java
private static void crearConexion() {
		String host = "127.0.0.1";
		String user = "root#2";
		String password = "Mysql4567";
		String dataBase = "cuarentena";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String urlConexion = "jdbc:mysql://" + host + "/" + dataBase + "?" + "user=" + user + "&password="
					+ password;
			con = DriverManager.getConnection(urlConexion);
		} catch (Exception e) {
			System.out.println("Error al conectar a la base de datos");
			System.out.println(e);
		}
	}
```
## 3) Mostrar los nombres de los pacientes.
```java
public ArrayList<String> getNombres() throws SQLException {
		ArrayList<String> listaPacientes = new ArrayList<String>();
		PreparedStatement ps = con.prepareStatement(
				"SELECT * FROM paciente\r\n" + "inner join persona on paciente.personaID = persona.CI");
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			listaPacientes.add(rs.getString("nombres"));
		}
		rs.close();
		return listaPacientes;
	}
```
```java
try {
			System.out.println("Nombres");
			for (String s : instancia.getNombres()) {
				System.out.println(s);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
```
## 4) Mostrar el consultorio y nombre de los doctores.
```java
public ArrayList<String> getDoctores() throws SQLException {
		ArrayList<String> listaDoctores = new ArrayList<String>();
		PreparedStatement ps = con
				.prepareStatement("SELECT * FROM doctor\r\n" + "inner join persona on doctor.personaID = persona.CI\r\n"
						+ "inner join consultorio on doctor.consultorioID = consultorio.ID");
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			listaDoctores.add(rs.getString("nombres"));
			listaDoctores.add(rs.getString("consultorioID"));
		}
		rs.close();
		return listaDoctores;
	}
```
```java
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
```    
