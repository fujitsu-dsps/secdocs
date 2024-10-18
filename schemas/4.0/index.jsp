<%@page language="java" session="false"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.Set" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8"/>
<title>SecDocs V4.0 Schema Files</title>
</head>
<body>
<h1>SecDocs V4.0 Schema Files</h1>
<hr/>

<% 
ServletContext servletContext = pageContext.getServletContext();
Set<?> files = servletContext.getResourcePaths("/schemas/4.0");
Iterator<?> it = files.iterator();
String fileName;
out.println("<ul>");
while (it.hasNext()) {
    fileName = (String) it.next();
    fileName = fileName.substring(13);
    if (!fileName.endsWith(".wsdl") && 
        !fileName.endsWith(".xsd")  && 
        !fileName.endsWith(".xjb")) {
        continue;
    }
    if (fileName.startsWith("soapfilter.")) {
        continue;
    }
    out.print("<li><a href=\"");
    out.print(fileName);
    out.print("\" type=\"text/plain\">");
    out.print(fileName);
    out.println("</a></li>");
}
out.println("</ul>");

//out.println("<ul>");
//out.print("<li><a href=\"query/\">SecDocs V3.2A00 SPARQL Related Schema Files</a></li>");
//out.println("</ul>");

out.println("<ul>");
out.print("<li><a href=\"samples/\">SecDocs V4.0 Sample Files</a></li>");
out.println("</ul>");
%>

</body>
</html>
