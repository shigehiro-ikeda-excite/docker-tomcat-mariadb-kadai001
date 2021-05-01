<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.time.*"%>
<%@ page import="java.time.format.*"%>
<%@ page import="java.util.Locale" %>
<%@ page import="org.apache.catalina.util.ServerInfo"%>

<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>Hello, world!</title>

  <style>
    body {
      margin: 0px;
    }
    h1 {
      margin: 0px;
      background-color: #000;
      color: #fff;
      padding: 10px 20px 10px 20px;
    }
    h2 {
      margin: 0px;
      padding: 10px 20px 10px 20px;
    }
    table {
      margin: 0px 20px 0px 20px;
      border-collapse:  collapse;
    }
    th,td {
      border: solid 1px;
      padding: 10px;
    }
  </style>
</head>
<body>
  <h1>Tomcat + MariaDB on Docker</h1>
  <h2>正常に動作しています</h2>

<%
String database = "excite_study";
String url = "jdbc:mariadb://db:3306/" + database + "?UTF-8&serverTimezone=JST";
String user = "excite";
String password = "excite";

String sql = "select now() as \"NOW\", version() as \"VERSION\";";

DateTimeFormatter fmt = DateTimeFormatter.ofPattern("yyyy年MM月dd日(E) HH:mm:ssXXX", Locale.JAPANESE);

String timestamp = "";
String dbVersion = "";

try (
    Connection connect = DriverManager.getConnection(url, user, password);
    PreparedStatement ps = connect.prepareStatement(sql);
    ) {

    ResultSet rs = ps.executeQuery();
    if (rs.next()) {
        Timestamp now = rs.getTimestamp("NOW");
        ZonedDateTime zdtNow = ZonedDateTime.ofInstant(now.toInstant(), ZoneId.of("Asia/Tokyo"));

        timestamp = fmt.format(zdtNow);
        dbVersion = rs.getString("VERSION");
    }
}
%>

<table border>
  <tr>
    <td>Java</td>
    <td><%= System.getProperty("java.version") %></td>
  </tr>
  <tr>
    <td>Tomcat</td>
    <td><%= ServerInfo.getServerNumber() %></td>
  </tr>
  <tr>
    <td>MariaDB</td>
    <td><%= dbVersion %></td>
  </tr>
  <tr>
    <td>現在時刻</td>
    <td><%= timestamp %></td>
  </tr>
</table>

</body>
</html>
