FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
	file://hci_531.bin \
	file://LICENSE.da14531 \
"

PACKAGES =+ " \
	${PN}-da14531 \
	${PN}-da14531-license \
"

LIC_FILES_CHKSUM_append = " \
	file://${WORKDIR}/LICENSE.da14531;md5=60f62cce4d4d6b90ab2c11a48be821eb \
"

LICENSE_append = " & Firmware-da14531"
LICENSE_${PN}-da14531 = "Firmware-da14531"

NO_GENERIC_LICENSE[Firmware-da14531] = "${WORKDIR}/LICENSE.da14531"

RDEPENDS_${PN}-da14531 += "${PN}-da14531-license"

do_install_append() {
	install -d ${D}${nonarch_base_libdir}/firmware/renesas
	install -m 0644 ${WORKDIR}/hci_531.bin \
		${D}${nonarch_base_libdir}/firmware/renesas
	install -m 0644 ${WORKDIR}/LICENSE.da14531 \
		${D}${nonarch_base_libdir}/firmware/renesas
}

FILES_${PN}-da14531 = " \
	${nonarch_base_libdir}/firmware/renesas/hci_531.bin \
"

FILES_${PN}-da14531-license = " \
	${nonarch_base_libdir}/firmware/renesas/LICENSE.da14531 \
"
