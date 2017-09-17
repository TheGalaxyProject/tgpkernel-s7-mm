#!/sbin/sh
# Variant check script by djb77
# Inspired by Tkkg1994

# BOOTLOADER CHECKS
# -----------------
getprop ro.boot.bootloader >> /tmp/variant_model
if grep -q G930F /tmp/variant_model;
then
	echo "install=1" > /tmp/aroma/g930x.prop
fi
if grep -q G930FD /tmp/variant_model;
then
	echo "install=1" > /tmp/aroma/g930x.prop
fi
if grep -q G930K /tmp/variant_model;
then
	echo "install=1" > /tmp/aroma/g930x.prop
fi
if grep -q G930L /tmp/variant_model;
then
	echo "install=1" > /tmp/aroma/g930x.prop
fi
if grep -q G930S /tmp/variant_model;
then
	echo "install=1" > /tmp/aroma/g930x.prop
fi
if grep -q G930W8 /tmp/variant_model;
then
	echo "install=1" > /tmp/aroma/g930x.prop
fi
if grep -q G935F /tmp/variant_model;
then
	echo "install=1" > /tmp/aroma/g935x.prop
fi
if grep -q G935FD /tmp/variant_model;
then
	echo "install=1" > /tmp/aroma/g935x.prop
fi
if grep -q G935K /tmp/variant_model;
then
	echo "install=1" > /tmp/aroma/g935x.prop
fi
if grep -q G935L /tmp/variant_model;
then
	echo "install=1" > /tmp/aroma/g935x.prop
fi
if grep -q G935S /tmp/variant_model;
then
	echo "install=1" > /tmp/aroma/g935x.prop
fi
if grep -q G935W8 /tmp/variant_model;
then
	echo "install=1" > /tmp/aroma/g935x.prop
fi

exit 10

