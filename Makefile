# {{{1 Variables
#      =========
VPATH = . assets
vpath %.html . _includes _layouts _site
vpath %.scss _sass
vpath %.yaml . _spec _data

PANDOC_VERSION  := 2.18
JEKYLL_VERSION  := 4.2.0
JEKYLL := palazzo/jekyll-tufte:$(JEKYLL_VERSION)-$(PANDOC_VERSION)

# {{{1 Recipes
#      =======
.PHONY : _site
_site :
	@docker run --rm -v "`pwd`:/srv/jekyll" \
		$(JEKYLL) /bin/bash -c "chmod 777 /srv/jekyll \
		&& jekyll build --future"

.PHONY : serve
serve :
	@docker run --rm -v "`pwd`:/srv/jekyll" \
		-h "0.0.0.0:127.0.0.1" -p "4000:4000" \
		$(JEKYLL) jekyll serve --future

# vim: set foldmethod=marker shiftwidth=2 tabstop=2 :
