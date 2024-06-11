<%@ pagecontentType="text/html" pageEncoding="UTF-8"%> 
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <style>
        ul {
            list-style-type: none;
            /*width:100%;*/
            margin: 0;
            padding: 10px;
            overflow: hidden;
            background-color: #123969;
        }

        li {
            float: right;
        }
        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover {
            background-color: #111;
        }
        .uname{
            margin-top: 14px;
            color: white;
            margin-right: 10px;
        }
    </style>

</head>
<body style="margin: 0;">
<ul>
            <% if (session.getAttribute("uname") != null) {%>

            <li class="uname"><i class="fa fa-user-circle" aria-hidden="true" style="margin-right: 5px;"></i><%=session.getAttribute("uname")%></li>
            <li><a href="register?logout=yes">Logout</a></li>
            <li><a href="EditForm.jsp">Edit</a></li>
                <% if (session.getAttribute("id").equals("1")) {%>
            <li><a href="Delete.jsp">Delete</a></li>
            <li><a href="Search.jsp">Search</a></li>
                <%}%>
                <%} else {%>
            <li><a href="Registration.jsp">Register</a></li>
            <li><a href="Login.jsp">Login</a></li>
                <%}%>
            <li><a class="active" href="Index.jsp">Home</a></li>
            <li style="float:left"><img src="image/ps.jpeg"></li>
        </ul>


</body>
</html>