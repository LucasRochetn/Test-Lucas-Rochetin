<?php

function connect_db($host, $username, $passwd, $port, $db)
{
	$dbh = NULL;

	try
	{
		$dbh = new PDO('mysql:host='.$host.';port='.$port.';dbname='.$db, $username, $passwd);
	}
	catch (PDOException $e)
	{
	    $err_msg = "PDO ERROR: ".$e->getMessage()." storage in ".ERROR_LOG_FILE."\n";
	    echo $err_msg;
	    file_put_contents(ERROR_LOG_FILE, $err_msg, FILE_APPEND);

	    return false;
	}

	return $dbh;
}
?>