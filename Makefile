
dotags:
	ctags --langdef=orgmode --langmap=orgmode:.org \
		--regex-orgmode="/<<([^>]+)>>/\1/d,definition/" \
		-f TAGS -e -R .

local:
	cd publish; jekyll
	rsync -azv publish/_site/ ~/Sites/greaterskies/www

