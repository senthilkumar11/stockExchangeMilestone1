<%@ page language="java" contentType="text/html; charset=UTF-8"
 import="java.util.*,com.premium.stc.model.Company"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Companies</title>
   <style type="text/css">*
{
padding: 0px;
margin: 0px;

}
.header
{
    width: 100%;
    height: 50px;
   line-height: 50px;
   background-color: midnightblue;
 
}

.footer
{
  position: fixed;
  left: 0;
  bottom: 0;
    width: 100%;
    height: 50px;
   line-height: 50px;
   background-color: darkgray;

}

.nav-bar {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color:#333;
    position: -webkit-sticky; /* Safari */
    position: sticky;
    top: 0;
  }
  
  .nav-bar li {
    float: left;
  }
  
  .nav-bar a {
    display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  }
  
.nav-bar a:hover {
    background-color: #111111;
  }
  .nav-bar li a.active {
    background-color: lightskyblue;
    color: black;
  }

  .main
  {
      height:900px;
      width: 100%;
      background-color: floralwhite;
  }
  .india-stc
  {
      width: 49%;
      display: inline-block;
  }
  .india-stc table {
    border-collapse: collapse;
    width: 100%;
  }
  
  .india-stc  th, td {
    text-align: left; 
    padding: 8px;
  }
  .india-stc td{
      color: red;
  }
  .india-stc  tr:nth-child(even) {background-color: #f2f2f2;
}
  .global-stc
  {
      width: 49%;
      display: inline-block;
  }
  .global-stc table {
    border-collapse: collapse;
    width: 100%;
  }
  
  .global-stc  th, td {
    text-align: left; 
    padding: 8px;
  }
  .global-stc td{
      color:green;
  }

  .global-stc  tr:nth-child(even) {background-color: #f2f2f2;
  }
  .stock-detail-stc{
    margin-left: 500px;
    text-align: center;
    width: 49%;
  }

  .stock-detail-stc table {
  
    border-collapse: collapse;
    width: 100%;
  }
  .stock-detail-stc th, td {
    text-align: left; 
    padding: 8px;
  }
  .stock-detail-stc tr:nth-child(even) {background-color: #f2f2f2;
  }
  .form-style
  {
      line-height: 75px;
      font-size: 24px;

  }
  .form-style input[type=file]
  {
    border: none;
    color: white;
    padding: 8px 16px;
    text-decoration: none;
    font-size: 16px;
    margin: 2px 1px;
    cursor: pointer;
	background: #216288;
    box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.28);
  }
 .form-style input[type=submit]{
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    font-size: 16px;
    cursor: pointer;
	background: #2A6881;
    box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.28);
}
.button-style 
{

  border: none;
  color: white;
  padding: 8px 64px;
  text-decoration: none;
  font-size: 16px;
  margin: 2px 1px;
  cursor: pointer;
background: #216288;
  box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.28);
}
.button-style a
{
  display: block;
  color: white;
  text-align: center;
  padding: 7px 16px;
  text-decoration: none;
}
.center-table
{
    width: 49%;
    display: inline-block;
}
.center-table table {
  border-collapse: collapse;
  width: 100%;
}

.center-table  th, td {
  text-align: left; 
  padding: 8px;
}
.center-table td{
    color:green;
}

.center-table  tr:nth-child(even) {background-color: #f2f2f2;
}</style>
   
</head>

<body>
    <header class="header">
        <ul class="nav-bar">
            
            <li> <a href="importStockPage.jsp" >Import Data</a></li>
            <li><a href="listCompanyDetails.jsp" class="active">Manage Company</a></li>
            <li><a href="listStockExchange.jsp">Manage Exchange</a></li>
            <li><a href="IPO.jsp">Update IPO details</a></li>
            <li style="float: right ;margin-right: 30px"><a href="#" id="logout-link">Logout</a></li>
        </ul>
        
    </header>

    <div class="main">

        <h1 style="text-align: center;line-height: 200px">List of Companies</h1>

    <div class="global-stc" style="margin-left: 450px">
     <% List companyList=(List)request.getAttribute("list");
%>
     
      <table>
   
      <tr>
        <th >Company id</th>
        <th >Company Name</th>
        <th >CEO,BOD</th>
        <th >Breif</th>
        <th >Update</th>
      </tr>
  <%for(int i=0;i<companyList.size();i++){
	Company com=(Company)companyList.get(i);
	%>
      <tr>
        <th><%=com.getCompanyCode() %></th>
        <td><%=com.getCompanyName() %></td>
        <td><%=com.getCeo() %></td>
        <td><%=com.getBriefWriteUp() %></td>
        <td><input type="submit" value="Update"/></td>
      </tr>
     
   <%} %>
  </table>
    </div>
    <h1 style="text-align: center;line-height: 200px;"><a href="insertCompanyPage.jsp" style=" text-decoration: none">Add company</a></h1>
  </div>
    

    <footer class="footer">
        <p id="ftext">Copyright &copy: StockExchange 2019</p>
    </footer>
</body>

</html>