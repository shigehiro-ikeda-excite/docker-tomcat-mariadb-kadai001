<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>

<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>Hello, world!</title>
</head>
<body>
  <h1>
    <%= "Hello, world!" %>
  </h1>

<%
String database = "excite_study";
String url = "jdbc:mariadb://db:3306/" + database + "?UTF-8&serverTimezone=JST";
String user = "excite";
String password = "excite";

String sql = "select now() as \"NOW\", version() as \"VERSION\";";

String timestamp = "";
String version = "";

try (Connection connect = DriverManager.getConnection(url, user, password);
  PreparedStatement ps = connect.prepareStatement(sql);) {

  ResultSet rs = ps.executeQuery();
  if (rs.next()) {
    timestamp = rs.getString("NOW");
    version = rs.getString("VERSION");
  }

} catch (Exception e) {
  out.print("<pre>");
  e.printStackTrace(response.getWriter());
  out.print("</pre>");
}
%>

<div><%= timestamp %></div>
<div><%= version %></div>

</body>
</html>
