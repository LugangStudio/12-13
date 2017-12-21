<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0 ,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>结算页面</title>

		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />

		<link href="basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="css/cartstyle.css" rel="stylesheet" type="text/css" />

		<link href="css/jsstyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="js/address.js"></script>
		
			<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
		<script type="text/javascript">
		$(function(){
	//var xuanze=	$('#xuanze:checked').val();
//$('#xuanze:checked').blur(function(){alert("dsa");})
	
		
		//地址级联参考：http://blog.csdn.net/u013871100/article/details/52751384
		var address = $("#user-intro");  
    var province = $("#province");  
    var city = $("#city");  
    var area = $("#area");  
    var preProvince = "<option value=\"\">选择省（市）</option>";  
    var preCity = "<option value=\"\">选择市（区）</option>";  
    var preArea = "<option value=\"\">选择区（县）</option>";  
      
    //初始化  
    province.html(preProvince);  
    city.html(preCity);  
    area.html(preArea);  
      
    //文档加载完毕:即从province_city_select_Info.xml获取数据,成功之后采用  
    //func_suc_getXmlProvice进行 省的 解析  
    $.ajax({  
        type : "GET",  
        url : "province_city_select_Info.xml",  
        success : func_suc_getXmlProvice  
    });  
      
    //省 下拉选择发生变化触发的事件  
    province.change(function() {  
        //province.val()  : 返回是每个省对应的下标,序号从0开始  
        if (province.val() != "") {  
            city.html(preCity);  
              
            //根据下拉得到的省对于的下标序号,动态从从province_city_select_Info.xml获取数据,成功之后采用  
            //func_suc_getXmlProvice进行省对应的市的解析  
            $.ajax({  
                type : "GET",  
                url : "province_city_select_Info.xml",  
                success : func_suc_getXmlCity  
            });  
              
        }  
    });  
      
    //市 下拉选择发生变化触发的事件  
    city.change(function() {  
        area.html(preArea);  
        $.ajax({  
            type : "GET",  
            url : "province_city_select_Info.xml",  
              
            //根据下拉得到的省、市对于的下标序号,动态从从province_city_select_Info.xml获取数据,成功之后采用  
            //func_suc_getXmlArea进行省对应的市对于的区的解析  
            success : func_suc_getXmlArea  
        });  
    });  
      
    //区 下拉选择发生变化触发的事件  
    area.change(function() {  
        var value = province.find("option:selected").text()  
                + city.find("option:selected").text()  
                + area.find("option:selected").text();  
        $("#user-intro").text(value);  
    });  
      
    //解析获取xml格式文件中的prov标签,得到所有的省,并逐个进行遍历 放进下拉框中  
    function func_suc_getXmlProvice(xml) {  
        //jquery的查找功能  
        var sheng = $(xml).find("prov");  
          
        //jquery的遍历与查询匹配 eq功能,并将其放到下拉框中  
        sheng.each(function(i) {  
            province.append("<option value=" + i + ">"  
                    + sheng.eq(i).attr("text") + "</option>");  
        });  
    }  
      
    function func_suc_getXmlCity(xml) {  
        var xml_sheng = $(xml).find("prov");  
        var pro_num = parseInt(province.val());  
        var xml_shi = xml_sheng.eq(pro_num).find("city");  
        xml_shi.each(function(j) {  
            city.append("<option  value=" + j + ">"  
                    + xml_shi.eq(j).attr("text") + "</option>");  
        });  
    }  
      
    function func_suc_getXmlArea(xml) {  
        var xml_sheng = $(xml).find("prov");  
        var pro_num = parseInt(province.val());  
        var xml_shi = xml_sheng.eq(pro_num).find("city");  
        var city_num = parseInt(city.val());  
        var xml_xianqu = xml_shi.eq(city_num).find("county");  
        xml_xianqu.each(function(k) {  
            area.append("<option  value=" + k + ">"  
                    + xml_xianqu.eq(k).attr("text") + "</option>");  
        });  
    }  
 	
 //以上地址级联	
 	//下面开始新增地址AJAX
 	
  	$("#save").click(function(){
 	var phone=$("#receiver-phone").val();
 	var name=$("#receiver-phone").val();
 	var province = $("#province").find("option:selected").text();  
    var city = $("#city").find("option:selected").text(); 
    var area = $("#area").find("option:selected").text();
    var userid=${user.userId};
    var address=$("#user-intro").val();
   	
   	var obj={"userId":userid,"receiverName":name,"receiverPhone":phone,"receiverState":province,
   	"receiverCity":city,"receiverDistrict":area,"receiverAddress":address};
   	
   	$.ajax({
   	type:'POST',
   	url:'${pageContext.request.contextPath}/insertshipping.action',
   	data:JSON.stringify(obj),
   	dataType:'json',
   	contentType:'application/json;charset=utf-8',
   	success:function(data){
   	
   	}
   	})
 	
 	}) 
 	
 	
 	
 	
 	//以上新增地址AJAX
 	var num=$("#text_box").val();
			var kucun=${item.num};
			var temp=num*${item.price};
			$("#totalprice").text(temp);
			$("#heji").text(temp);
			$("#J_ActualFee").text(temp);
			
			$("#add").click(
			function(){
			var num=$("#text_box").val();
			num++;
			var temp=num*${item.price};
			$("#totalprice").text(temp);
			$("#heji").text(temp);
			$("#J_ActualFee").text(temp);
			});
			
			$("#jian").click(
			function(){
			var num=$("#text_box").val();
			num--;
			var temp=num*${item.price};
			$("#totalprice").text(temp);
			$("#heji").text(temp);
			$("#J_ActualFee").text(temp);
			});
			
			$("#holyshit269").click(
			function(){
			var buyid=${user.userId};
			var sellid=${item.userId};
			var payment=$("#heji").text();
			var num=$("#text_box").val();
			var message=$("#message").val();
			var kucun=${item.num};
			
			var receiverid=	$('#xuanze:checked').val();
			
			
			var obj={"shippingId":receiverid,"buyerMessage":message,"payment":payment,"buyerId":buyid,"sellerId":sellid};
			if(num>kucun){
			alert("数量不能超过库存，请重新选择！！");}
			else{
			 $.ajax({
				 	type:'POST',
   	url:'${pageContext.request.contextPath}/insertOrder.action',
   	data:JSON.stringify(obj),
   	dataType:'json',
   	contentType:'application/json;charset=utf-8',
   	success:function(data){
   	alert(data);
   	}
			}) 

			}
			})
		
		
		})
		</script>

	</head>

	<body>

		<!--顶部导航条 -->
		<div class="am-container header">
			<ul class="message-l">
				<div class="topMessage">
					<div class="menu-hd">
