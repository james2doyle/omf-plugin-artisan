function init -a path --on-event init_artisan
	source (dirname (status -f))/completions/artisan.fish
	source (dirname (status -f))/functions/artisan.fish
end
