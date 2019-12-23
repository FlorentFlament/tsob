<?php

                //lda ss_sin+POSSIN
                //sta ss_sin+POSSIN-1

for($i=2;$i<30;$i++)
{
	echo("lda ss_sin+$".(dechex($i))."\r\n");
	echo("sta ss_sin+$".(dechex($i-1))."\r\n");
}

?>