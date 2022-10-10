This README file contains information on the contents of the meta-da14531 layer.

The DA14531 is a ultra-low power Bluetooth 5.1 System-on-Chip.
The DA14531 must either be programmed with a firmware that allows on-the-fly
programming or with a firmware with HCI support (e.g.
[hci\_531.bin](recipes-kernel/linux-firmware/linux-firmware/hci_531.bin)).

Dependencies
============

  URI: https://github.com/renesas-rz/meta-barcode-poc.git \
  tag: v2.0 \
  Notes: Please read file README.md for the full list of dependencies

Integration notes
=================

This meta-layer contains the patches required to allow Linux to deal with
the DA14531, however to get a design to actually use the DA14531 make sure
your BSP provides the necessary changes to the device tree.
It's also recommended to add the below lines to your machine **.conf** file.
```
MACHINE_FEATURES += "bluetooth"
MACHINE_ESSENTIAL_EXTRA_RDEPENDS += " \
	linux-firmware-da14531 \
"
```
