<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="width" uri="http://www.springframework.org/tags/form" %>
<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Products</title>

    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/form.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!-- //js -->
    <!-- cart -->
    <script src="js/simpleCart.min.js"></script>
    <!-- cart -->
    <!-- the jScrollPane script -->
    <script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" id="sourcecode">
        $(function () {
            $('.scroll-pane').jScrollPane();
        });
    </script>
    <!-- //the jScrollPane script -->
    <script type="text/javascript" src="js/jquery.mousewheel.js"></script>
    <!-- the mousewheel plugin -->
</head>
<body>
<!--header-->
<div class="header">
    <div class="container">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <h1 class="navbar-brand"><a href="WEB-INF/jsp/index.html">CAKESHOP</a></h1>
            </div>
            <!--navbar-header-->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="WEB-INF/jsp/index.html" class="active">Home</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Order<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <h4>TransNo</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="products.html">10123</a></li>
                                        <li><a class="list" href="products.html">20123</a></li>
                                        <li><a class="list" href="products.html">38901</a></li>
                                        <li><a class="list" href="products.html">47899</a></li>
                                        <li><a class="list" href="products.html">54452</a></li>
                                        <li><a class="list" href="products.html">61212</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h4>Carrier</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="products.html">顺丰配送</a></li>
                                        <li><a class="list" href="products.html">本店配送</a></li>
                                        <li><a class="list" href="products.html">上门提取</a></li>
                                        <li><a class="list" href="products.html">德邦物流</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h4>TransState</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="products.html">未评价</a></li>
                                        <li><a class="list" href="products.html">未收货</a></li>
                                        <li><a class="list" href="products.html">未发货</a></li>
                                        <li><a class="list" href="products.html">未付款</a></li>
                                        <li><a class="list" href="products.html">未评价</a></li>
                                        <li><a class="list" href="products.html">未付款</a></li>
                                    </ul>
                                </div>
                            </div>
                        </ul>
                    </li>
                    <li class="dropdown grid">
                        <a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Wedding<b
                                class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <h4>By Relation</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="products.html">Friend</a></li>
                                        <li><a class="list" href="products.html">Lover</a></li>
                                        <li><a class="list" href="products.html">Sister</a></li>
                                        <li><a class="list" href="products.html">Brother</a></li>
                                        <li><a class="list" href="products.html">Kids</a></li>
                                        <li><a class="list" href="products.html">Parents</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h4>By Flavour</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="products.html">Chocolate</a></li>
                                        <li><a class="list" href="products.html">Mixed Fruit</a></li>
                                        <li><a class="list" href="products.html">Butterscotch</a></li>
                                        <li><a class="list" href="products.html">Strawberry</a></li>
                                        <li><a class="list" href="products.html">Vanilla</a></li>
                                        <li><a class="list" href="products.html">Eggless Cakes</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h4>By Theme</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="products.html">Heart shaped</a></li>
                                        <li><a class="list" href="products.html">Cartoon Cakes</a></li>
                                        <li><a class="list" href="products.html">2-3 Tier Cakes</a></li>
                                        <li><a class="list" href="products.html">Square shape</a></li>
                                        <li><a class="list" href="products.html">Round shape</a></li>
                                        <li><a class="list" href="products.html">Photo cakes</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h4>Weight</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="products.html">1 kG</a></li>
                                        <li><a class="list" href="products.html">1.5 kG</a></li>
                                        <li><a class="list" href="products.html">2 kG</a></li>
                                        <li><a class="list" href="products.html">3 kG</a></li>
                                        <li><a class="list" href="products.html">4 kG</a></li>
                                        <li><a class="list" href="products.html">Large</a></li>
                                    </ul>
                                </div>
                            </div>
                        </ul>
                    </li>
                    <li class="dropdown grid">
                        <a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Special Offers <b
                                class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <h4>By Relation</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="products.html">Friend</a></li>
                                        <li><a class="list" href="products.html">Lover</a></li>
                                        <li><a class="list" href="products.html">Sister</a></li>
                                        <li><a class="list" href="products.html">Brother</a></li>
                                        <li><a class="list" href="products.html">Kids</a></li>
                                        <li><a class="list" href="products.html">Parents</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h4>By Flavour</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="products.html">Chocolate</a></li>
                                        <li><a class="list" href="products.html">Mixed Fruit</a></li>
                                        <li><a class="list" href="products.html">Butterscotch</a></li>
                                        <li><a class="list" href="products.html">Strawberry</a></li>
                                        <li><a class="list" href="products.html">Vanilla</a></li>
                                        <li><a class="list" href="products.html">Eggless Cakes</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h4>By Theme</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="products.html">Heart shaped</a></li>
                                        <li><a class="list" href="products.html">Cartoon Cakes</a></li>
                                        <li><a class="list" href="products.html">2-3 Tier Cakes</a></li>
                                        <li><a class="list" href="products.html">Square shape</a></li>
                                        <li><a class="list" href="products.html">Round shape</a></li>
                                        <li><a class="list" href="products.html">Photo cakes</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h4>Weight</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="products.html">1 kG</a></li>
                                        <li><a class="list" href="products.html">1.5 kG</a></li>
                                        <li><a class="list" href="products.html">2 kG</a></li>
                                        <li><a class="list" href="products.html">3 kG</a></li>
                                        <li><a class="list" href="products.html">4 kG</a></li>
                                        <li><a class="list" href="products.html">Large</a></li>
                                    </ul>
                                </div>
                            </div>
                        </ul>
                    </li>
                    <li class="dropdown grid">
                        <a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Store<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="col-sm-4">
                                    <h4>By Relation</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="products.html">Friend</a></li>
                                        <li><a class="list" href="products.html">Lover</a></li>
                                        <li><a class="list" href="products.html">Sister</a></li>
                                        <li><a class="list" href="products.html">Brother</a></li>
                                        <li><a class="list" href="products.html">Kids</a></li>
                                        <li><a class="list" href="products.html">Parents</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <h4>By Flavour</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="products.html">Chocolate</a></li>
                                        <li><a class="list" href="products.html">Mixed Fruit</a></li>
                                        <li><a class="list" href="products.html">Butterscotch</a></li>
                                        <li><a class="list" href="products.html">Strawberry</a></li>
                                        <li><a class="list" href="products.html">Vanilla</a></li>
                                        <li><a class="list" href="products.html">Eggless Cakes</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <h4>Specials</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="products.html">Ice cream cake</a></li>
                                        <li><a class="list" href="products.html">Swiss roll</a></li>
                                        <li><a class="list" href="products.html">Ruske kape</a></li>
                                        <li><a class="list" href="products.html">Cupcakes</a></li>
                                        <li><a class="list" href="products.html">Muffin</a></li>
                                        <li><a class="list" href="products.html">Merveilleux</a></li>
                                    </ul>
                                </div>
                            </div>
                        </ul>
                    </li>
                </ul>
                <!--/.navbar-collapse-->
            </div>
            <!--//navbar-header-->
        </nav>
        <div class="header-info">
            <div class="header-right search-box">
                <a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
                <div class="search">
                    <form class="navbar-form">
                        <input type="text" id="searchKey" name="searchKey" class="form-control">
                        <button type="button" class="btn btn-default" aria-label="Left Align"
                                onclick="location.href = 'products_search.html?c_id='+'${requestScope.c_id}'+'&searchKey='+document.getElementById('searchKey').value">
                            搜索
                        </button>
                    </form>
                </div>
            </div>
            <div class="header-right login">
                <a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
                <div id="loginBox">
                    <form id="loginForm">
                        <fieldset id="body">
                            <fieldset>
                                <label for="email">Email Address</label>
                                <input type="text" name="email" id="email">
                            </fieldset>
                            <fieldset>
                                <label for="password">Password</label>
                                <input type="password" name="password" id="password">
                            </fieldset>
                            <input type="submit" id="login" value="Sign in">
                            <label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
                        </fieldset>
                        <p>New User ? <a class="sign" href="WEB-INF/jsp/account.html">Sign Up</a> <span><a href="#">Forgot your password?</a></span>
                        </p>
                    </form>
                </div>
            </div>
            <div class="header-right cart">
                <a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
                <div class="cart-box">
                    <h4><a href="WEB-INF/jsp/checkout.html">
                        <span class="simpleCart_total"> ￥0.00 </span> (<span id="simpleCart_quantity"
                                                                             class="simpleCart_quantity"> 0 </span>)
                    </a></h4>
                    <p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!--//header-->
