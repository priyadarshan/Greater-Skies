
dotags:
	ctags --langdef=orgmode --langmap=orgmode:.org \
		--regex-orgmode="/<<([^>]+)>>/\1/d,definition/" \
		-f TAGS -e -R .

jekyll:
	cd publish; jekyll

local:  jekyll
	rsync -azv publish/_site/ ~/Sites/greaterskies/www

send:   jekyll
	rsync -azv -e 'ssh -l greaterskies' publish/_site/ juanreyero.com:www


