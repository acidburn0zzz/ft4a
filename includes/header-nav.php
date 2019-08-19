<!-- ######## header-nav.php ####### -->
<div class="wrapper row2">
  <nav id="topnav">
    <ul class="clear">
	  <?php if($pagetitle == 'Liste des torrents') {echo '<li class="active">';} else {echo '<li>';} ?><a class="font-medium" href="/torrents.php" title="Torrents"><span class="fa fa-download"></span> Liste des torrents</a></li>
	  <?php if($pagetitle == 'Liste des membres') {echo '<li class="active">';} else {echo '<li>';} ?><a class="font-medium" href="/membres.php" title="Membres"><span class="fa fa-user"></span> Liste des membres</a></li>
	  <?php if($pagetitle == 'Stats torrents') {echo '<li class="active">';} else {echo '<li>';} ?><a class="font-medium" href="/stats.php" title="Stats"><span class="fa fa-bar-chart"></span> Stats torrents</a></li>

	<?php /* ?>
	  <?php if(stristr($pagetitle, 'Catégorie') === TRUE) {echo '<li class="active">';} else {echo '<li>';} ?><a class="drop" href="#" title="Catégories"><span class="fa fa-navicon"></span> Catégories</a>

            	<ul class="list underline">
			<?php
			$stmt = $db->query('SELECT catTitle, catSlug FROM blog_cats ORDER BY catTitle ASC');
			while($row = $stmt->fetch()){
				echo '<li><a onchange="document.location.href = this.value" href="/c-'.html($row['catSlug']).'">'.html($row['catTitle']).'</a></li>';
			}
			?>
                <!-- <li><a href="#" title="Cat1">Cat1</a></li> -->
                <!-- <li class="last-child"><a href="#" title="Cat12">Cat12</a></li> -->
            	</ul>
         </li>
	<?php */ ?>

	<?php /* ?>
         <?php if(stristr($pagetitle, 'Licence') === TRUE) {echo '<li class="active">';} else {echo '<li>';} ?><a class="drop" href="#" title="Licences"><span class=" fa fa-creative-commons"></span> Licences</a>
            	<ul class="list underline">
			<?php
			$stmt = $db->query('SELECT licenceTitle, licenceSlug FROM blog_licences ORDER BY licenceTitle ASC');
			while($row = $stmt->fetch()){
				echo '<li><a href="/l-' . html($row['licenceSlug']) . '">' . html($row['licenceTitle']) . '</a></li>';
			}
			?>
          <!-- <li><a href="#" title="Lic10">Lic10</a></li> -->
          <!-- <li class="last-child"><a href="#" title="Lic11">Lic11</a></li> -->
           	</ul>
        </li>
	<?php */ ?>

    </ul>
  </nav>
</div>

</div>
