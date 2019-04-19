MAKE_QM="../dev/make_qm.sh"
MAKE_RCC="../dev/make_rcc.sh"
MAKE_PACKAGE="../dev/make_package.sh"
MAKE_INSTALL="../dev/make_install.sh"
MAKE_UPDATE="../dev/make_update.sh"
MAKE_SYNC="../dev/make_sync.sh"
MAKE_UNINSTALL="../dev/make_uninstall.sh"
LANGID=`basename ${CURDIR}`

all: qm rcc

clean:
	rm -f *.qm
	rm -f res.rcc

qm:
	@ ${MAKE_QM} ts/*

rcc:
	@ ${MAKE_RCC} res/*.qrc

package:
	@ ${MAKE_PACKAGE} ${LANGID}

update:
	[ -d "$(CODING)" ]
	@ ${MAKE_UPDATE} $(CODING)

sync:
	[ -d "$(CODING)" ]
	@ ${MAKE_SYNC} $(CODING)

install: all uninstall
	@ ${MAKE_INSTALL}
	
uninstall:
	@ ${MAKE_UNINSTALL} ${LANGID}
