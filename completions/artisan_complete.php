<?php

while ($line = fgets(STDIN)) {
	if (preg_match('/^ +([A-z0-9\-\:]+) +([A-z0-9\,\-\:\.\/\\ \(\)]+)/', $line, $matches)) {
		echo "$matches[1]\t$matches[2]\n";
	}
}
