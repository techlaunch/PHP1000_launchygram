<?php include "partials/header.tpl" ?>

<div class="row">
	<div class="col-sm">
		<h1>Images of <?= $fuser=="%" ? "all" : "@$fuser" ?></h1>
		<a href="?p=list&v=table">View Table</a> | <a href="?p=list&v=icon">View Icons</a>
	</div>
</div>
<div class="row">
	<div class="col-sm">
		<div class="form-group">
			<select class="form-control" id="user" onchange="change()">
				<option value="%">All</option>
				<?php foreach($users as $user) { ?>
					<option value="<?= $user->username ?>" <?php if($fuser==$user->username) echo "selected"; ?>><?= $user->username ?></option>
				<?php } ?>
			</select>
		</div>
	</div>
</div>
<div class="row">
	<?php if(empty($images)) { ?>
		<div class="col-12">
			<div class="alert alert-warning">
				<strong>Sorry </strong> No data was found :'-( 
			</div>
		</div>
	<?php } ?>

	<?php foreach($images as $img) { ?>
		<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
			<div class="card">
				<img src="images/<?= $img->pic ?>" class="card-img-top" alt="<?= $img->title ?>">
				<div class="card-body">
					<h5 class="card-title">@<?= $img->user ?></h5>
					<p class="card-text"><?= $img->title ?></p>
				</div>
				<div class="card-body">
					<a href="?p=like_submit&id=<?= $img->id ?>&action=likes&v=icon" class="card-link"><?= $img->likes ?> Like</a>
					<a href="?p=like_submit&id=<?= $img->id ?>&action=dislikes&v=icon" class="card-link"><?= $img->dislikes ?> Dislike</a>
				</div>
			</div>
		</div>
	<?php } ?>
</div>

<script type="text/javascript">
	function change() {
		var user = document.getElementById('user').value;
		window.location.href = "?p=list&v=icon&u=" + user;
	}
</script>

<?php include "partials/footer.tpl" ?>