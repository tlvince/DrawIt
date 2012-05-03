site=http://www.drchip.org/astronaut/vim

all: update

update:
	wget "$(site)/vbafiles/DrawIt.vba.gz"
	vim -c "UseVimball ." -c ":q" DrawIt.vba.gz

clean:
	git clean -fdx

.PHONY: all update
