<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>首页</title>

		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />

		<link href="basic/css/demo.css" rel="stylesheet" type="text/css" />

		<link href="css/hmstyle.css" rel="stylesheet" type="text/css" />
		<script src="AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
   
	</head>

	<body>
		<div class="hmtop">
			<!--顶部导航条 -->
			<div class="am-container header">
				<ul class="message-l">
					<div class="topMessage">
						<div class="menu-hd">
							<a href="login.action" target="_top" class="h"></a>
							<a href="register.action" target="_top">${user.username}</a>
						</div>
					</div>
				</ul>
				<ul class="message-r">
					<div class="topMessage home">
						<div class="menu-hd"><a href="home2.action" target="_top" class="h">商城首页</a></div>
					</div>
					<div class="topMessage my-shangcheng">
						<div class="menu-hd MyShangcheng"><a href="personindexcon.action?username=${user.username}" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
					</div>
					<div class="topMessage mini-cart">
						
					</div>
					<div class="topMessage favorite">
						<div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
				</ul>
				</div>

				<!--悬浮搜索框-->

				<div class="nav white">
					<div class="logo"><div class="menu-hd"><a id="mc-menu-hd" href="shopcart.action" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div><img src="images/logo.png" /></div>
					<div class="logoBig">
						<li><img src="images/logobig.png" /></li>
					</div>

					<div class="search-bar pr">
						<a name="index_none_header_sysc" href="search.action"></a>
						<form action="tosearch.action">
						<input type="hidden" name="userID" value="${userId}"/>
							<input id="searchInput" name="item_title" type="text" placeholder="搜索" autocomplete="off">
							<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
						</form>
					</div>
				</div>

				<div class="clear"></div>
			</div>
             <b class="line"></b>
			<div class="shopNav">
				<div class="slideall" style="height: auto;">
			        
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="home2.action">首页</a></li>
                                <li class="qc"><a href="">二手手机</a></li>
                                <li class="qc"><a href="#">易卖估价</a></li>
                                <li class="qc"><a href="login.action">发布闲置</a></li>
                                <li class="qc last"><a href="#">我的闲置</a></li>
							</ul>
						    
						</div>
                
			    <div class="bannerTwo">
                      <!--轮播 -->
						<div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
							<ul class="am-slides">
								<li class="banner1"><a href="introduction.action"><img src="images/ad5.jpg" /></a></li>
								<li class="banner2"><a><img src="images/ad6.jpg" /></a></li>
								<li class="banner3"><a><img src="images/ad7.jpg" /></a></li>
								<li class="banner4"><a><img src="images/ad8.jpg" /></a></li>
							</ul>
						</div>
						<div class="clear"></div>	
			    </div>

						<!--侧边导航 -->
						<div id="nav" class="navfull" style="position: static;">
							<div class="area clearfix">
								<div class="category-content" id="guide_2">
									
									<div class="category" style="box-shadow:none ;margin-top: 2px;">
										<ul class="category-list navTwo" id="js_climit_li">
											<li>
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/cake.png"></i><a class="ml-22" title="点心">手机</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="全部手机">全部手机</span></dt>
																		<dd><a title="iPhone" href="#"><span>iPhone</span></a></dd>
																		<dd><a title="小米" href="#"><span>小米</span></a></dd>
																		<dd><a title="华为" href="#"><span>华为</span></a></dd>
																		<dd><a title="OPPO" href="#"><span>OPPO</span></a></dd>
																		<dd><a title="vivo" href="#"><span>vivo</span></a></dd>
																		<dd><a title="三星" href="#"><span>三星</span></a></dd>
																		<dd><a title="魅族" href="#"><span>魅族</span></a></dd>
																		<dd><a title="诺基亚" href="#"><span>诺基亚</span></a></dd>
																		<dd><a title="努比亚" href="#"><span>努比亚</span></a></dd>
																		<dd><a title="锤子" href="#"><span>锤子</span></a></dd>
																		<dd><a title="一加" href="#"><span>一加</span></a></dd>
																		<dd><a title="htc" href="#"><span>htc</span></a></dd>
																		<dd><a title="美图" href="#"><span>美图</span></a></dd>
																		<dd><a title="索尼" href="#"><span>索尼</span></a></dd>
																		<dd><a title="乐视" href="#"><span>乐视</span></a></dd>
																		<dd><a title="联想" href="#"><span>联想</span></a></dd>
																		<dd><a title="酷派" href="#"><span>酷派</span></a></dd>
																		<dd><a title="中兴" href="#"><span>中兴</span></a></dd>
																		<dd><a title="摩托罗拉" href="#"><span>摩托罗拉</span></a></dd>
																		<dd><a title="LG" href="#"><span>LG</span></a></dd>
																		<dd><a title="金立" href="#"><span>金立</span></a></dd>
																		<dd><a title="黑莓" href="#"><span>黑莓</span></a></dd>
																		<dd><a title="其他手机品牌" href="#"><span>其他手机品牌</span></a></dd>
																		<dd><a title="手机配件" href="#"><span>手机配件</span></a></dd>
																		
																	</dl>
																	

																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="呵官方旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >呵官方旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="格瑞旗舰店" target="_blank" href="#" rel="nofollow"><span >格瑞旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="飞彦大厂直供" target="_blank" href="#" rel="nofollow"><span  class="red" >飞彦大厂直供</span></a></dd>
																		<dd><a rel="nofollow" title="红e·艾菲妮" target="_blank" href="#" rel="nofollow"><span >红e·艾菲妮</span></a></dd>
																		<dd><a rel="nofollow" title="本真旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >本真旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="杭派女装批发网" target="_blank" href="#" rel="nofollow"><span  class="red" >杭派女装批发网</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
											<b class="arrow"></b>	
											</li>
											<li >
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/cookies.png"></i><a class="ml-22" title="饼干、膨化">数码</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="精选数码">精选数码</span></dt>
																		<dd><a title="摄影器材" href="#"><span>摄影器材</span></a></dd>
																		<dd><a title="耳机" href="#"><span>耳机</span></a></dd>
																		<dd><a title="mp3/mp4" href="#"><span>mp3/mp4</span></a></dd>
																		<dd><a title="游戏机及配件" href="#"><span>游戏机及配件</span></a></dd>
																		<dd><a title="游戏软件" href="#"><span>游戏软件</span></a></dd>
																		<dd><a title="音箱/音响" href="#"><span>音箱/音响</span></a></dd>
																		<dd><a title="移动电源" href="#"><span>移动电源</span></a></dd>
																		<dd><a title="智能穿戴" href="#"><span>智能穿戴</span></a></dd>
																		<dd><a title="其他智能设备" href="#"><span>其他智能设备</span></a></dd><dd><a title="游戏软件" href="#"><span>游戏软件</span></a></dd>
																		<dd><a title="kindle/电子书" href="#"><span>kindle/电子书</span></a></dd>
																		<dd><a title="存储设备" href="#"><span>存储设备</span></a></dd>
																		<dd><a title="其他数码" href="#"><span>其他数码</span></a></dd>
																	</dl>
																	
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="YYKCLOT" target="_blank" href="#" rel="nofollow"><span  class ="red" >YYKCLOT</span></a></dd>
																		<dd><a rel="nofollow" title="池氏品牌男装" target="_blank" href="#" rel="nofollow"><span  class ="red" >池氏品牌男装</span></a></dd>
																		<dd><a rel="nofollow" title="男装日志" target="_blank" href="#" rel="nofollow"><span >男装日志</span></a></dd>
																		<dd><a rel="nofollow" title="索比诺官方旗舰店" target="_blank" href="#" rel="nofollow"><span >索比诺官方旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="onTTno傲徒" target="_blank" href="#" rel="nofollow"><span  class ="red" >onTTno傲徒</span></a></dd>
																		<dd><a rel="nofollow" title="玛狮路男装旗舰店" target="_blank" href="#" rel="nofollow"><span >玛狮路男装旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="劳威特品牌男装" target="_blank" href="#" rel="nofollow"><span >劳威特品牌男装</span></a></dd>
																		<dd><a rel="nofollow" title="卡斯郎世家批发城" target="_blank" href="#" rel="nofollow"><span  class ="red" >卡斯郎世家批发城</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
											<li >
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/meat.png"></i><a class="ml-22" title="熟食、肉类">服装鞋帽</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="男士专区">男士专区</span></dt>
																		<dd><a title="上衣" href="#"><span>上衣</span></a></dd>
																		<dd><a title="裤子" href="#"><span>裤子</span></a></dd>
																		<dd><a title="男鞋" href="#"><span>男鞋</span></a></dd>
																		<dd><a title="男包" href="#"><span>男包</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="女士专区">女士专区</span></dt>
																		<dd><a title="上衣" href="#"><span>上衣</span></a></dd>
																		<dd><a title="裤子" href="#"><span>裤子</span></a></dd>
																		<dd><a title="裙子" href="#"><span>裙子</span></a></dd>
																		<dd><a title="套装" href="#"><span>套装</span></a></dd>
																		<dd><a title="女鞋" href="#"><span>女鞋</span></a></dd>
																		<dd><a title="女包" href="#"><span>男包</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="其他分类">其他分类</span></dt>
																		<dd><a title="行李箱" href="#"><span>行李箱</span></a></dd>
																		<dd><a title="配饰" href="#"><span>配饰</span></a></dd>
																		<dd><a title="运动鞋服" href="#"><span>运动鞋服</span></a></dd>
																		<dd><a title="其他服装" href="#"><span>其他服装</span></a></dd>
																	</dl>
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="花颜巧语 " target="_blank" href="#" rel="nofollow"><span  class="red" >花颜巧语 </span></a></dd>
																		<dd><a rel="nofollow" title="糖衣小屋" target="_blank" href="#" rel="nofollow"><span >糖衣小屋</span></a></dd>
																		<dd><a rel="nofollow" title="卡拉迪克  " target="_blank" href="#" rel="nofollow"><span  class="red" >卡拉迪克  </span></a></dd>
																		<dd><a rel="nofollow" title="暖春童话 " target="_blank" href="#" rel="nofollow"><span >暖春童话 </span></a></dd>
																		<dd><a rel="nofollow" title="华盛童装批发行 " target="_blank" href="#" rel="nofollow"><span >华盛童装批发行 </span></a></dd>
																		<dd><a rel="nofollow" title="奈仕华童装旗舰店" target="_blank" href="#" rel="nofollow"><span >奈仕华童装旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="斑蒂尼BONDYNI" target="_blank" href="#" rel="nofollow"><span  class="red" >斑蒂尼BONDYNI</span></a></dd>
																		<dd><a rel="nofollow" title="猫儿朵朵 " target="_blank" href="#" rel="nofollow"><span >猫儿朵朵 </span></a></dd>
																		<dd><a rel="nofollow" title="童衣阁" target="_blank" href="#" rel="nofollow"><span  class="red" >童衣阁</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                            <b class="arrow"></b>
											</li>
											<li >
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/bamboo.png"></i><a class="ml-22" title="素食、卤味">交通工具</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="全部交通工具">全部交通工具</span></dt>
																		<dd><a title="摩托车" href="#"><span>摩托车</span></a></dd>
																		<dd><a title="电动车" href="#"><span>电动车</span></a></dd>
																		<dd><a title="自行车" href="#"><span>自行车</span></a></dd>
																		<dd><a title="平衡车/体感车" href="#"><span>平衡车/体感车</span></a></dd>
																		<dd><a title="摩托车/电动车配件" href="#"><span>摩托车/电动车配件</span></a></dd>
																		<dd><a title="自行车配件" href="#"><span>自行车配件</span></a></dd>
																		<dd><a title="汽车用品" href="#"><span>汽车用品</span></a></dd>
																		<dd><a title="汽车配件" href="#"><span>汽车配件</span></a></dd>
																		<dd><a title="其他代步工具" href="#"><span>其他代步工具</span></a></dd>
																	</dl>
																	
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="歌芙品牌旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >歌芙品牌旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="爱丝蓝内衣厂" target="_blank" href="#" rel="nofollow"><span >爱丝蓝内衣厂</span></a></dd>
																		<dd><a rel="nofollow" title="香港优蓓尔防辐射" target="_blank" href="#" rel="nofollow"><span >香港优蓓尔防辐射</span></a></dd>
																		<dd><a rel="nofollow" title="蓉莉娜内衣批发" target="_blank" href="#" rel="nofollow"><span >蓉莉娜内衣批发</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
											<li >
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/nut.png"></i><a class="ml-22" title="坚果、炒货">母婴用品</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="全部母婴用品">全部母婴用品</span></dt>
																		<dd><a title="婴幼服饰" href="#"><span>婴幼服饰</span></a></dd>
																		<dd><a title="童车童床" href="#"><span>童车童床</span></a></dd>
																		<dd><a title="玩具图书" href="#"><span>玩具图书</span></a></dd>
																		<dd><a title="尿裤湿巾" href="#"><span>尿裤湿巾</span></a></dd>
																		<dd><a title="安全座椅" href="#"><span>安全座椅</span></a></dd>
																		<dd><a title="奶粉辅食" href="#"><span>奶粉辅食</span></a></dd>
																		<dd><a title="喂养用具" href="#"><span>喂养用具</span></a></dd>
																		<dd><a title="孕妈用品" href="#"><span>孕妈用品</span></a></dd>
																		<dd><a title="洗护用品" href="#"><span>洗护用品</span></a></dd>
																		<dd><a title="其他母婴用品" href="#"><span>其他母婴用品</span></a></dd>
																	</dl>
																	
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="呵呵嘿官方旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >呵呵嘿官方旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="格瑞旗舰店" target="_blank" href="#" rel="nofollow"><span >格瑞旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="飞彦大厂直供" target="_blank" href="#" rel="nofollow"><span  class="red" >飞彦大厂直供</span></a></dd>
																		<dd><a rel="nofollow" title="红e·艾菲妮" target="_blank" href="#" rel="nofollow"><span >红e·艾菲妮</span></a></dd>
																		<dd><a rel="nofollow" title="本真旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >本真旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="杭派女装批发网" target="_blank" href="#" rel="nofollow"><span  class="red" >杭派女装批发网</span></a></dd>
																		<dd><a rel="nofollow" title="华伊阁旗舰店" target="_blank" href="#" rel="nofollow"><span >华伊阁旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="独家折扣旗舰店" target="_blank" href="#" rel="nofollow"><span >独家折扣旗舰店</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
												<b class="arrow"></b>
											</li>
											<li >
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/candy.png"></i><a class="ml-22" title="糖果、蜜饯">家电用器</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="全部家电">全部家电</span></dt>
																		<dd><a title="电视机" href="#"><span>电视机</span></a></dd>
																		<dd><a title="洗衣机" href="#"><span>洗衣机</span></a></dd>
																		<dd><a title="冰箱" href="#"><span>冰箱</span></a></dd>
																		<dd><a title="空调" href="#"><span>空调</span></a></dd>
																		<dd><a title="热水器" href="#"><span>热水器</span></a></dd>
																		<dd><a title="厨房电器" href="#"><span>厨房电器</span></a></dd>
																		<dd><a title="生活小家电" href="#"><span>生活小家电</span></a></dd>
																		<dd><a title="其他家电" href="#"><span>其他家电</span></a></dd>
																	</dl>
																	
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="YYKCLOT" target="_blank" href="#" rel="nofollow"><span  class ="red" >YYKCLOT</span></a></dd>
																		<dd><a rel="nofollow" title="池氏品牌男装" target="_blank" href="#" rel="nofollow"><span  class ="red" >池氏品牌男装</span></a></dd>
																		<dd><a rel="nofollow" title="男装日志" target="_blank" href="#" rel="nofollow"><span >男装日志</span></a></dd>
																		<dd><a rel="nofollow" title="索比诺官方旗舰店" target="_blank" href="#" rel="nofollow"><span >索比诺官方旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="onTTno傲徒" target="_blank" href="#" rel="nofollow"><span  class ="red" >onTTno傲徒</span></a></dd>
																		<dd><a rel="nofollow" title="卡斯郎世家批发城" target="_blank" href="#" rel="nofollow"><span  class ="red" >卡斯郎世家批发城</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                            <b class="arrow"></b>
											</li>
											<li >
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/chocolate.png"></i><a class="ml-22" title="巧克力">家具</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="全部家居家具">全部家居家具</span></dt>
																		<dd><a title="沙发" href="#"><span>沙发</span></a></dd>
																		<dd><a title="床/床垫" href="#"><span>床/床垫</span></a></dd>
																		<dd><a title="柜子" href="#"><span>柜子</span></a></dd>
																		<dd><a title="桌子/茶几" href="#"><span>桌子/茶几</span></a></dd>
																		<dd><a title="椅子/凳子" href="#"><span>椅子/凳子</span></a></dd>
																		<dd><a title="家装软饰" href="#"><span>家装软饰</span></a></dd>
																		<dd><a title="家纺" href="#"><span>家纺</span></a></dd>
																		<dd><a title="照明灯具" href="#"><span>照明灯具</span></a></dd>
																		<dd><a title="厨房卫浴" href="#"><span>厨房卫浴</span></a></dd>
																		<dd><a title="衣架/架子" href="#"><span>衣架/架子</span></a></dd>
																		<dd><a title="其他家居家具" href="#"><span>其他家居家具</span></a></dd>
																	</dl>
																	
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="花颜巧语 " target="_blank" href="#" rel="nofollow"><span  class="red" >花颜巧语 </span></a></dd>
																		<dd><a rel="nofollow" title="糖衣小屋" target="_blank" href="#" rel="nofollow"><span >糖衣小屋</span></a></dd>
																		<dd><a rel="nofollow" title="卡拉迪克  " target="_blank" href="#" rel="nofollow"><span  class="red" >卡拉迪克  </span></a></dd>
																		<dd><a rel="nofollow" title="暖春童话 " target="_blank" href="#" rel="nofollow"><span >暖春童话 </span></a></dd>
																		<dd><a rel="nofollow" title="华盛童装批发行 " target="_blank" href="#" rel="nofollow"><span >华盛童装批发行 </span></a></dd>
																		<dd><a rel="nofollow" title="奈仕华童装旗舰店" target="_blank" href="#" rel="nofollow"><span >奈仕华童装旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="斑蒂尼BONDYNI" target="_blank" href="#" rel="nofollow"><span  class="red" >斑蒂尼BONDYNI</span></a></dd>
																		<dd><a rel="nofollow" title="童衣阁" target="_blank" href="#" rel="nofollow"><span  class="red" >童衣阁</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
												<b class="arrow"></b>
											</li>
											<li >
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/fish.png"></i><a class="ml-22" title="海味、河鲜">电脑/平板电脑</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="全部电脑">全部电脑</span></dt>
																		<dd><a title="笔记本" href="#"><span>笔记本</span></a></dd>
																		<dd><a title="台式机" href="#"><span>台式机</span></a></dd>
																		<dd><a title="电脑配件" href="#"><span>电脑配件</span></a></dd>
																		<dd><a title="外设产品" href="#"><span>外设产品</span></a></dd>
																		<dd><a title="网络设备" href="#"><span>网络设备</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="全部平板电脑">全部平板电脑</span></dt>
																		<dd><a title="苹果平板" href="#"><span>苹果平板</span></a></dd>
																		<dd><a title="三星平板" href="#"><span>三星平板</span></a></dd>
																		<dd><a title="小米平板" href="#"><span>小米平板</span></a></dd>
																		<dd><a title="华为平板" href="#"><span>华为平板</span></a></dd>
																		<dd><a title="戴尔平板" href="#"><span>戴尔平板</span></a></dd>
																		<dd><a title="其他" href="#"><span>其他</span></a></dd>
																	</dl>
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="歌芙品牌旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >歌芙品牌旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="爱丝蓝内衣厂" target="_blank" href="#" rel="nofollow"><span >爱丝蓝内衣厂</span></a></dd>
																		<dd><a rel="nofollow" title="炫点服饰" target="_blank" href="#" rel="nofollow"><span >炫点服饰</span></a></dd>
																		<dd><a rel="nofollow" title="雪茵美内衣厂批发" target="_blank" href="#" rel="nofollow"><span >雪茵美内衣厂批发</span></a></dd>
																		<dd><a rel="nofollow" title="金钻夫人" target="_blank" href="#" rel="nofollow"><span >金钻夫人</span></a></dd>
																		<dd><a rel="nofollow" title="伊美莎内衣" target="_blank" href="#" rel="nofollow"><span  class="red" >伊美莎内衣</span></a></dd>
																		<dd><a rel="nofollow" title="粉客内衣旗舰店" target="_blank" href="#" rel="nofollow"><span >粉客内衣旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="泽芳行旗舰店" target="_blank" href="#" rel="nofollow"><span >泽芳行旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="彩婷" target="_blank" href="#" rel="nofollow"><span  class="red" >彩婷</span></a></dd>
																		<dd><a rel="nofollow" title="黛兰希" target="_blank" href="#" rel="nofollow"><span >黛兰希</span></a></dd>
																		<dd><a rel="nofollow" title="香港优蓓尔防辐射" target="_blank" href="#" rel="nofollow"><span >香港优蓓尔防辐射</span></a></dd>
																		<dd><a rel="nofollow" title="蓉莉娜内衣批发" target="_blank" href="#" rel="nofollow"><span >蓉莉娜内衣批发</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
											
											<li>
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/package.png"></i><a class="ml-22" title="品牌、礼包">游戏交易</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="全部游戏交易">全部游戏交易</span></dt>
																		<dd><a title="游戏账号" href="#"><span>游戏账号</span></a></dd>
																		<dd><a title="游戏道具" href="#"><span>游戏道具</span></a></dd>
																		<dd><a title="游戏币" href="#"><span>游戏币</span></a></dd>
																		<dd><a title="游戏代练" href="#"><span>游戏代练</span></a></dd>
																		<dd><a title="租号玩" href="#"><span>租号玩</span></a></dd>
																		<dd><a title="礼包/激活码/CDK" href="#"><span>礼包/激活码/CDK</span></a></dd>
																		<dd><a title="首冲号（安卓）" href="#"><span>首冲号（安卓）</span></a></dd>
																		<dd><a title="游戏陪玩" href="#"><span>游戏陪玩</span></a></dd>
																	</dl>
																	
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a title="琳琅鞋业" target="_blank" href="#" rel="nofollow"><span >琳琅鞋业</span></a></dd>
																		<dd><a title="宏利鞋业" target="_blank" href="#" rel="nofollow"><span >宏利鞋业</span></a></dd>
																		<dd><a title="比爱靓点鞋业" target="_blank" href="#" rel="nofollow"><span >比爱靓点鞋业</span></a></dd>
																		<dd><a title="浪人怪怪" target="_blank" href="#" rel="nofollow"><span >浪人怪怪</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>

											</li>
											
                                 <!--比较多的导航	-->										
											<li >
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/cookies.png"></i><a class="ml-22" title="饼干、膨化">玩具乐器</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="全部玩具乐器">全部玩具乐器</span></dt>
																		<dd><a title="玩具" href="#"><span>玩具</span></a></dd>
																		<dd><a title="手办" href="#"><span>手办</span></a></dd>
																		<dd><a title="吉他" href="#"><span>吉他</span></a></dd>
																		<dd><a title="钢琴" href="#"><span>钢琴</span></a></dd>
																		<dd><a title="电子琴" href="#"><span>电子琴</span></a></dd>
																		<dd><a title="古筝" href="#"><span>古筝</span></a></dd>
																		<dd><a title="架子鼓" href="#"><span>架子鼓</span></a></dd>
																		<dd><a title="小提琴" href="#"><span>小提琴</span></a></dd>
																		<dd><a title="二胡" href="#"><span>二胡</span></a></dd>
																		<dd><a title="其他乐器" href="#"><span>其他乐器</span></a></dd>
																	</dl>
																	
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="YYKCLOT" target="_blank" href="#" rel="nofollow"><span  class ="red" >YYKCLOT</span></a></dd>
																		<dd><a rel="nofollow" title="池氏品牌男装" target="_blank" href="#" rel="nofollow"><span  class ="red" >池氏品牌男装</span></a></dd>
																		<dd><a rel="nofollow" title="男装日志" target="_blank" href="#" rel="nofollow"><span >男装日志</span></a></dd>
																		<dd><a rel="nofollow" title="索比诺官方旗舰店" target="_blank" href="#" rel="nofollow"><span >索比诺官方旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="onTTno傲徒" target="_blank" href="#" rel="nofollow"><span  class ="red" >onTTno傲徒</span></a></dd>
																		<dd><a rel="nofollow" title="玛狮路男装旗舰店" target="_blank" href="#" rel="nofollow"><span >玛狮路男装旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="劳威特品牌男装" target="_blank" href="#" rel="nofollow"><span >劳威特品牌男装</span></a></dd>
																		<dd><a rel="nofollow" title="卡斯郎世家批发城" target="_blank" href="#" rel="nofollow"><span  class ="red" >卡斯郎世家批发城</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
											<li >
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/meat.png"></i><a class="ml-22" title="熟食、肉类">办公用品</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="全部办公用品">全部办公用品</span></dt>
																		<dd><a title="打印机/复印机" href="#"><span>打印机/复印机</span></a></dd>
																		<dd><a title="办公家具" href="#"><span>办公家具</span></a></dd>
																		<dd><a title="投影仪" href="#"><span>投影仪</span></a></dd>
																		<dd><a title="文具耗材" href="#"><span>文具耗材</span></a></dd>
																		<dd><a title="其他办公用品" href="#"><span>其他办公用品</span></a></dd>
																	</dl>
																	
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="花颜巧语 " target="_blank" href="#" rel="nofollow"><span  class="red" >花颜巧语 </span></a></dd>
																		<dd><a rel="nofollow" title="糖衣小屋" target="_blank" href="#" rel="nofollow"><span >糖衣小屋</span></a></dd>
																		<dd><a rel="nofollow" title="卡拉迪克  " target="_blank" href="#" rel="nofollow"><span  class="red" >卡拉迪克  </span></a></dd>
																		<dd><a rel="nofollow" title="暖春童话 " target="_blank" href="#" rel="nofollow"><span >暖春童话 </span></a></dd>
																		<dd><a rel="nofollow" title="华盛童装批发行 " target="_blank" href="#" rel="nofollow"><span >华盛童装批发行 </span></a></dd>
																		<dd><a rel="nofollow" title="奈仕华童装旗舰店" target="_blank" href="#" rel="nofollow"><span >奈仕华童装旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="斑蒂尼BONDYNI" target="_blank" href="#" rel="nofollow"><span  class="red" >斑蒂尼BONDYNI</span></a></dd>
																		<dd><a rel="nofollow" title="猫儿朵朵 " target="_blank" href="#" rel="nofollow"><span >猫儿朵朵 </span></a></dd>
																		<dd><a rel="nofollow" title="童衣阁" target="_blank" href="#" rel="nofollow"><span  class="red" >童衣阁</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                            <b class="arrow"></b>
											</li>
											<li >
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/bamboo.png"></i><a class="ml-22" title="素食、卤味">车载设备</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="全部车载设备">全部车载设备</span></dt>
																		<dd><a title="导航仪" href="#"><span>导航仪</span></a></dd>
																		<dd><a title="行车记录仪" href="#"><span>行车记录仪</span></a></dd>
																		<dd><a title="倒车雷达" href="#"><span>倒车雷达</span></a></dd>
																		<dd><a title="车载音箱" href="#"><span>车载音箱</span></a></dd>
																		<dd><a title="车载冰箱" href="#"><span>车载冰箱</span></a></dd>
																		<dd><a title="车载吸尘器" href="#"><span>车载吸尘器</span></a></dd>
																		<dd><a title="车载香水" href="#"><span>车载香水</span></a></dd>
																		<dd><a title="储物箱" href="#"><span>储物箱</span></a></dd>
																		<dd><a title="维修保养设备" href="#"><span>维修保养设备</span></a></dd>
																		<dd><a title="其他车载设备" href="#"><span>其他车载设备</span></a></dd>
																	</dl>
																	
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="歌芙品牌旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >歌芙品牌旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="爱丝蓝内衣厂" target="_blank" href="#" rel="nofollow"><span >爱丝蓝内衣厂</span></a></dd>
																		<dd><a rel="nofollow" title="香港优蓓尔防辐射" target="_blank" href="#" rel="nofollow"><span >香港优蓓尔防辐射</span></a></dd>
																		<dd><a rel="nofollow" title="蓉莉娜内衣批发" target="_blank" href="#" rel="nofollow"><span >蓉莉娜内衣批发</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
											<li>
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/nut.png"></i><a class="ml-22" title="坚果、炒货">宠物用品</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="全部宠物用品">全部宠物用品</span></dt>
																		<dd><a title="狗狗用" href="#"><span>狗狗用</span></a></dd>
																		<dd><a title="猫猫用" href="#"><span>猫猫用</span></a></dd>
																		<dd><a title="花鸟鱼虫用" href="#"><span>花鸟鱼虫用</span></a></dd>
																	</dl>
																	
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="呵呵嘿官方旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >呵呵嘿官方旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="格瑞旗舰店" target="_blank" href="#" rel="nofollow"><span >格瑞旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="飞彦大厂直供" target="_blank" href="#" rel="nofollow"><span  class="red" >飞彦大厂直供</span></a></dd>
																		<dd><a rel="nofollow" title="红e·艾菲妮" target="_blank" href="#" rel="nofollow"><span >红e·艾菲妮</span></a></dd>
																		<dd><a rel="nofollow" title="本真旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >本真旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="杭派女装批发网" target="_blank" href="#" rel="nofollow"><span  class="red" >杭派女装批发网</span></a></dd>
																		<dd><a rel="nofollow" title="华伊阁旗舰店" target="_blank" href="#" rel="nofollow"><span >华伊阁旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="独家折扣旗舰店" target="_blank" href="#" rel="nofollow"><span >独家折扣旗舰店</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
												<b class="arrow"></b>
											</li>											
															<li >
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/candy.png"></i><a class="ml-22" title="糖果、蜜饯">运动户外</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="全部运动户外">全部运动户外</span></dt>
																		<dd><a title="健身训练" href="#"><span>健身训练</span></a></dd>
																		<dd><a title="户外装备" href="#"><span>户外装备</span></a></dd>
																		<dd><a title="桌游棋牌" href="#"><span>桌游棋牌</span></a></dd>
																		<dd><a title="轮滑" href="#"><span>轮滑</span></a></dd>
																		<dd><a title="垂钓用品" href="#"><span>垂钓用品</span></a></dd>
																		<dd><a title="游泳用品" href="#"><span>游泳用品</span></a></dd>
																		<dd><a title="舞蹈瑜伽" href="#"><span>舞蹈瑜伽</span></a></dd>
																		<dd><a title="其他运动用品" href="#"><span>其他运动用品</span></a></dd>
																	</dl>
																	
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="YYKCLOT" target="_blank" href="#" rel="nofollow"><span  class ="red" >YYKCLOT</span></a></dd>
																		<dd><a rel="nofollow" title="池氏品牌男装" target="_blank" href="#" rel="nofollow"><span  class ="red" >池氏品牌男装</span></a></dd>
																		<dd><a rel="nofollow" title="男装日志" target="_blank" href="#" rel="nofollow"><span >男装日志</span></a></dd>
																		<dd><a rel="nofollow" title="索比诺官方旗舰店" target="_blank" href="#" rel="nofollow"><span >索比诺官方旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="onTTno傲徒" target="_blank" href="#" rel="nofollow"><span  class ="red" >onTTno傲徒</span></a></dd>
																		<dd><a rel="nofollow" title="卡斯郎世家批发城" target="_blank" href="#" rel="nofollow"><span  class ="red" >卡斯郎世家批发城</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                            <b class="arrow"></b>
											</li>
											<li >
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/chocolate.png"></i><a class="ml-22" title="巧克力">图书音像</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="全部图书音像">全部图书音像</span></dt>
																		<dd><a title="图书教材" href="#"><span>图书教材</span></a></dd>
																		<dd><a title="唱片影片" href="#"><span>唱片影片</span></a></dd>
																		<dd><a title="其他图书音像品" href="#"><span>其他图书音像品</span></a></dd>
																	</dl>
																	
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="花颜巧语 " target="_blank" href="#" rel="nofollow"><span  class="red" >花颜巧语 </span></a></dd>
																		<dd><a rel="nofollow" title="糖衣小屋" target="_blank" href="#" rel="nofollow"><span >糖衣小屋</span></a></dd>
																		<dd><a rel="nofollow" title="卡拉迪克  " target="_blank" href="#" rel="nofollow"><span  class="red" >卡拉迪克  </span></a></dd>
																		<dd><a rel="nofollow" title="暖春童话 " target="_blank" href="#" rel="nofollow"><span >暖春童话 </span></a></dd>
																		<dd><a rel="nofollow" title="华盛童装批发行 " target="_blank" href="#" rel="nofollow"><span >华盛童装批发行 </span></a></dd>
																		<dd><a rel="nofollow" title="奈仕华童装旗舰店" target="_blank" href="#" rel="nofollow"><span >奈仕华童装旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="斑蒂尼BONDYNI" target="_blank" href="#" rel="nofollow"><span  class="red" >斑蒂尼BONDYNI</span></a></dd>
																		<dd><a rel="nofollow" title="童衣阁" target="_blank" href="#" rel="nofollow"><span  class="red" >童衣阁</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
												<li>
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/tea.png"></i><a class="ml-22" title="巧克力">其他类别</a></h3>
													<em>&gt;</em></div>
												<b class="arrow"></b>
											</li>
										
										</ul>
									</div>
								</div>

							</div>
						</div>
						<!--导航 -->
						<script type="text/javascript">
							(function() {
								$('.am-slider').flexslider();
							});
							$(document).ready(function() {
								$("li").hover(function() {
									$(".category-content .category-list li.first .menu-in").css("display", "none");
									$(".category-content .category-list li.first").removeClass("hover");
									$(this).addClass("hover");
									$(this).children("div.menu-in").css("display", "block")
								}, function() {
									$(this).removeClass("hover")
									$(this).children("div.menu-in").css("display", "none")
								});
							})
						</script>


					<!--小导航 -->
					<div class="am-g am-g-fixed smallnav">
						<div class="am-u-sm-3">
							<a href="sort.html"><img src="images/navsmall.jpg" />
								<div class="title">商品分类</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="images/huismall.jpg" />
								<div class="title">大聚惠</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="images/mansmall.jpg" />
								<div class="title">个人中心</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="images/moneysmall.jpg" />
								<div class="title">投资理财</div>
							</a>
						</div>
					</div>

					
				<!--各类活动-->
				<div class="row">
					<li><a><img src="images/row1.jpg"/></a></li>
					<li><a><img src="images/row2.jpg"/></a></li>
					<li><a><img src="images/row3.jpg"/></a></li>
					<li><a><img src="images/row4.jpg"/></a></li>
				</div>
				<div class="clear"></div>	
					<!--走马灯 -->

					<div class="marqueenTwo">
						<span class="marqueen-title"><i class="am-icon-volume-up am-icon-fw"></i>商城头条<em class="am-icon-angle-double-right"></em></span>
						<div class="demo">

							<ul>
								<li class="title-first"><a target="_blank" href="#">
									<img src="images/TJ2.jpg"></img>
									<span>[特惠]</span>洋河年末大促，低至两件五折							
								</a></li>
								<li class="title-first"><a target="_blank" href="#">
									<span>[公告]</span>商城与广州市签署战略合作协议
								     <img src="images/TJ.jpg"></img>
								     <p>XXXXXXXXXXXXXXXXXX</p>
							    </a></li>																    							    
								<li><a target="_blank" href="#"><span>[特惠]</span>女生节商城爆品1分秒	</a></li>
								<li><a target="_blank" href="#"><span>[公告]</span>华北、华中部分地区配送延迟</a></li>
								<li><a target="_blank" href="#"><span>[特惠]</span>家电狂欢千亿礼券 买1送1！</a></li>
								<li><a target="_blank" href="#"><span>[特惠]</span>洋河年末大促，低至两件五折</a></li>
								<li><a target="_blank" href="#"><span>[公告]</span>华北、华中部分地区配送延迟</a></li>
						
							</ul>
                       
						</div>
					</div>
					<div class="clear"></div>
				
				</div>
				
				
							
				<script type="text/javascript">
					if ($(window).width() < 640) {
						function autoScroll(obj) {
							$(obj).find("ul").animate({
								marginTop: "-39px"
							}, 500, function() {
								$(this).css({
									marginTop: "0px"
								}).find("li:first").appendTo(this);
							})
						}
						$(function() {
							setInterval('autoScroll(".demo")', 3000);
						})
					}
				</script>
			</div>
			<div class="shopMainbg">
				<div class="shopMain" id="shopmain">

					<!--热门活动 -->

					<div class="am-container">
					
                     <div class="sale-mt">
		                   <i></i>
		                   <em class="sale-title">限时秒杀</em>
		                   <div class="s-time" id="countdown">
			                    <span class="hh">01</span>
			                    <span class="mm">20</span>
			                    <span class="ss">59</span>
		                   </div>
	                  </div>

					
					  <div class="am-g am-g-fixed sale">
						<div class="am-u-sm-3 sale-item">
							<div class="s-img">
								<a href="hreftointroduction.action?userID=22&item_id=1 "><img src="images/sale3.jpg" /></a>
							</div>
                           <div class="s-info">
                           	   <a href="#"><p class="s-title">ZEK 原味海苔</p></a>
                           	   <div class="s-price">￥<b>9.90</b>
                           	   	  <a class="s-buy" href="#">秒杀</a>
                           	   </div>                          	  
                           </div>								
						</div>
						
						<div class="am-u-sm-3 sale-item">
							<div class="s-img">
								<a href="# "><img src="images/sale2.jpg" /></a>
							</div>
                           <div class="s-info">
                           	   <a href="#"><p class="s-title">ZEK 原味海苔</p></a>
                           	   <div class="s-price">￥<b>9.90</b>
                           	   	  <a class="s-buy" href="#">秒杀</a>
                           	   </div>                          	  
                           </div>								
						</div>					
						
						<div class="am-u-sm-3 sale-item">
							<div class="s-img">
								<a href="# "><img src="images/sale1.jpg" /></a>
							</div>
                           <div class="s-info">
                           	   <a href="#"><p class="s-title">ZEK 原味海苔</p></a>
                           	   <div class="s-price">￥<b>9.90</b>
                           	   	  <a class="s-buy" href="#">秒杀</a>
                           	   </div>                          	  
                           </div>								
						</div>
						
						<div class="am-u-sm-3 sale-item">
							<div class="s-img">
								<a href="# "><img src="images/sale2.jpg " /></a>
							</div>
                           <div class="s-info">
                           	   <a href="#"><p class="s-title">ZEK 原味海苔</p></a>
                           	   <div class="s-price">￥<b>9.90</b>
                           	   	  <a class="s-buy" href="#">秒杀</a>
                           	   </div>                          	  
                           </div>								
						</div>
						
					  </div>
                   </div>
					<div class="clear "></div>
            <div class="f1">
					<!--甜点-->
					
					<div class="am-container " >
						<div class="shopTitle ">
							<h4 class="floor-title">手机</h4>
							<div class="floor-subtitle"><em class="am-icon-caret-left"></em><h3>机不可失</h3></div>
							<div class="today-brands " style="right:0px ;top:13px;">
								<a href="# ">iphone</a>|
								<a href="# ">小米</a>|
								<a href="# ">华为 </a>|
								<a href="# ">OPPO</a>|
								<a href="# ">vivo</a>|
								<a href="# ">魅族</a>
							</div>

						</div>
					</div>
					
					<div class="am-g am-g-fixed floodSix ">				
						<div class="am-u-sm-5 am-u-md-3 text-one list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">三星</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">诺基亚</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">努比亚</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">锤子</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">一加</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">索尼</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">美图</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">乐视</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">联想</b></span></a>								
							</div>							
							<a href="# ">
								<img src="images/5.jpg" />
								<div class="outer-con ">
									<div class="title ">
										零食大礼包开抢啦
									</div>
									<div class="sub-title ">
										当小鱼儿恋上软豆腐
									</div>
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						
						<div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two big">
							
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									
								</div>
								<a href="# "><img src="images/act1.png" /></a>						
						</div>

						<li>
						<div class="am-u-md-2 am-u-lg-2 text-three">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/1.jpg " /></a>
						</div>
						</li>
						<li>
						<div class="am-u-md-2 am-u-lg-2 text-three sug">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/2.jpg " /></a>
						</div>
						</li>
						<li>
						<div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/5.jpg" /></a>
						</div>	
						</li>
						<li>
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/3.jpg" /></a>
						</div>	
						</li>
						<li>
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/4.jpg" /></a>
						</div>	
						</li>						
					</div>

					<div class="clear "></div>
            </div>
            <div class="f2">

					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4 class="floor-title">数码</h4>
							<div class="floor-subtitle"><em class="am-icon-caret-left"></em><h3>3c也性感</h3></div>
							<div class="today-brands " style="right:0px ;top:13px">
								<a href="# ">游戏主机</a>|
								<a href="# ">耳机</a>|
								<a href="# ">音响 </a>|
								<a href="# ">智能穿戴</a>|
								<a href="# ">存储设备</a>
							</div>
						</div>
					</div>
					<div class="am-g am-g-fixed floodSeven">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">显示器</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">主板</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">内存条</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">硬盘</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">路由器</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">移动硬盘</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">数据线</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">鼠标</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">键盘</b></span></a>								
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									零食大礼包开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="images/11.jpg" />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two big">
								
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
									
								</div>
								<a href="# "><img src="images/act2.png " /></a>
								
							</div>
                        
                        <li>
							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="boxLi"></div>
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									
								</div>
								<a href="# "><img src="images/6.jpg" /></a>
							</div>
                        </li>
                        <li>
						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/7.jpg" /></a>
						</div>
                        </li>
                        <li>
						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/10.jpg" /></a>
						</div>
                        </li>
                        <li>
						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/8.jpg" /></a>
						</div>
                        </li>
                        <li>
						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/9.jpg" /></a>
						</div>
						</li>
					</div>
                 <div class="clear "></div>                 
            </div>               						

            <div class="f3">
					<!--甜点-->
					
					<div class="am-container " >
						<div class="shopTitle ">
							<h4 class="floor-title">辣妈爱萌宝</h4>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodSix ">
						<div class="am-u-sm-5 am-u-md-3 text-one list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">童床</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">童车</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">安全座椅</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">婴幼服饰</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">早教图书</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">奶粉辅食</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>								
							</div>							
							<a href="# ">
								<img src="images/5.jpg" />
								<div class="outer-con ">
									<div class="title ">
										零食大礼包开抢啦
									</div>
									<div class="sub-title ">
										当小鱼儿恋上软豆腐
									</div>
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						
						<div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two big">
							
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									
								</div>
								<a href="# "><img src="images/act1.png" /></a>						
						</div>

						<li>
						<div class="am-u-md-2 am-u-lg-2 text-three">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/1.jpg " /></a>
						</div>
						</li>
						<li>
						<div class="am-u-md-2 am-u-lg-2 text-three sug">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/2.jpg " /></a>
						</div>
						</li>
						<li>
						<div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/5.jpg" /></a>
						</div>	
						</li>
						<li>
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/3.jpg" /></a>
						</div>	
						</li>
						<li>
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/4.jpg" /></a>
						</div>	
						</li>						
					</div>
					<div class="clear "></div>
            </div>
            <div class="f4">

					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4 class="floor-title">爱摄影≠穷三代</h4>
						</div>
					</div>
					<div class="am-g am-g-fixed floodSeven">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">单反</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">镜头</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">闪光灯</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">三脚架</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">相机包</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">美颜神器</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">长焦</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">广角</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">防抖</b></span></a>								
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									零食大礼包开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="images/11.jpg" />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two big">
								
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
									
								</div>
								<a href="# "><img src="images/act2.png " /></a>
								
							</div>
                        
                        <li>
							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="boxLi"></div>
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									
								</div>
								<a href="# "><img src="images/6.jpg" /></a>
							</div>
                        </li>
                        <li>
						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/7.jpg" /></a>
						</div>
                        </li>
                        <li>
						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/10.jpg" /></a>
						</div>
                        </li>
                        <li>
						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/8.jpg" /></a>
						</div>
                        </li>
                        <li>
						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/9.jpg" /></a>
						</div>
						</li>
					</div>
                 <div class="clear "></div>                 
            </div>                    
	
            <div class="f5">
					<!--甜点-->
					
					<div class="am-container " >
						<div class="shopTitle ">
							<h4 class="floor-title">运动户外</h4>
							<div class="floor-subtitle"><h3>走出家门 回归自然</h3></div>
							

						</div>
					</div>
					
					<div class="am-g am-g-fixed floodSix ">
												
						<div class="am-u-sm-5 am-u-md-3 text-one list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">自行车</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">轮滑</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">钓鱼竿</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">头巾</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">冲锋衣</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">帐篷</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">登山包</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">登山鞋</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">防潮垫</b></span></a>								
							</div>							
							<a href="# ">
								<img src="images/5.jpg" />
								<div class="outer-con ">
									<div class="title ">
										零食大礼包开抢啦
									</div>
									<div class="sub-title ">
										当小鱼儿恋上软豆腐
									</div>
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						
						<div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two big">
							
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									
								</div>
								<a href="# "><img src="images/act1.png" /></a>						
						</div>

						<li>
						<div class="am-u-md-2 am-u-lg-2 text-three">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/1.jpg " /></a>
						</div>
						</li>
						<li>
						<div class="am-u-md-2 am-u-lg-2 text-three sug">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/2.jpg " /></a>
						</div>
						</li>
						<li>
						<div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/5.jpg" /></a>
						</div>	
						</li>
						<li>
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/3.jpg" /></a>
						</div>	
						</li>
						<li>
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/4.jpg" /></a>
						</div>	
						</li>						
					</div>
					<div class="clear "></div>
            </div>
            <div class="f6">

					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4 class="floor-title">交通工具</h4>
							<div class="floor-subtitle"><h3>以车代步</h3></div>
							
						</div>
					</div>
					<div class="am-g am-g-fixed floodSeven">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">导航仪</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">摩托车</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">电动车</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">车载吸尘器</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">车载香水</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">倒车雷达</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">行车记录仪</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">汽车坐垫</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">轮胎</b></span></a>								
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									零食大礼包开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="images/11.jpg" />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two big">
								
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
									
								</div>
								<a href="# "><img src="images/act2.png " /></a>
								
							</div>
                        
                        <li>
							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="boxLi"></div>
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									
								</div>
								<a href="# "><img src="images/6.jpg" /></a>
							</div>
                        </li>
                        <li>
						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/7.jpg" /></a>
						</div>
                        </li>
                        <li>
						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/10.jpg" /></a>
						</div>
                        </li>
                        <li>
						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/8.jpg" /></a>
						</div>
                        </li>
                        <li>
						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/9.jpg" /></a>
						</div>
						</li>
					</div>
                 <div class="clear "></div>                 
            </div>   

            <div class="f7">
					<!--甜点-->
					
					<div class="am-container " >
						<div class="shopTitle ">
							<h4 class="floor-title">爱宠园</h4>
							<div class="floor-subtitle"><h3>汪星人喵星人  都是爱宠星人</h3></div>
							

						</div>
					</div>
					
					<div class="am-g am-g-fixed floodSix ">
												
						<div class="am-u-sm-5 am-u-md-3 text-one list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">泰迪</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">金毛</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">萨摩</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">牧羊犬</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">狗窝</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">狗粮</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">加菲猫</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">龙猫</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">暹罗猫</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">猫砂</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">猫窝</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">猫粮</b></span></a>								
							</div>							
							<a href="# ">
								<img src="images/5.jpg" />
								<div class="outer-con ">
									<div class="title ">
										零食大礼包开抢啦
									</div>
									<div class="sub-title ">
										当小鱼儿恋上软豆腐
									</div>
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						
						<div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two big">
							
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									
								</div>
								<a href="# "><img src="images/act1.png" /></a>						
						</div>

						<li>
						<div class="am-u-md-2 am-u-lg-2 text-three">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/1.jpg " /></a>
						</div>
						</li>
						<li>
						<div class="am-u-md-2 am-u-lg-2 text-three sug">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/2.jpg " /></a>
						</div>
						</li>
						<li>
						<div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/5.jpg" /></a>
						</div>	
						</li>
						<li>
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/3.jpg" /></a>
						</div>	
						</li>
						<li>
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/4.jpg" /></a>
						</div>	
						</li>						
					</div>
					<div class="clear "></div>
            </div>
            <div class="f8">

					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4 class="floor-title">生活办公</h4>
							<div class="floor-subtitle"><h3>OL必备</h3></div>
							
						</div>
					</div>
					<div class="am-g am-g-fixed floodSeven">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">打印机</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">投影仪</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">马克笔</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">柜子</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">桌子/茶几</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">凳子/椅子</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">照明灯具</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">厨房卫浴</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">坐垫</b></span></a>								
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									零食大礼包开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="images/11.jpg" />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two big">
								
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
									
								</div>
								<a href="# "><img src="images/act2.png " /></a>
								
							</div>
                        
                        <li>
							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="boxLi"></div>
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									
								</div>
								<a href="# "><img src="images/6.jpg" /></a>
							</div>
                        </li>
                        <li>
						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/7.jpg" /></a>
						</div>
                        </li>
                        <li>
						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/10.jpg" /></a>
						</div>
                        </li>
                        <li>
						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/8.jpg" /></a>
						</div>
                        </li>
                        <li>
						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/9.jpg" /></a>
						</div>
						</li>
					</div>
                 <div class="clear "></div>                 
            </div>   
            
            <div class="f9">
					<!--甜点-->
					
					<div class="am-container " >
						<div class="shopTitle ">
							<h4 class="floor-title">游戏天地</h4>
							<div class="floor-subtitle"><h3>一起成为电竞大神吧</h3></div>
							<div class="today-brands " style="right:0px ;top:13px;">
								<a href="# ">游戏帐号</a>|
								<a href="# ">游戏道具</a>|
								<a href="# ">游戏币 </a>|
								<a href="# ">游戏代练</a>|
								<a href="# ">租号玩</a>|
								<a href="# ">礼包/CDK</a>
							</div>

						</div>
					</div>
					
					<div class="am-g am-g-fixed floodSix ">
												
						<div class="am-u-sm-5 am-u-md-3 text-one list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">王者荣耀</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">英雄联盟</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">地下城与勇士</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">剑灵</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">穿越火线</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">穿越火线手游</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">绝地求生</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">逆战</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">魂斗罗归来</b></span></a>								
							</div>							
							<a href="# ">
								<img src="images/5.jpg" />
								<div class="outer-con ">
									<div class="title ">
										零食大礼包开抢啦
									</div>
									<div class="sub-title ">
										当小鱼儿恋上软豆腐
									</div>
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						
						<div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two big">
							
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									
								</div>
								<a href="# "><img src="images/act1.png" /></a>						
						</div>

						<li>
						<div class="am-u-md-2 am-u-lg-2 text-three">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/1.jpg " /></a>
						</div>
						</li>
						<li>
						<div class="am-u-md-2 am-u-lg-2 text-three sug">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/2.jpg " /></a>
						</div>
						</li>
						<li>
						<div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/5.jpg" /></a>
						</div>	
						</li>
						<li>
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/3.jpg" /></a>
						</div>	
						</li>
						<li>
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six">
							<div class="boxLi"></div>
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								
							</div>
							<a href="# "><img src="images/4.jpg" /></a>
						</div>	
						</li>						
					</div>
					<div class="clear "></div>
            </div>
            <div class="f10">

					<!--坚果-->
					
					
                 <div class="clear "></div>                 
            </div>               
            
            
            
					<div class="footer ">
						<div class="footer-hd ">
							<p>
								<a href="# ">恒望科技</a>
								<b>|</b>
								<a href="# ">商城首页</a>
								<b>|</b>
								<a href="# ">支付宝</a>
								<b>|</b>
								<a href="# ">物流</a>
							</p>
						</div>
						<div class="footer-bd ">
							<p>
								<a href="# ">关于恒望</a>
								<a href="# ">合作伙伴</a>
								<a href="# ">联系我们</a>
								<a href="# ">网站地图</a>
								<em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></em>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>

		<!--引导 -->
		<div class="navCir">
			<li class="active"><a href="home2.html"><i class="am-icon-home "></i>首页</a></li>
			<li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
			<li><a href="shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>	
			<li><a href="person/index.html"><i class="am-icon-user"></i>我的</a></li>					
		</div>
		<!--菜单 -->
		<div class=tip>
			<div id="sidebar">
				<div id="wrap">
					<div id="prof" class="item ">
						<a href="# ">
							<span class="setting "></span>
						</a>
						<div class="ibar_login_box status_login ">
							<div class="avatar_box ">
								<p class="avatar_imgbox "><img src="images/no-img_mid_.jpg " /></p>
								<ul class="user_info ">
									<li>用户名：sl1903</li>
									<li>级&nbsp;别：普通会员</li>
								</ul>
							</div>
							<div class="login_btnbox ">
								<a href="# " class="login_order ">我的订单</a>
								<a href="# " class="login_favorite ">我的收藏</a>
							</div>
							<i class="icon_arrow_white "></i>
						</div>

					</div>
					<div id="shopCart " class="item ">
						<a href="# ">
							<span class="message "></span>
						</a>
						<p>
							购物车
						</p>
						<p class="cart_num ">0</p>
					</div>
					<div id="asset " class="item ">
						<a href="# ">
							<span class="view "></span>
						</a>
						<div class="mp_tooltip ">
							我的资产
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div id="foot " class="item ">
						<a href="# ">
							<span class="zuji "></span>
						</a>
						<div class="mp_tooltip ">
							我的足迹
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div id="brand " class="item ">
						<a href="#">
							<span class="wdsc "><img src="images/wdsc.png " /></span>
						</a>
						<div class="mp_tooltip ">
							我的收藏
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div id="broadcast " class="item ">
						<a href="# ">
							<span class="chongzhi "><img src="images/chongzhi.png " /></span>
						</a>
						<div class="mp_tooltip ">
							我要充值
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div class="quick_toggle ">
						<li class="qtitem ">
							<a href="# "><span class="kfzx "></span></a>
							<div class="mp_tooltip ">客服中心<i class="icon_arrow_right_black "></i></div>
						</li>
						<!--二维码 -->
						<li class="qtitem ">
							<a href="#none "><span class="mpbtn_qrcode "></span></a>
							<div class="mp_qrcode " style="display:none; "><img src="images/weixin_code_145.png " /><i class="icon_arrow_white "></i></div>
						</li>
						<li class="qtitem ">
							<a href="#top " class="return_top "><span class="top "></span></a>
						</li>
					</div>

					<!--回到顶部 -->
					<div id="quick_links_pop " class="quick_links_pop hide "></div>

				</div>

			</div>
			<div id="prof-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					我
				</div>
			</div>
			<div id="shopCart-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					购物车
				</div>
			</div>
			<div id="asset-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					资产
				</div>

				<div class="ia-head-list ">
					<a href="# " target="_blank " class="pl ">
						<div class="num ">0</div>
						<div class="text ">优惠券</div>
					</a>
					<a href="# " target="_blank " class="pl ">
						<div class="num ">0</div>
						<div class="text ">红包</div>
					</a>
					<a href="# " target="_blank " class="pl money ">
						<div class="num ">￥0</div>
						<div class="text ">余额</div>
					</a>
				</div>

			</div>
			<div id="foot-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					足迹
				</div>
			</div>
			<div id="brand-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					收藏
				</div>
			</div>
			<div id="broadcast-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					充值
				</div>
			</div>
		</div>
		<script>
			window.jQuery || document.write('<script src="basic/js/jquery.min.js "><\/script>');
		</script>
		<script type="text/javascript " src="basic/js/quick_links.js "></script>
	</body>

</html>