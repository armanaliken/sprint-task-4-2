<%@ page import="java.util.ArrayList" %>
<%@ page import="models.Item" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</head>
    <style>
        .custom-bg {
            background: linear-gradient(180deg, #f5f2f2 18%, #ffffff 25%);
        }
    </style>
<body>
    <div class="container">
        <%@include file="navbar.jsp"%>
        <br><br>
        <h1 class="text-center fs-1">Welcome to BITLAB SHOP</h1>
        <h2 class="text-center fs-6 text-muted">Electronic devices with high quality and service</h2>
        <br><br>
    </div>
    <div class="container">
        <div class="row">
            <%
                List<Item> items = (List<Item>) request.getAttribute("tovary");
                if (items != null) {
                    for (Item item : items){
            %>
            <div class="col-md-4 mb-3">
                <div class="bg-light p-3 text-center shadow-lg custom-bg rounded">
                    <h3><%=item.getName()%></h3>
                    <table class="table table-borderless text-center">
                        <tbody>
                        <tr>
                            <td class="text-success fs-3 fw-bold">$<%=item.getPrice()%></td>
                        </tr>
                        <tr>
                            <td><%=item.getRam()%></td>
                        </tr>
                        <tr>
                            <td><%=item.getStorage()%></td>
                        </tr>
                        <tr>
                            <td><%=item.getProcessor()%></td>
                        </tr>
                        </tbody>
                    </table>
                    <a href="auth.jsp" class="btn btn-success rounded-bottom mb-2 w-100">Buy Now</a>
                </div>
            </div>
            <%
                    }
                }
            %>
        </div>
    </div>
</body>
</html>
