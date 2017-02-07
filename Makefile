CONFIG := ${CURDIR}/config

install:
	grep -qF 'source ${CONFIG}/bash' ~/.bashrc || echo 'source ${CONFIG}/bash' >> ~/.bashrc
	grep -qF 'source ${CONFIG}/vim'  ~/.vimrc  || echo 'source ${CONFIG}/vim'  >> ~/.vimrc
	git config --global include.path '${CURDIR}/config/git'