${user.username}					</div>
				</div>
			</ul>
			<ul class="message-r">
				<div class="topMessage home">
					<div class="menu-hd"><a href="#" target="_top" class="h">商城首页</a></div>
				</div>
				<div class="topMessage my-shangcheng">
					<div class="menu-hd MyShangcheng"><a href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
				</div>
				<div class="topMessage mini-cart">
					<div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
				</div>
				<div class="topMessage favorite">
					<div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
			</ul>
			</div>

			<!--悬浮搜索框-->

			<div class="nav white">
				<div class="logo"><img src="images/logo.png" /></div>
				<div class="logoBig">
					<li><img src="images/logobig.png" /></li>
				</div>

				<div class="search-bar pr">
					<a name="index_none_header_sysc" href="#"></a>
					<form>
						<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
						<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
					</form>
				</div>
			</div>

			<div class="clear"></div>
			<div class="concent">
				<!--地址 -->
				<div class="paycont">
					<div class="address">
						<h3>
						确认收货地址
						</h3>
						<div class="control">
							<div class="tc-btn createAddr theme-login am-btn am-btn-danger">使用新地址</div>
						</div>
						<div class="clear"></div>
						<ul>
							<c:forEach items="${shippings}" var="var">
							<div class="per-border"></div>
							<li class="user-addresslist" >
								<div class="address-left">
									<div class="user DefaultAddr">
	<span class="buy-address-detail">   
                   <span class="buy-user" id="recn">${var.receiverName}</span>
										<span class="buy-phone">${var.receiverPhone}</span>
										</span>
									</div>
									<div class="default-address DefaultAddr">
										<span class="buy-line-title buy-line-title-type">收货地址：</span>
										<span class="buy--address-detail">
								   <span class="provinces">${var.receiverState}</span>
										<span class="city">${var.receiverCity}</span>
										<span class="dist">${var.receiverDistrict}</span>
										<span class="street">${var.receiverAddress}</span>
										</span>

										</span>
									</div>
									<ins class="deftip hidden">默认地址</ins>
								</div>
								<div class="address-right">
									<span class="am-icon-angle-right am-icon-lg"></span>
								</div>
								<div class="clear"></div>

								<div class="new-addr-btn">
								<input type="checkbox" id="xuanze" value="${var.receiverId}" >选择此地址</input>
									
									<span class="new-addr-bar">|</span>
									<a href="#">编辑</a>
									<span class="new-addr-bar">|</span>
									<a href="javascript:void(0);"  onclick="delClick(this);">删除</a>
								</div>

							</li>
							
