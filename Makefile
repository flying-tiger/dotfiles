CONFIG := ${CURDIR}/config
OS := $(shell uname)

ifeq (${OS},Linux)
  FONT_DIR := ~/.fonts
else
  FONT_DIR := ~/Library/Fonts
endif

install:
	grep -qF 'source ${CONFIG}/bash' ~/.bashrc || echo 'source ${CONFIG}/bash' >> ~/.bashrc
	grep -qF 'source ${CONFIG}/vim'  ~/.vimrc  || echo 'source ${CONFIG}/vim'  >> ~/.vimrc
	mkdir -p ~/.vim/syntax && cp ${CONFIG}/vim_syntax/fortran.vim ~/.vim/syntax
	git config --global include.path '${CURDIR}/config/git'
	mkdir -p ${FONT_DIR} && cp fonts/* ${FONT_DIR}
	ln -sf ${CONFIG}/tecplot ~/.tecplot.cfg


