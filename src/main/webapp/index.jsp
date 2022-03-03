<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Bach
  Date: 3/3/2022
  Time: 10:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.codegym.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh Sách Khách Hàng</title>
    <style>
        table,td{
            text-align: center;
            border: 2px solid black;
            border-radius: 3px;
            font-size: 15px;
            font-family: Agency FB;
            margin-left: 250px;
            padding: 10px;
        }
    </style>
</head>
<body>
<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", "https://img.lovepik.com/free-png/20210919/lovepik-confident-workplace-business-male-image-png-image_400581049_wh1200.png"));
    customers.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "https://fb-images.saostar.vn/wp700/pc/1616143027642/saostar-55gvqqwc02gujime.jpg"));
    customers.add(new Customer("Nguyễn Thái Hào", "1983-08-22", "Nam Định", "https://vcdn1-giaitri.vnecdn.net/2014/11/08/5a-8117-1415418990.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=mpQhAJoNDpsJ-Wg-8baiSA"));
    customers.add(new Customer("Trần Đăng Khoa", "1983-08-17", "Hà Tây", "https://scr.vn/wp-content/uploads/2020/08/H%C3%ACnh-trai-%C4%91%E1%BA%B9p-ng%E1%BA%A7u-Vi%E1%BB%87t-Nam.jpg"));
    customers.add(new Customer("Nguyễn Đình Thi", "1983-08-19", "Hà Nội", "https://we25.vn/media2018/Img_News/2019/07/01/nam-sinh-2001-dien-trai_20190701233612.jpg"));
    pageContext.setAttribute("customers",customers);
%>
<table>
    <tr>
        <td>Tên</td>
        <td>Ngày Sinh</td>
        <td>Địa Chỉ</td>
        <td>Ảnh</td>
    </tr>
    <c:forEach var="customer" items="${customers}">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.birthday}</td>
            <td>${customer.address}</td>
            <td><img src="${customer.img}" alt="" width="100px" height="100px"></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
