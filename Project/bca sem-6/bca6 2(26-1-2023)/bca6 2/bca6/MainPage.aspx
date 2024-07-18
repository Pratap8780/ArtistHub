<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="bca6.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="h-100 gradient-form" style="background-color: #eee;">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-lg-6 col-md-6 col-sm-6  py-4">
                            <a href="AdminLogin.aspx" class="text-decoration-none text-secondary text-center">
                               <h1 class="bg-secondary text-light rounded-circle py-5"> Continue as Vendor</h1>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 py-4">
                            <a href="user login.aspx" class="text-decoration-none text-secondary text-center">
                                <h1 class="bg-secondary text-light rounded-circle py-5">Continue as Consumer</h1>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
