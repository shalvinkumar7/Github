<html>
	<body>
		<?php
			$string = '"Aap Hamare ho" Skyfall'
			echo "$string";
			for($i=0;$i<strlen($string));$i++){
				if($string[$i] == '"'){
					$string[$i] = '';
					echo $i."\n";
				}
			}
		?>
	</body>
</html>