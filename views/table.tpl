<?php include "partials/header.tpl" ?>

<style type="text/css">
	.thumbnail {
		width: 50px;
		height: 50px;
		border-radius: 25px;
	}
</style>

<div class="row">
	<div class="col-sm">
		<h1>List for @<?= $user ?></h1>
		<a href="?p=list&v=table">View Table</a> | <a href="?p=list&v=icon">View Icons</a>
	</div>
</div>
<div class="row">
	<div class="col-sm">
		<table  id="myTable" class="table">
			<thead>
				<tr>
					<th>Image</th>
					<th>Creator</th>
					<th>Description</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($images as $img) { ?>
				<tr>
					<td><img src="images/<?= $img->pic ?>" class="thumbnail" alt="<?= $img->title ?>"></td>
					<td>@<?= $img->user ?></td>
					<td><?= $img->title ?></td>
					<td>
						<a href="?p=like_submit&id=<?= $img->id ?>&action=likes&v=table" class="btn btn-sm btn-primary"><?= $img->likes ?> Like</a>
						<a href="?p=like_submit&id=<?= $img->id ?>&action=dislikes&v=table" class="btn btn-sm btn-danger"><?= $img->dislikes ?> Dislike</a>
					</td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		$('#myTable').DataTable();
	});
</script>

<?php include "partials/footer.tpl" ?>