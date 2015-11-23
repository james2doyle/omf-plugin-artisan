function __fish_artisan_complete
	php artisan --no-ansi | sed "1,/Available commands/d" | php (dirname (status -f))/artisan_complete.php
end

function __artisan_complete --on-variable PWD
	complete -x -c artisan -a '(__fish_artisan_complete)'
end

__artisan_complete
