FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
	file://hci_531.bin \
"

PACKAGES =+ " \
	${PN}-da14531 \
"

do_install_append() {
	install -d ${D}${nonarch_base_libdir}/firmware/renesas
	install -m 0644 ${WORKDIR}/hci_531.bin \
		${D}${nonarch_base_libdir}/firmware/renesas
}

FILES_${PN}-da14531 = " \
	${nonarch_base_libdir}/firmware/renesas/hci_531.bin \
"

