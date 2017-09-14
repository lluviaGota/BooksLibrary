<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Max Frei Library::Login</title>
        <link href="css/style_index.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="main">
            <div class="content">
                <p class="title"><span class="text"><img src="images/logo.jpeg" width="130" height="130" hspace="10" vspace="10" align="middle"></span></p>
                <p class="title">Max Frei online library</p>
                <p class="text">Welcome to online library, where you could find all written books by famous Max Frei.</p>
                <p class="text">Project is under construction. All design and function will be improved in the nearest time.</p>
                <p class="text">With all questions please follow to <a href="mailto:support@testlibrary.com">max-frei@library.com</a></p>
                <p>&nbsp;</p>
            </div>
            <div class="login_div">
                <p class="title">Please enter your name to login:</p>
                     <form class="login_form" name="username" action="pages/main.jsp" method="POST">
                    Name <input type="text" name="username" value="" size="20" />
                    <input type="submit" value="Go" />
                </form>
            </div>
            <div class="footer">
                Developer: yucca_m
            </div>
        </div>
    </body>
</html>
