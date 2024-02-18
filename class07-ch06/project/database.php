<?php
$conn = new mysqli("localhost", "root", "", "r57_jquery_project") or die("Connection failed: " . $conn->connect_error);
$conn->set_charset("utf8");
//alter table product_images ADD FOREIGN KEY (pid) REFERENCES products(id);
//alter table products ADD FOREIGN KEY (uid) REFERENCES users(id);