<script type="text/javascript" src="engine1/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1" style="margin-bottom:10px">
        
    <div class="ws_images">
        <ul>
            <?php $i=0;
            $slide=$groups->getByParentId(SLIDER);
            while($slideGet=$conn->fetchArray($slide))
            {?>
                <li><img height="400" width="960" src="<?=CMS_GROUPS_DIR.$slideGet['image'];?>" 
                alt="<?=$slideGet['name'];?>" 
                title="" id="wows1_<?=$i;?>"/></li>
                
            <?php $i++; }?>
        </ul>
    </div>
        
    <div class="ws_bullets">
        <div>
            <?php $i=1;
            $slide=$groups->getByParentId(SLIDER);
            while($slideGet=$conn->fetchArray($slide))
            {?>
                <a href="<?=$slideGet['urlname'];?>" title="<?=$slideGet['name'];?>">
               <img height="400" width="960" src="<?=CMS_GROUPS_DIR.$slideGet['image'];?>" 
               alt="<?=$slideGet['name'];?>"/><?=$i;?></a>
            <?php $i++; }?> 
        </div>
    </div>

</div>
<script type="text/javascript" src="engine1/wowslider.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->

<article class="box" id="home_featured21" style="padding-bottom:48px; clear:both;margin-bottom:10px">
    <?php
        $wel=$groups->getById(WELCOME);
        $welGet=$conn->fetchArray($wel);
    ?>
    <div class="block" style="float:none; text-align:justify">
        <h2><?=$welGet['name'];?></h2>
        <p>
            <?=$welGet['shortcontents'];?>
            <br />
            <a href="<?=$welGet['urlname'];?>" class="read_more">Read More</a> 
        </p>
    </div>
  
</article>

<article class="box" id="home_featured21">
    <?php
        $wel=$groups->getById(WELCOME);
        $welGet=$conn->fetchArray($wel);
    ?>
    
    <div class="block"><h2>हाम्रो बारेमा</h2>
        <ul id="list">
            <?
            $about=$groups->getByParentId(ABOUT);
            while($aboutGet=$conn->fetchArray($about))
            {?>
                <li><a href="<?=$aboutGet['urlname'];?>"><?=$aboutGet['name'];?></a></li>
            <? }?>
        </ul>
        <br /><br />
    </div>
    
    <div class="block"><h2>सूचना / समाचार</h2>
        <ul id="list">
            <?
            $news=$groups->getByParentId(NEWS);
            while($newsGet=$conn->fetchArray($news))
            {?>
                <li><a href="<?=$newsGet['urlname'];?>"><?=$newsGet['name'];?></a></li>
            <? }?>
        </ul>
        <br /><br />
    </div>
    <?php
        $msg=$groups->getById(MESSAGE);
        $msgGet=$conn->fetchArray($msg);
    ?>
    <div class="block last"><h2><?=$msgGet['name'];?></h2>
        <p>
            <img src="<?=CMS_GROUPS_DIR.$msgGet['image'];?>" 
            style="float:left; margin:5px 10px 0 0; width:100px; height:95px" />
            <?=$msgGet['shortcontents'];?>
            <br />
            <a href="<?=$msgGet['urlname'];?>" class="read_more">Read More</a>
        </p>
    </div>
    <div class="clear"></div>
</article>