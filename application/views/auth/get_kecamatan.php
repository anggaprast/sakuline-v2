<?php

require_once('db_connect.php');

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $result = $db->query("select * from kabupaten where id_provinsi='$id'");
    ?>
    <option value="0">Pilih kabupaten</option>
    <?php while ($data = $result->fetch_object()): ?>
        <option value="<?php echo $data->id ?>"><?php echo $data->nama ?></option>
    <?php
    endwhile;
}