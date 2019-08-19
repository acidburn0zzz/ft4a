<!-- ########################################## footer.php ############################################# -->
<div class="wrapper row2">
  <div id="footer" class="clear">
    <div class="one_half first">
       <h2 class="footer_title">Bienvenue sur <?php echo SITENAMELONG; ?> !</h2>
       <p class="clear justify"><?php echo $EDITO; ?></p>
    </div>

<!--	
    <div class="one_quarter">
      <h2 class="footer_title">Va falloir trouver autre chose</h2>
    </div>
-->

    <div class="one_quarter">
       <h2 class="footer_title">Archives</h2>
	<!--
      	<form class="rnd5" action="#" method="post">
        <div class="form-input clear">
          <label for="ft_author">Name <span class="required">*</span><br>
            <input type="text" name="ft_author" id="ft_author" value="" size="22">
          </label>
          <label for="ft_email">Email <span class="required">*</span><br>
            <input type="text" name="ft_email" id="ft_email" value="" size="22">
          </label>
        </div>
        <div class="form-message">
          <textarea name="ft_message" id="ft_message" cols="25" rows="10"></textarea>
        </div>
        <p>
          <input type="submit" value="Submit" class="button small orange">
          &nbsp;
          <input type="reset" value="Reset" class="button small grey">
        </p>
      	</form>
	-->

	<select onchange="document.location.href = this.value">
		<option>Archives : Choisir un mois</option>
                <?php
                $stmt = $db->query("SELECT Month(postDate) as Month, Year(postDate) as Year FROM blog_posts_seo GROUP BY Month(postDate), Year(postDate) ORDER BY postDate DESC");
                while($row = $stmt->fetch()){
                	$monthName = date_fr("F", mktime(0, 0, 0, html($row['Month']), 10));
			$year = date_fr(html($row['Year']));
                        $slug = 'a-'.html($row['Month']).'-'.html($row['Year']);
                        echo '<option value="/'.$slug.'">'.$monthName.'&nbsp;'.$year.'</option>';
		}
                ?>
	</select>

	<br><br>

	<h2 class="footer_title">Catégories</h2>

	<select onchange="document.location.href = this.value">
        	<option>Catégories : Choisir une catégorie</option>
                <?php
                $stmt = $db->query('SELECT catTitle, catSlug FROM blog_cats ORDER BY catTitle ASC');
                while($row = $stmt->fetch()){
                	echo '<option value="/c-'.html($row['catSlug']).'">'.html($row['catTitle']).'</option>';
                }
                ?>
	</select>

	<br><br>

	<h2 class="footer_title">Licences</h2>

	<select onchange="document.location.href = this.value">
        	<option>Licences : Choisir une licence</option>
                <?php
                $stmt = $db->query('SELECT licenceTitle, licenceSlug FROM blog_licences ORDER BY licenceTitle ASC');
                while($row = $stmt->fetch()){
                	echo '<option value="/l-'.html($row['licenceSlug']).'">'.html($row['licenceTitle']).'</option>';
                }
                ?>
	</select>

    </div>

    <div class="one_quarter">
      <h2 class="footer_title"><span class="fa fa-rss"></span> citizenz.info : <span class="font-tiny">Blog geek & Libre</span></h2>
	<?php print getRSSContent(); ?>
    </div>

  </div>
</div> <!-- /wrapper row2 -->
<div class="wrapper row4">
  <div id="copyright" class="clear">
    <p class="fl_left">
	<a href="./"><?php echo SITENAMELONG; ?></a> <?php echo COPYDATE; ?> | Template by <a href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a> |  
	<span class="font-small">
	<?php
        // relever le point de départ
        $timestart=microtime(true);
        file_get_contents('http://www.google.fr');
        $timeend=microtime(true);
        $time=$timeend-$timestart;

        //Afficher le temps de chargement
        $page_load_time = number_format($time, 3);
        echo "Page chargée en " . $page_load_time . " sec";
        ?>
	</span>
	<span class="font-small" style="padding-left:570px;"><i class="fa fa-info-circle"></i><i> Version du site : <?php echo SITEVERSION; ?> du <?php echo SITEDATE; ?></i> </span>
    </p>
  </div>
</div>

<a id="backtotop" href="<?php echo $_SERVER['REQUEST_URI']; ?>#top"><i class="fa fa-chevron-up"></i></a>

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/ui/1.10.1/jquery-ui.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>

<script>window.jQuery || document.write('<script src="layout/scripts/jquery-latest.min.js"><\/script>\
<script src="layout/scripts/jquery-ui.min.js"><\/script>')</script>

<script>jQuery(document).ready(function($){ $('img').removeAttr('width height'); });</script>

<script src="layout/scripts/responsiveslides.js-v1.53/responsiveslides.min.js"></script>
<script src="layout/scripts/jquery-mobilemenu.min.js"></script>
<script src="layout/scripts/custom.js"></script>

</body>
</html>
