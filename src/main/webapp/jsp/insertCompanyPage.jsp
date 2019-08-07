<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Companies</title>
    <style type="text/css">
    *
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
}
    </style>
</head>

<body>
    <header class="header">
        <ul class="nav-bar">
            
            <li> <a href="importStockPage.html">Import Data</a></li>
            <li><a href="listCompanyDetails.html"  class="active">Manage Company</a></li>
            <li><a href="listStockExchange.html">Manage Exchange</a></li>
            <li><a href="IPO.html">Update IPO details</a></li>
            <li style="float: right ;margin-right: 30px"><a href="#" id="logout-link">Logout</a></li>
        </ul>
        
    </header>

    <div class="main">

        <h1 style="text-align: center;line-height: 200px">Create New Company</h1>
        <form style="margin-left: 750px" action="insert">
                            <table>
                            <tr><td>CompanyName:</td><td><input type="text" name="cname" placeholder="CompanyName" required="required"/></td></tr>
                            <tr><td>Ceo & Board of member name:</td><td><input type="text" name="ceoname" placeholder="CeoName" required="required"/><br><br></td></tr>
							 <tr><td>sector id:</td><td><input type="number" name="sid" placeholder="sector id" required="required"/></td></tr>
                            <tr><td>TurnOver:</td><td><input type="number" name="turnover" placeholder="Turnover" required="required"/></td></tr>
                            <tr><td>Brief:</td><td><input type="text" name="Brief" placeholder="Brief"/></td></tr>
                            <tr><td>Stock code:</td><td><input type="number" name="scode" placeholder="stock code" required="required"/></td></tr>
                        <tr><td colspan="2" style="text-align: center">
                        <input type="submit" value="Submit"/>
                        </td></tr>
                        </table>
                
                </form>
       
    </div>

    <footer class="footer">
        <p id="ftext">Copyright &copy: StockExchange 2019</p>
    </footer>
</body>

</html>