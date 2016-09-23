#!/bin/bash
# Install Packard Bell DiamondScan 1200+ drivers

# create sane folder
if [ !  -d /usr/share/sane ]
    then
        echo "create sane folder /usr/share/sane";
        mkdir /usr/share/sane;
fi

# create gt68xx folder
if [ !  -d /usr/share/sane/gt68xx ]
    then
        echo "create gt68xx scanner folder";
        mkdir /usr/share/sane/gt68xx;
fi

if [ !  -f /usr/share/sane/gt68xx/PS1Dfw.usb  ]
    then
        echo "Scanner firmware not installed";
        if [ -f bin/PS1Dfw.usb ]
        then
            echo "Copying firmware image";
            cp bin/PS1Dfw.usb /usr/share/sane/gt68xx/;
            echo "Done";
        else
	    echo "Scanner firmware could not be located";
        fi
    else
        echo "Scanner firmware already installed";
fi