<!--products-->
<div class="products">
    <div class="container">
        <h2>Our Products</h2>
        <div class="col-md-9 product-model-sec">
            <!-- 依次显示每一个商品 -->
            <c:forEach items="${requestScope.products}" var="product">
                <!-- 下面是显示单个商品的代码块 -->
                <div class="product-grid">
                    <a href="WEB-INF/jsp/single.html?c_id=${requestScope.c_id }&p_id=${product.ID }">
                        <div class="more-product"><span> </span></div>
                        <div class="product-img b-link-stripe b-animate-go  thickbox">
                            <!-- 固定商品图片的大小，否则会引起布局混乱 -->
                            <br>
                            <img src="${product.imgPath}" height="150" width="200">
                            <div class="b-wrapper">
                                <h4 class="b-animate b-from-left  b-delay03">
                                    <button>浏览详情</button>
                                </h4>
                            </div>
                        </div>
                    </a>
                    <div class="product-info simpleCart_shelfItem">
                        <div class="product-info-cust prt_name">
                            <h4>${product.name}</h4>
                            <span class="item_price">￥${product.prize }</span>
                            <input name="numOfProducts" id=${product.ID } value=1 type="text" style="width:30px;"/>
                            <!-- 下面的代码实现url传参 -->
                            <input type="button" class="item_add items" value="购买"
                                   onclick="location.href = 'payment.html?c_id='+'${requestScope.c_id}'+'&p_id='+'${product.ID }'+'&num='+document.getElementById(${product.ID }).value">
                            <!-- 上面的代码实现url传参 -->
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <!-- 上面是显示单个商品的代码块 -->
            </c:forEach>
        </div>
        <div class="col-md-3 rsidebar span_1_of_left">
            <section class="sky-form">
                <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>ORDER BY</h4>
                <div class="row row1 scroll-pane">
                    <div class="col col-4">
                        <a href="products_price_ascending.html?c_id=${requestScope.c_id}" class="checkbox"><input
                                type="checkbox"
                                \name="checkbox"
                                checked=""><i></i>价格 升序</a>
                        <a href="products_price_descending.html?c_id=${requestScope.c_id}" class="checkbox"><input
                                type="checkbox"
                                name="checkbox"
                                checked=""><i></i>价格 降序</a>
                        <a href="products_sales_ascending.html?c_id=${requestScope.c_id}" class="checkbox"><input
                                type="checkbox"
                                name="checkbox"
                                checked=""><i></i>销量 升序</a>
                        <a href="products_sales_descending.html?c_id=${requestScope.c_id}" class="checkbox"><input
                                type="checkbox"
                                name="checkbox"
                                checked=""><i></i>销量 降序</a>
                        <a href="products_popularity_ascending.html?c_id=${requestScope.c_id}" class="checkbox"><input
                                type="checkbox"
                                name="checkbox"
                                checked=""><i></i>人气 升序</a>
                        <a href="products_popularity_descending.html?c_id=${requestScope.c_id}" class="checkbox"><input
                                type="checkbox"
                                name="checkbox"
                                checked=""><i></i>人气 降序</a>
                    </div>
                </div>
            </section>
            <section class="sky-form">
                <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>CATEGORIES</h4>
                <div class="row row1 scroll-pane">
                    <div class="col col-4">
                        <a href="products_regular_cakes.html?c_id=${requestScope.c_id}" class="checkbox"><input
                                type="checkbox"
                                \name="checkbox"
                                checked=""><i></i>Regular Cakes</a>
                        <a href="products_special_cakes.html?c_id=${requestScope.c_id}" class="checkbox"><input
                                type="checkbox"
                                \name="checkbox"
                                checked=""><i></i>Special Cakes</a>
                        <a href="products_eggless_cakes.html?c_id=${requestScope.c_id}" class="checkbox"><input
                                type="checkbox"
                                \name="checkbox"
                                checked=""><i></i>Eggless Cakes</a>
                        <a href="products_2to3_tier_cakes.html?c_id=${requestScope.c_id}" class="checkbox"><input
                                type="checkbox"
                                \name="checkbox"
                                checked=""><i></i>2-3 Tier Cakes</a>
                    </div>
                </div>
            </section>
            <section class="sky-form">
                <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>DISCOUNTS</h4>
                <div class="row row1 scroll-pane">
                    <div class="col col-4">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Upto - 10% (20)</label>
                    </div>
                    <div class="col col-4">
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>70% - 60%</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>50% - 40%</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20%</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5%</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20%</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5%</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other</label>
                    </div>
                </div>
            </section>
            <section class="sky-form">
                <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Price</h4>
                <ul class="dropdown-menu1">
                    <li><a href="">
                        <div id="slider-range"></div>
                        <input type="text" id="amount"
                               style="border: 0; font-weight: NORMAL;   font-family: 'Dosis-Regular';"/>
                    </a></li>
                </ul>
            </section>
            <script type="text/javascript" src="js/jquery-ui.min.js"></script>
            <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
            <script type='text/javascript'>//<![CDATA[
            $(window).load(function () {
                $("#slider-range").slider({
                    range: true,
                    min: 0,
                    max: 100000,
                    values: [500, 100000],
                    slide: function (event, ui) {
                        $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
                    }
                });
                $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

            });//]]>
            </script>
            <!---->
            <section class="sky-form">
                <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>By Flavour</h4>
                <div class="row row1 scroll-pane">
                    <div class="col col-4">
                        <a href="products_by_flavour.html?c_id=${requestScope.c_id}&flavour=Chocolate" class="checkbox"><input
                                type="checkbox"
                                \name="checkbox"
                                checked=""><i></i>Chocolate</a>
                        <a href="products_by_flavour.html?c_id=${requestScope.c_id}&flavour=Butterscotch"
                           class="checkbox"><input type="checkbox"
                                                   \name="checkbox"
                                                   checked=""><i></i>Butterscotch</a>
                        <a href="products_by_flavour.html?c_id=${requestScope.c_id}&flavour=Strawberry"
                           class="checkbox"><input type="checkbox"
                                                   \name="checkbox"
                                                   checked=""><i></i>Strawberry</a>
                        <a href="products_by_flavour.html?c_id=${requestScope.c_id}&flavour=Black+Forest"
                           class="checkbox"><input type="checkbox"
                                                   \name="checkbox"
                                                   checked=""><i></i>Black Forest</a>
                        <a href="products_by_flavour.html?c_id=${requestScope.c_id}&flavour=Mixed+Fruit"
                           class="checkbox"><input type="checkbox"
                                                   \name="checkbox"
                                                   checked=""><i></i>Mixed Fruit</a>
                        <a href="products_by_flavour.html?c_id=${requestScope.c_id}&flavour=Honey"
                           class="checkbox"><input type="checkbox"
                                                   \name="checkbox"
                                                   checked=""><i></i>Honey</a>
                    </div>
                </div>
            </section>
            <section class="sky-form">
                <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Weight</h4>
                <div class="row row1 scroll-pane">
                    <div class="col col-4">
                        <a href="products_by_weight.html?c_id=${requestScope.c_id}&weight=Half+KG"
                           class="checkbox"><input type="checkbox"
                                                   \name="checkbox"
                                                   checked=""><i></i>Half KG</a>
                        <a href="products_by_weight.html?c_id=${requestScope.c_id}&weight=One+KG"
                           class="checkbox"><input type="checkbox"
                                                   \name="checkbox"
                                                   checked=""><i></i>One KG</a>
                        <a href="products_by_weight.html?c_id=${requestScope.c_id}&weight=One+KG"
                           class="checkbox"><input type="checkbox"
                                                   \name="checkbox"
                                                   checked=""><i></i>Two KG</a>
                        <a href="products_by_weight.html?c_id=${requestScope.c_id}&weight=More" class="checkbox"><input
                                type="checkbox"
                                \name="checkbox"
                                checked=""><i></i>More</a>
                    </div>
                </div>
            </section>
            <section class="sky-form">
                <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Color</h4>
                <div class="row row1 scroll-pane">
                    <div class="col col-4">
                        <a href="products_by_color.html?c_id=${requestScope.c_id}&color=White" class="checkbox"><input
                                type="checkbox"
                                \name="checkbox"
                                checked=""><i></i>White</a>
                        <a href="products_by_color.html?c_id=${requestScope.c_id}&color=Pink" class="checkbox"><input
                                type="checkbox"
                                \name="checkbox"
                                checked=""><i></i>Pink</a>
                        <a href="products_by_color.html?c_id=${requestScope.c_id}&color=Gold" class="checkbox"><input
                                type="checkbox"
                                \name="checkbox"
                                checked=""><i></i>Gold</a>
                        <a href="products_by_color.html?c_id=${requestScope.c_id}&color=Silver" class="checkbox"><input
                                type="checkbox"
                                \name="checkbox"
                                checked=""><i></i>Silver</a>
                    </div>

                </div>
            </section>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!--//products-->
