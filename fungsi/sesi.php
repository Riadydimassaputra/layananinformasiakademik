<?php

if (empty($_SESSION['idsppapp']) and empty($_SESSION['status'])) {
	header("location: ../");
}
