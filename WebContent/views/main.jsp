<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Test bootstrap</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <![endif]-->
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-responsive.css" rel="stylesheet">
<link href="../css/bootstrap-select.min.css" rel="stylesheet">
<link href="../css/zooviewer.css" rel="stylesheet">
</head>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery.js"></script>
<script src="../js/bootstrap-dropdown.js"></script>
<script src="../js/bootstrap-select.min.js" type="text/javascript"></script>
<script src="../js/bootstrap-modal.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(e) {
       $('#regBtn').click(function(){
    	  alert($('#regForm').serialize())
    	  jQuery.ajax({
    	    url: "<%=request.getContextPath() %>/user/regUser",
    	    type: 'POST',
    	    dataType: 'text',
    	    data: $('#regForm').serialize(),
    	    complete: function(xhr, textStatus) {
    	     // alert(textStatus);
    	    },
    	    success: function(data, textStatus, xhr) {
    	      alert("注册成功");
    	    },
    	    error: function(xhr, textStatus, errorThrown) {
    	      alert("注册失败");
    	    }
    	  });
	   });
       
     $('#loginBtn').click(function(){
    	 alert($('#loginForm').serialize());
    	 jQuery.ajax({
    	   url: "<%=request.getContextPath() %>/user/loginUser",
    	   type: 'POST',
    	   dataType: 'text',
    	   data:$('#loginForm').serialize(),
    	   complete: function(xhr, textStatus) {
    	     //called when complete
    	   },
    	   success: function(data, textStatus, xhr) {
    	     alert(data)
    	   },
    	   error: function(xhr, textStatus, errorThrown) {
    	     alert(data)
    	   }
    	 });
    	 
    	 
     });
    });