<!--footer-->
<div class="footer">
    <div class="container">
        <div class="footer-grids">
            <div class="col-md-2 footer-grid">
                <h4>company</h4>
                <ul>
                    <li><a href="products.html">products</a></li>
                    <li><a href="#">Work Here</a></li>
                    <li><a href="#">Team</a></li>
                    <li><a href="#">Happenings</a></li>
                    <li><a href="#">Dealer Locator</a></li>
                </ul>
            </div>
            <div class="col-md-2 footer-grid">
                <h4>service</h4>
                <ul>
                    <li><a href="#">Support</a></li>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Warranty</a></li>
                    <li><a href="WEB-INF/jsp/contact.html">Contact Us</a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid">
                <h4>order & returns</h4>
                <ul>
                    <li><a href="#">Order Status</a></li>
                    <li><a href="#">Shipping Policy</a></li>
                    <li><a href="#">Return Policy</a></li>
                    <li><a href="#">Digital Gift Card</a></li>
                </ul>
            </div>
            <div class="col-md-2 footer-grid">
                <h4>legal</h4>
                <ul>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Terms and Conditions</a></li>
                    <li><a href="#">Social Responsibility</a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid icons">
                <h4>Connect with Us</h4>
                <ul>
                    <li><a href="#"><img src="images/i1.png" alt=""/>Follow us on Facebook</a></li>
                    <li><a href="#"><img src="images/i2.png" alt=""/>Follow us on Twitter</a></li>
                    <li><a href="#"><img src="images/i3.png" alt=""/>Follow us on Google-plus</a></li>
                    <li><a href="#"><img src="images/i4.png" alt=""/>Follow us on Pinterest</a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--//footer-->
<div class="footer-bottom">
    <div class="container">
        <p>Copyright &copy; 2018.CAKESHOP.[转载请注明出处] <a href="https://my.csdn.net/qq897107499"
                                                                                    target="_blank"
                                                                                    title="访问DEMO作者主页">访问DEMO作者主页</a> - The template was collected from
            <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
</div>
</div>
</body>
</html>