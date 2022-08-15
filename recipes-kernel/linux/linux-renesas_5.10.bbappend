FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append += " \
	file://bt-patches.scc \
	file://bt.cfg \
"
