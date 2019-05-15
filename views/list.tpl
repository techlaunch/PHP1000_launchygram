<?php include "partials/header.tpl" ?>

<div class="row">
	<div class="col-sm">
		<h1>Images for @<?= $user ?></h1>
	</div>
</div>
<div class="row">
	<?php foreach($images as $img) { ?>
		<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
			<div class="card">
				<img src="images/<?= $img->pic ?>" class="card-img-top" alt="<?= $img->title ?>">
				<div class="card-body">
					<h5 class="card-title">@<?= $img->user ?></h5>
					<p class="card-text"><?= $img->title ?></p>
				</div>
				<div class="card-body">
					<a href="?p=like_submit&id=<?= $img->id ?>&action=likes" class="card-link"><?= $img->likes ?> Like</a>
					<a href="?p=like_submit&id=<?= $img->id ?>&action=dislikes" class="card-link"><?= $img->dislikes ?> Dislike</a>
				</div>
			</div>
		</div>
	<?php } ?>
</div>

<?php include "partials/footer.tpl" ?>