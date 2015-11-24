function __fish_artisan_complete
	php artisan --no-ansi | sed "1,/Available commands/d" | awk 'match($0, /^ +(\S+)  +(.+)/, a) {print a[1] "\t" a[2]}'
end

function __artisan_complete --on-variable PWD
	complete -x -c artisan -a '(__fish_artisan_complete)'
end

__artisan_complete
