NAME = freefem++-mode.el

PREFIX      = /usr/local
datarootdir = ${PREFIX}/share
emacsdir    = ${datarootdir}/emacs/site-lisp

all: ${NAME:.el=.elc}

.el.elc:
	emacs --batch -f batch-byte-compile $<

install:
	install -d ${DESTDIR}${emacsdir}/freefem++
	install -m644 ${NAME} ${DESTDIR}${emacsdir}/freefem++
	install -m644 ${NAME:.el=.elc} ${DESTDIR}${emacsdir}/freefem++

.PHONY: all install
