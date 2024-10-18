<%@page language="java" session="false"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.Set" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8"/>
<title>SecDocs V3.1A00 Sample Files</title>
</head>
<body>
<h1>SecDocs V3.1A00 Sample Files</h1>
<hr/>

<% 
ServletContext servletContext = pageContext.getServletContext();
Set<?> files = servletContext.getResourcePaths("/schemas/3.1/samples");
Iterator<?> it = files.iterator();
String fileName;
out.println("<ul>");
while (it.hasNext()) {
    fileName = (String) it.next();
    fileName = fileName.substring(21);
    if ((!fileName.endsWith(".xml")) && (!fileName.endsWith(".xsd"))) {
        continue;
    }
    out.print("<li><a href=\"");
    out.print(fileName);
    out.print("\">");
    out.print(fileName);
    out.println("</a></li>");
}
out.println("</ul>");
%>

</body>
</html>