</c:forEach>
						</ul>

						<div class="clear"></div>
					</div>
					<!--物流 -->
					<div class="logistics">
						<h3>选择物流方式</h3>
						<ul class="op_express_delivery_hot">
							<li data-value="yuantong" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position:0px -468px"></i>圆通<span></span></li>
							<li data-value="shentong" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position:0px -1008px"></i>申通<span></span></li>
							<li data-value="yunda" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position:0px -576px"></i>韵达<span></span></li>
							<li data-value="zhongtong" class="OP_LOG_BTN op_express_delivery_hot_last "><i class="c-gap-right" style="background-position:0px -324px"></i>中通<span></span></li>
							<li data-value="shunfeng" class="OP_LOG_BTN  op_express_delivery_hot_bottom"><i class="c-gap-right" style="background-position:0px -180px"></i>顺丰<span></span></li>
						</ul>
					</div>
					<div class="clear"></div>

					<!--支付方式-->
					<div class="logistics">
						<h3>选择支付方式</h3>
						<ul class="pay-list">
							<li class="pay card"><img src="images/wangyin.jpg" />银联<span></span></li>
							<li class="pay qq"><img src="images/weizhifu.jpg" />微信<span></span></li>
							<li class="pay taobao"><img src="images/zhifubao.jpg" />支付宝<span></span></li>
						</ul>
					</div>
					<div class="clear"></div>

					<!--订单 -->
					<div class="concent">
						<div id="payTable">
							<h3>确认订单信息</h3>
							<div class="cart-table-th">
								<div class="wp">

									<div class="th th-item">
										<div class="td-inner">商品信息</div>
									</div>
									<div class="th th-price">
										<div class="td-inner">单价</div>
									</div>
									<div class="th th-amount">
										<div class="td-inner">数量</div>
									</div>
									<div class="th th-sum">
										<div class="td-inner">金额</div>
									</div>
									<div class="th th-oplist">
										<div class="td-inner">配送方式</div>
									</div>

								</div>
							</div>
							<div class="clear"></div>

							<tr class="item-list">
								<div class="bundle  bundle-last">

									<div class="bundle-main">
										<ul class="item-content clearfix">
											<div class="pay-phone">
												<li class="td td-item">
													<div class="item-pic">
														<a href="#" class="J_MakePoint">
															<img src="images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg"></a>
													</div>
													<div class="item-info">
														<div class="item-basic-info">
															<a href="#" class="item-title J_MakePoint" data-point="tbcart.8.11">${item.title}</a>
														</div>
													</div>
												</li>
												<li class="td td-info">
													<div class="item-props">
														<span class="sku-line">颜色：12#川南玛瑙</span>
														<span class="sku-line">包装：裸装</span>
													</div>
												</li>
												<li class="td td-price">
													<div class="item-price price-promo-promo">
														<div class="price-content">
															<em class="J_Price price-now">${item.price}</em>
														</div>
													</div>
												</li>
											</div>
											<li class="td td-amount">
												<div class="amount-wrapper ">
													<div class="item-amount ">
														<span class="phone-title">购买数量</span>
														<div class="sl">
															<input id="jian" class="min am-btn" name="" type="button" value="-" />
															<input id="text_box" class="text_box" name="" type="text" value="${num}" style="width:30px;"  />
															<input id="add" class="add am-btn" name="" type="button" value="+" />
														</div>
													</div>
												</div>
											</li>
											<li class="td td-sum">
												<div class="td-inner">
													<em tabindex="0" class="J_ItemSum number" id="totalprice"></em>
												</div>
											</li>
											<li class="td td-oplist">
												<div class="td-inner">
													<span class="phone-title">配送方式</span>
													<div class="pay-logis">
														快递<b class="sys_item_freprice">10</b>元
													</div>
												</div>
											</li>

										</ul>
										<div class="clear"></div>

									</div>
							</tr>
							<div class="clear"></div>
							</div>
							</div>
							<div class="clear"></div>
							<div class="pay-total">
						<!--留言-->
							<div class="order-extra">
								<div class="order-user-info">
									<div id="holyshit257" class="memo">
										<label>买家留言：</label>
										<input id="message" type="text" title="选填,对本次交易的说明（建议填写已经和卖家达成一致的说明）" placeholder="选填,建议填写和卖家达成一致的说明" class="memo-input J_MakePoint c2c-text-default memo-close">
										<div class="msg hidden J-msg">
											<p class="error">最多输入500个字符</p>
										</div>
									</div>
								</div>

							</div>
							<!--优惠券 -->
							<div class="buy-agio">
								<li class="td td-coupon">

									<span class="coupon-title">优惠券</span>
									<select data-am-selected>
										<option value="a">
											<div class="c-price">
												<strong>￥8</strong>
											</div>
											<div class="c-limit">
												【消费满95元可用】
											</div>
										</option>
										<option value="b" selected>
											<div class="c-price">
												<strong>￥3</strong>
											</div>
											<div class="c-limit">
												【无使用门槛】
											</div>
										</option>
									</select>
								</li>

								<li class="td td-bonus">

									<span class="bonus-title">红包</span>
									<select data-am-selected>
										<option value="a">
											<div class="item-info">
												¥50.00<span>元</span>
											</div>
											<div class="item-remainderprice">
												<span>还剩</span>10.40<span>元</span>
											</div>
										</option>
										<option value="b" selected>
											<div class="item-info">
												¥50.00<span>元</span>
											</div>
											<div class="item-remainderprice">
												<span>还剩</span>50.00<span>元</span>
											</div>
										</option>
									</select>

								</li>

							</div>
							<div class="clear"></div>
							</div>
							<!--含运费小计 -->
							<div class="buy-point-discharge ">
								<p class="price g_price ">
									合计（含运费） <span>¥</span><em class="pay-sum" id="heji"></em>
								</p>
							</div>

							<!--信息 -->
							<div class="order-go clearfix">
								<div class="pay-confirm clearfix">
									<div class="box">
										<div tabindex="0" id="holyshit267" class="realPay"><em class="t" >实付款：</em>
											<span class="price g_price ">
                                    <span>¥</span> <em class="style-large-bold-red " id="J_ActualFee"></em>
											</span>
										</div>

										<div id="holyshit268" class="pay-address">

											<p class="buy-footer-address">
												<span class="buy-line-title buy-line-title-type">寄送至：</span>
												<span class="buy--address-detail">
								   <span class="provinces">湖北</span>省
												<span class="city">武汉</span>市
												<span class="dist">洪山</span>区
												<span class="street">雄楚大道666号(中南财经政法大学)</span>
												</span>
												</span>
											</p>
											<p class="buy-footer-address">
												<span class="buy-line-title">收货人：</span>
												<span class="buy-address-detail">   
                                         <span class="buy-user">艾迪 </span>
												<span class="buy-phone">15871145629</span>
												</span>
											</p>
										</div>
									</div>

									<div id="holyshit269" class="submitOrder">
										<div class="go-btn-wrap">
											<a id="J_Go"  class="btn-go" tabindex="0" title="点击此按钮，提交订单">提交订单</a>
										</div>
									</div>
									<div class="clear"></div>
								</div>
							</div>
						</div>

						<div class="clear"></div>
					</div>
				</div>
				<div class="footer">
					<div class="footer-hd">
						<p>
							<a href="#">恒望科技</a>
							<b>|</b>
							<a href="#">商城首页</a>
							<b>|</b>
							<a href="#">支付宝</a>
							<b>|</b>
							<a href="#">物流</a>
						</p>
					</div>
					<div class="footer-bd">
						<p>
							<a href="#">关于恒望</a>
							<a href="#">合作伙伴</a>
							<a href="#">联系我们</a>
							<a href="#">网站地图</a>
							<em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></em>
						</p>
					</div>
				</div>
			</div>
			<div class="theme-popover-mask"></div>
			<div class="theme-popover">

				<!--标题 -->
				<div class="am-cf am-padding">
					<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add address</small></div>
				</div>
				<hr/>

				<div class="am-u-md-12">
					<form class="am-form am-form-horizontal">

						<div class="am-form-group">
							<label for="user-name" class="am-form-label">收货人</label>
							<div class="am-form-content">
								<input type="text" id="receiver-name" placeholder="收货人">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-form-label">手机号码</label>
							<div class="am-form-content">
								<input id="receiver-phone" placeholder="手机号必填" type="email">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-form-label">所在地</label>
							<div class="am-form-content address">
								 <select id="province" name="province">  
    </select> 
								<select data-am-selected   id="city" name="city" >
									
								</select>
								<select data-am-selected id="area" name="area">
								
								</select>
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-intro" class="am-form-label">详细地址</label>
							<div class="am-form-content">
								<textarea class="" rows="3" id="user-intro" placeholder="输入详细地址"></textarea>
								<small>100字以内写出你的详细地址...</small>
							</div>
						</div>

						<div class="am-form-group theme-poptit">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<div class="am-btn am-btn-danger close" id="save">保存</div>
								<div class="am-btn am-btn-danger close" >取消</div>
							</div>
						</div>
					</form>
				</div>

			</div>

			<div class="clear"></div>
	</body>

</html>