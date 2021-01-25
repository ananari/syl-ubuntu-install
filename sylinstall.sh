#!/bin/bash

# Made by Anaïs Ahmed 24-01-2021

if [ -f ~/usr/share/X11/xkb/symbols/syl ]; then
  echo "~/usr/share/X11/xkb/symbols/syl already exists - have you done this before?"; exit 1;
else
  cat <<EOF > ~/usr/share/X11/xkb/symbols/syl
//
// XKB symbol :: Syloti Nagri InScript-based Layout
// Ref: N/A
//
// Author: Anais Ahmed <anaismahmed at gmail.com>
// Created: 06-10-2020
// Last Updated: 06-10-2020
// Version: 1.00.0
//
//

default  partial alphanumeric_keys
xkb_symbols "basic" {
   name[Group1]= "Sylheti";
   key <ESC>  { [ Escape ] };

// numbers
   key <TLDE> { [ grave,	asciitilde,	voidsymbol,	voidsymbol ] };
   key <AE01> { [ 0x10009E7,	exclam,		0x100A828,	voidsymbol ] };
   key <AE02> { [ 0x10009E8,	at,		0x100A829,	voidsymbol ] };
   key <AE03> { [ 0x10009E9,	numbersign,	0x100A82A,	voidsymbol ] };
   key <AE04> { [ 0x10009EA,	dollar,		0x10009F3,	0x10009F2  ] };
   key <AE05> { [ 0x10009EB,	percent,	0x100A82B,	voidsymbol ] };
   key <AE06> { [ 0x10009EC,	asciicircum,	0x1002055,	voidsymbol  ] };
   key <AE07> { [ 0x10009ED,	ampersand,	voidsymbol,	voidsymbol ] };
   key <AE08> { [ 0x10009EE,	asterisk,	voidsymbol,	voidsymbol ] };
   key <AE09> { [ 0x10009EF,	parenleft,	voidsymbol,	voidsymbol ] };
   key <AE10> { [ 0x10009E6,	parenright,	voidsymbol,	voidsymbol ] };
   key <AE11> { [ minus,	underscore,	voidsymbol,	voidsymbol ] };
   key <AE12> { [ equal,	plus,		voidsymbol,	voidsymbol ] };
   key <BKSP> { [ BackSpace ] };

// tab, q to ] 
   key <TAB>  { [ Tab,  ISO_Left_Tab ] };
   key <AD01> { [ voidsymbol,	voidsymbol,	voidsymbol,	voidsymbol ] };
   key <AD02> { [ 0x100A802,	voidsymbol,	voidsymbol,	voidsymbol ] };
   key <AD03> { [ 0x100A823,	0x100A800,	voidsymbol,	voidsymbol ] };
   key <AD04> { [ voidsymbol,	voidsymbol,	voidsymbol,	voidsymbol ] };
   key <AD05> { [ voidsymbol,	voidsymbol,	voidsymbol,	voidsymbol ] };
   key <AD06> { [ 0x100A81B,	0x100A81C,	voidsymbol,	voidsymbol ] };
   key <AD07> { [ 0x100A822,	voidsymbol,	voidsymbol,	voidsymbol ] };
   key <AD08> { [ 0x100A809,	0x100A80A,	voidsymbol,	voidsymbol ] };
   key <AD09> { [ 0x100A816,	0x100A817,	voidsymbol,	voidsymbol ] };
   key <AD10> { [ 0x100A80E,	0x100A80F,	voidsymbol,	voidsymbol ] };
   key <AD11> { [ 0x100A812,	0x100A813,	voidsymbol,	voidsymbol ] };
   key <AD12> { [ bracketleft,	braceleft,	bracketright,	braceright ] };
   key <RTRN> { [ Return ] };

// caps, a to ' 
// key <CAPS> { [ Caps_Lock ] };
   key <AC01> { [ 0x100A827,	0x100A805,	voidsymbol,	voidsymbol  ] };
   key <AC02> { [ 0x100A826,	0x100A804,	voidsymbol,	voidsymbol  ] };
   key <AC03> { [ 0x100A806,	0x100A82C,	voidsymbol,	voidsymbol  ] };
   key <AC04> { [ 0x100A824,	0x100A801,	voidsymbol,	voidsymbol  ] };
   key <AC05> { [ 0x100A825,	0x100A803,	voidsymbol,	voidsymbol ] };
   key <AC06> { [ 0x100A819,	0x100A81A,	voidsymbol,	voidsymbol ] };
   key <AC07> { [ 0x100A81E,	0x100A820,	voidsymbol,	voidsymbol ] };
   key <AC08> { [ 0x100A807,	0x100A808,	voidsymbol,	voidsymbol ] };
   key <AC09> { [ 0x100A814,	0x100A815,	voidsymbol,	voidsymbol  ] };
   key <AC10> { [ 0x100A80C,	0x100A80D,	voidsymbol,	voidsymbol ] };
   key <AC11> { [ 0x100A810,	0x100A811,	voidsymbol,	voidsymbol ] };

// shift, z to /
// key <LFSH> { [ Shift_L ] };
   key <AB01> { [ semicolon,	colon,		voidsymbol,	voidsymbol ] };
   key <AB02> { [ 0x100A80B,	voidsymbol,	voidsymbol,	voidsymbol  ] };
   key <AB03> { [ 0x100A81D,	voidsymbol,	voidsymbol,	voidsymbol  ] };
   key <AB04> { [ 0x100A818,	voidsymbol,	voidsymbol,	voidsymbol ] };
   key <AB05> { [ apostrophe,	quotedbl,	voidsymbol,	voidsymbol ] };
   key <AB06> { [ 0x100A81F,	voidsymbol,	voidsymbol,	voidsymbol ] };
   key <AB07> { [ 0x100A821,	voidsymbol,	voidsymbol,	voidsymbol ] };
   key <AB08> { [ comma,	less,		voidsymbol,	voidsymbol ] };
   key <AB09> { [ period,	greater,	voidsymbol,	voidsymbol ] };
   key <AB10> { [ slash,	question,	voidsymbol,	voidsymbol ] };
   key <BKSL> { [ backslash,	bar,		voidsymbol,	voidsymbol ] };

// third level with right-Alt
    include "level3(ralt_switch)"

};
EOF
fi

if grep -q "Syloti Nagri" ~/usr/share/X11/xkb/rules/evdev.lst; then
  echo "Syloti Nagri already exists in ~/usr/share/X11/xkb/rules/evdev.lst - have you done this before?"; exit 1;
else
  sed -i -e "0, /Turkmen/{s/Turkmen/Turkmen\n  syl             Syloti Nagri/}" ~/usr/share/X11/xkb/rules/evdev.lst
fi


if grep -q "Syloti Nagri" ~/usr/share/X11/xkb/rules/evdev.xml; then
  echo "Syloti Nagri already exists in ~/usr/share/X11/xkb/rules/evdev.xml - have you done this before?"; exit 1;
else
  sed -i -e "0, /<\/layout>/{s/<\/layout>/<\/layout>\n    <layout>\n      <configItem>\n        <name>syl<\/name>\n        <shortDescription>syl<\/shortDescription>\n        <description>Syloti Nagri<\/description>\n        <languageList>\n          <iso639Id>syl<\/iso639Id>\n        <\/languageList>\n      <\/configItem>\n      <variantList\/>\n    <\/layout>/}" ~/usr/share/X11/xkb/rules/evdev.xml
fi


echo "All done! Now log out and back in for the changes to take full effect."
