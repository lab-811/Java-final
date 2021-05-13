<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Library Management System</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/style.css" rel='stylesheet' type='text/css'/>


    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css'>


    <style>
        .container {
            margin: 0 auto;
            max-width: 910px;
        }

        .choose {
            width: 100%;
            height: 40px;
        }

        .fa {
            margin-right: 20px;
            font-size: 30px;
            color: gray;
            float: right;
        }

        .book {
            display: inline-block;
            width: 230px;
            height: 390px;
            box-shadow: 0 0 20px #aaa;
            margin: 25px;
            padding: 10px 10px 0 10px;
            vertical-align: top;
            transition: height 1s;
        }

        /* star button */
        .book:after {
            font-family: FontAwesome;
            content: "\f006";
            font-size: 35px;
            position: relative;
            left: -.1cm;
            top: -1.6cm;
            float: right;
        }

        .cover {
            border: 2px solid gray;
            height: 80%;
            overflow: hidden;
        }

        .cover img {
            width: 100%;
        }

        .book p {
            margin-top: 12px;
            font-size: 20px;
        }

        .book .author {
            font-size: 15px;
        }

        @media (max-width: 941px) {
            .container {
                max-width: 700px;
            }

            .book {
                margin: 49px;
            }
        }

        @media (max-width: 730px) {
            .book {
                display: block;
                margin: 0 auto;
                margin-top: 50px;
            }

            .cover {

            }
        }


        h1 {
            color: gray;
            text-align: center;
            font-size: 50px;
            margin-bottom: -3px;
        }


        #list-th:target .book {
            height: 100px;
            width: 250px;
            padding: 10px;
            margin: 25px auto 25px auto;
        }

        #list-th:target .cover {
            width: 246px;
        }

        #list-th:target img {
            opacity: .1;
        }

        #list-th:target p {
            margin-top: -62px;
            margin-left: 20px;
        }

        /* remove button? */
        #large-th:target .book {
            height: 390px;
        }

    </style>

    <script>
        window.console = window.console || function (t) {
        };
    </script>


    <script>
        if (document.location.search.match(/type=embed/gi)) {
            window.parent.postMessage("resize", "*");
        }
    </script>

</head>

<body translate="no">
<nav class="navbar navbar-default">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <a href="userDashboard.jsp" class="navbar-brand">Dashboard</a>
    </div>
    <!-- Collection of nav links and other content for toggling -->
    <div id="navbarCollapse" class="collapse navbar-collapse">

        <ul class="nav navbar-nav">
            <li class="active"><a href="viewBooks.jsp">View All Books</a></li>
            <li><a href="ViewIssuedBookServlet">View Issued Books </a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="UserLogoutServlet">Logout</a></li>
        </ul>
    </div>
</nav>
<div id="large-th">
    <div class="container">
        <h1> A list of books</h1>
        <br>
        <div class="choose">

                <a href="/issueBook.jsp"
                   class="btn btn-success">Issue Book</a>

            <a href="#list-th"><i class="fa fa-th-list" aria-hidden="true"></i></a>
            <a href="#large-th"><i class="fa fa-th-large" aria-hidden="true"></i></a>
        </div>
        <div id="list-th">
            <c:forEach var="book" items="${Books}">
                <div class="book read">
                    <div class="cover">
                        <img src="<c:out value="${book.image}"/>">
                    </div>
                    <div class="description">
                        <p class="title"><c:out value="${book.id}"/> <c:out value="${book.title}"/><br>
                            <span class="author"><c:out value="${book.author}"/></span></p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>


</body>


</html>
