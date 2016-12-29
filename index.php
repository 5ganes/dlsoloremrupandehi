<?php include("clientobjects.php");?>
<!DOCTYPE html>
<head>
    <title>DLSO Rupandehi - Home</title>
    <?php include("baselocation.php");?>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="styles/elegant-press.css" type="text/css" />
    
    <!--[if IE]><style>#header h1 a:hover{font-size:75px;}</style><![endif]-->
    <link rel="stylesheet" href="styles/style.css" type="text/css" />
</head>

<body style="margin-top:0px;">
	
    <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
    
    <div class="main-container" style="background:#378cc3; margin-bottom:0; border-bottom:1px solid #188d36; 
    padding-bottom:5px;">
   		<div class="header">
      		<div class="logo">
              	<img src="images/logo.png" height="100px" width="110px">
          	</div>
            <div class="tit">
                <h3>नेपाल सरकार</h3>
                <h4>कृषि विकास मन्त्रालय</h4>
                <h3>जिल्ला पशु सेवा कार्यालय, रुपन्देही</h3>
                <h6>रुपन्देही, नेपाल</h6>
     		</div>
            <div class="clear"></div>
      	</div>
    </div>

<div class="main-container">
  <div id="nav-container">
   <nav> 
    <ul class="nav">
    	<?php createMenu(0, "Header", $pageId); ?>
    </ul>
   </nav> 
    <div class="clear"></div>
  </div>
</div>

<div class="main-container">
  
	<div class="container1">
  
    	<?php 
			if(isset($_GET['action']))
			{
				$action = $_GET['action'];
				$action = str_replace(".","", $action);
				include("includes/".$action.".php");			
			}
			else if(isset($_POST['search']))
			{
				include("includes/search.php");	
			}			
			else if(isset($pageLinkType))
			{
				if($pageLinkType == "")
				{}
				else
				{
					include("includes/cmspage.php");
				}
			}
			else
			{
				include("includes/main.php");
			}
		?>   
    
 	</div>

</div>
<div class="main-container">
 </div>
 
<div class="callout"> 

    <div class="calloutcontainer"> 
        <div class="container_12"> 
            <div class="grid"> 
                 <article class="footbox">
      				<h2>महत्वपूर्ण लिन्क्स</h2>
                 	<ul>
						<?
                        $link=$groups->getByParentId(LINKS);
                        while($linkGet=$conn->fetchArray($link))
                        {?>
                            <li><a href="<?=$linkGet['urlname'];?>"><?=$linkGet['name'];?></a></li>
                        <? }?>      
                 	</ul>
    			</article>
    
    			<article class="footbox last">
                  <h2>We Are Social!</h2>
                  <div id="social"> 
                      <a href="http://twitter.com/krishighar" class="s3d twitter"> Twitter <span class="icons twitter"></span> </a> 
                      <a href="http://www.facebook.com/krishighar" class="s3d facebook"> Facebook <span class="icons facebook"></span> </a>
                      <div class="facebook">
                        <div class="fb-page" data-href="https://www.facebook.com/krishighar" data-width="300" data-small-header="false" data-adapt-container-width="true" data-hide-cover="true" data-show-facepile="false" data-show-posts="false"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/krishighar"><a href="https://www.facebook.com/krishighar">Krishi Ghar-कृषि घर</a></blockquote></div></div>
                      </div> 
                  </div>
    			</article>
  				
                <article class="">
				  	<?php
                    $contact=$groups->getById(CONTACT);
                    $contactGet=$conn->fetchArray($contact);
                  	?>
                  	<h2><?=$contactGet['name'];?></h2>
                  	<div class="contact">
                    	<div class="col-md-4 recent-posts">
                        	<?=$contactGet['shortcontents'];?>
                    	</div>
                  	</div>
                </article>
    
            <div class="clear"></div> 
        </div> 
        <div class="calloutoverlay"></div> 
        <div class="calloutoverlaybottom"></div> 
    </div> 
</div>

</div> 
 
<footer>
<style>
	.foo p a{color:#a80000;}
	.foo p a:hover{color:white}
</style>
<div class="foo" style="width:960px; margin:0 auto;">
    <p class="tagline_left" style="color:white">
        Powered By: <a href="http://www.krishighar.com" title="Ganesh Khatri" target="_blank" >Team Krishighar</a>
    </p>
    <p class="tagline_right" style="color:white">
        Copyright &copy; 2015 - All Rights Reserved - <a href="http://dlsorupandehi.gov.np">dlsorupandehi.gov.np</a>
    </p>
    <br class="clear" />
</div>
</footer>

    </body>
</html>