</script>
<body data-target=".bs-docs-sidebar" data-spy="scroll">
	<div class="navbar navbar-inverse">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="#">ZooKeeper Viewer</a>
                <input id="testbtn" type="button" class="btn"value="测试">
				<div class="nav-collapse collapse">
					<ul class="nav pull-right">
						<li class="active"><a>首页</a></li>
						<li><a href="#">日期</a></li>
						<li><a href="#">姓名</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">admin<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#loginModal" role="button" data-toggle="modal">登录</a></li>
								<li><a href="#regModal" role="button" data-toggle="modal">注册</a></li>
								<li><a href="#">编辑</a></li>
								<li><a href="#">退出</a></li>
							</ul></li>
					</ul>
				</div>
				<!-- end of nav-collapse-->
			</div>
			<!-- end of container-fluid-->
		</div>
		<!-- end of navbar-inne-->
	</div>
	<!-- end of navbar-->
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2">
				<ul class="nav nav-list bs-sidenav affix-top">
					<li class="li-height nav-left-header"><a>管理操作台</a></li>
					<li class="li-height  dropdown-submenu"><a href="#">浏览ZNode</a>
						<ul class="dropdown-menu">
							<li><a href="#" tabindex="-1">line1</a></li>
							<li><a href="#" tabindex="-1">line1</a></li>
							<li><a href="#" tabindex="-1">line1</a></li>
							<li><a href="#" tabindex="-1">line1</a></li>
						</ul></li>
					<li class="li-height"><a href="#">任务管理</a></li>
					<li class="li-height"><a href="#">流程管理</a></li>
					<li class="li-height"><a href="#">step1</a></li>
					<li class="li-height"><a href="#">step1</a></li>
					<li class="li-height"><a href="#">step1</a></li>
					<li class="li-height"><a href="#">step1</a></li>
				</ul>
			</div>
			<div class="span10">
				<div>
					<ul class="breadcrumb">
						<li><a>首页</a></li>
						<span class="divider">/</span>
						<li><a>新闻</a></li>
					</ul>
				</div>
				<div class="box-content">
					<div class="row-fluid">
						<div class="span9">
							<div class="span12">
								<div class="page-header">
									<h1 style="font-size: 30px">
										Typography <small style="font-size: 18px">Headings,
											paragraphs, lists, and other inline type elements</small>
									</h1>
								</div>
							</div>
							<div class="row-fluid">
								<div class="span4">
									<h3 class="box-font1">Sample text and paragraphs</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Curabitur bibendum ornare dolor, quis ullamcorper ligula
										sodales at. Nulla tellus elit, varius non commodo eget, mattis
										vel eros. In sed ornare nulla. Donec consectetur, velit a
										pharetra ultricies, diam lorem lacinia risus, ac commodo orci
										erat eu massa. Sed sit amet nulla ipsum. Donec felis mauris,
										vulputate sed tempor at, aliquam a ligula. Pellentesque non
										pulvinar nisi.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Curabitur bibendum ornare dolor, quis ullamcorper ligula
										sodales at. Nulla tellus elit, varius non commodo eget, mattis
										vel eros. In sed ornare nulla. Donec consectetur, velit a
										pharetra ultricies, diam lorem lacinia risus, ac commodo orci
										erat eu massa. Sed sit amet nulla ipsum. Donec felis mauris,
										vulputate sed tempor at, aliquam a ligula. Pellentesque non
										pulvinar nisi.</p>
								</div>
								<div class="span4">
									<h3 class="box-font1">Example body text</h3>
									<p>Nullam quis risus eget urna mollis ornare vel eu leo.
										Cum sociis natoque penatibus et magnis dis parturient montes,
										nascetur ridiculus mus. Nullam id dolor id nibh ultricies
										vehicula ut id elit.</p>
									<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus
										dolor auctor. Duis mollis, est non commodo luctus, nisi erat
										porttitor ligula, eget lacinia odio sem nec elit. Donec sed
										odio dui.</p>
								</div>
								<div class="span4 ">
									<div class="well">
										<h1>h1. Heading 1</h1>
										<h2>h2. Heading 2</h2>
										<h3>h3. Heading 3</h3>
										<h4>h4. Heading 4</h4>
										<h5>h5. Heading 5</h5>
										<h6>h6. Heading 6</h6>
									</div>
								</div>
							</div>
							<div class="row-fluid">
								<div class="span12">
									<h3 class="box-font1">Example blockquotes</h3>
									<div class="row-fluid">
										<div class="span6">
											<p>Default blockquotes are styled as such:</p>
											<blockquote>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing
													elit. Integer posuere erat a ante venenatis.</p>
												Someone famous in <cite title="">Body of work</cite> </small>
											</blockquote>
										</div>
										<div class="span6">
											<p>You can always float your blockquote to the right:</p>
											<blockquote class="pull-right">
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing
													elit. Integer posuere erat a ante venenatis.</p>
												<small> Someone famous in <cite title="">Body
														of work</cite>
												</small>
											</blockquote>
										</div>
									</div>
								</div>
							</div>
							<div class="row-fluid">
								<div class="span6">
									<h3 class="box-font1">More Sample Text</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Curabitur bibendum ornare dolor, quis ullamcorper ligula
										sodales at. Nulla tellus elit, varius non commodo eget, mattis
										vel eros. In sed ornare nulla. Donec consectetur, velit a
										pharetra ultricies, diam lorem lacinia risus, ac commodo orci
										erat eu massa. Sed sit amet nulla ipsum. Donec felis mauris,
										vulputate sed tempor at, aliquam a ligula. Pellentesque non
										pulvinar nisi.</p>
								</div>
								<div class="span6">
									<h3 class="box-font1">And Paragraphs</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Curabitur bibendum ornare dolor, quis ullamcorper ligula
										sodales at. Nulla tellus elit, varius non commodo eget, mattis
										vel eros. In sed ornare nulla. Donec consectetur, velit a
										pharetra ultricies, diam lorem lacinia risus, ac commodo orci
										erat eu massa. Sed sit amet nulla ipsum. Donec felis mauris,
										vulputate sed tempor at, aliquam a ligula. Pellentesque non
										pulvinar nisi.</p>
								</div>
							</div>
							<div class="row-fluid">
								<div class="span12">
									<h2>Example use of Tooltips</h2>
									<p>Hover over the links below to see tooltips:</p>
									<div class="tooltip-demo well">
										<p class="muted" style="margin-bottom: 0;">
											Tight pants next level keffiyeh <a
												data-original-title="first tooltip" data-rel="tooltip"
												href="#">you probably</a> haven't heard of them. Photo booth
											beard raw denim letterpress vegan messenger bag stumptown.
											Farm-to-table seitan, mcsweeney's fixie sustainable quinoa
											8-bit american appadata-rel <a
												data-original-title="Another tooltip" data-rel="tooltip"
												href="#">have a</a> terry richardson vinyl chambray. Beard
											stumptown, cardigans banh mi lomo thundercats. Tofu biodiesel
											williamsburg marfa, four loko mcsweeney's cleanse vegan
											chambray. A <a data-original-title="Another one here too"
												data-rel="tooltip" href="#">really ironic</a> artisan
											whatever keytar, scenester farm-to-table banksy Austin <a
												data-original-title="The last tip!" data-rel="tooltip"
												href="#">twitter handle</a> freegan cred raw denim
											single-origin coffee viral.
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="box span3">
							<div class="box-header well">
								<h3 class="box-font1">最近文章列表</h3>
							</div>
							<div class="box-content">
								<ul>
									<li>Lorem ipsum dolor sit amet</li>
									<li>Consectetur adipiscing elit</li>
									<li>Integer molestie lorem at massa</li>
									<li>Facilisis in pretium nisl aliquet</li>
									<li>
									<li>Faucibus porta lacus fringilla vel</li>
									<li>Aenean sit amet erat nunc</li>
									<li>Eget porttitor lorem</li>
								</ul>
							</div>
						</div>
						<div class="box span3">
							<div class="box-header well">
								<h3 class="box-font1">最近文章列表</h3>
							</div>
							<div class="box-content">
								<ul>
									<li>Lorem ipsum dolor sit amet</li>
									<li>Consectetur adipiscing elit</li>
									<li>Integer molestie lorem at massa</li>
									<li>Facilisis in pretium nisl aliquet</li>
									<li>
									<li>Faucibus porta lacus fringilla vel</li>
									<li>Aenean sit amet erat nunc</li>
									<li>Eget porttitor lorem</li>
								</ul>
							</div>
						</div>
						<div class="box span3">
							<div class="box-header well">
								<h3 class="box-font1">最近文章列表</h3>
							</div>
							<div class="box-content">
								<ul>
									<li>Lorem ipsum dolor sit amet</li>
									<li>Consectetur adipiscing elit</li>
									<li>Integer molestie lorem at massa</li>
									<li>Facilisis in pretium nisl aliquet</li>
									<li>
									<li>Faucibus porta lacus fringilla vel</li>
									<li>Aenean sit amet erat nunc</li>
									<li>Eget porttitor lorem</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer>
			<p class="pull-left">
				© <a target="_blank" href="http://weibo.com/sunyc">Yuancheng Sun</a>
				2013
			</p>
			<p class="pull-right">
				Powered by: <a href="http://abchina.com">ABC</a>
			</p>
		</footer>
		<!--------------------------------------------------->
		<!-- Modal 用于登录 -->
		<div id="loginModal" class="modal hide fade" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h3 id="myModalLabel">用户登录界面</h3>
			</div>
			<div class="modal-body">
				<form id="loginForm">
					<fieldset>
						<label>用户名</label> <input class="input-xlarge" type="text"
							placeholder="请输入用户名" name="loginName"> <label>密码</label> <input
							class="input-xlarge" type="password" placeholder="请输入密码" name ="loginPassword">
						<label class="checkbox"> <input type="checkbox"> <em>记住密码</em>
						</label>
					</fieldset>
				</form>
			</div>
			<div class="modal-footer">
				<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
				<button class="btn btn-primary" id="loginBtn" >登录</button>
			</div>
		</div>
		<!-- Modal 用于注册 -->
		<div id="regModal" class="modal hide fade" tabindex="-1" role="dialog"
			aria-labelledby="regModalLabel" aria-hidden="false">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h3 id="regModalLabel">用户注册界面</h3>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="regForm">
					<fieldset>
						<div class="control-group">
							<label class="control-label" for="regname">注册邮箱</label>
							<div class="controls">
								<input id="regEmail" class="input-xlarge" type="text" name= "regEmail"
									placeholder="请输入邮箱">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="regname">用户名</label>
							<div class="controls">
								<input id="regName" class="input-xlarge" type="text" name="regUserName"
									placeholder="请输入用户名">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">密码</label>
							<div class="controls">
								<input id="regPassword" class="input-xlarge" name="regPassword" type="password" placeholder="请输入密码">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">确认密码</label>
							<div class="controls">
								<input class="input-xlarge" type="password"
									placeholder="再次请输入密码">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">性别</label>
							<div class="controls">
								<select id="regGender" style="width: 80px" name="regGender"	>						<option value="1">女</option>
									<option value="2">其他</option>
								</select>
							</div>
						</div>
						<div class="control-group">
							<!-- <label class="control-label">记住密码</label>-->
							<div class="controls">
								<label class="checkbox"> <input type="checkbox">
									已阅读协议
								</label>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
			<div class="modal-footer">
				<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
				<button id="regBtn" class="btn btn-primary">注册</button>
			</div>
		</div>
	</div>
</body>
</html>
