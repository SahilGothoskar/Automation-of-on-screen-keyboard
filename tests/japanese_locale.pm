use base "basetest";
use strict;
use testapi;

sub run
{

    #TestCase4(a): On screen keyboard vs actual keyboars
    #Caps pressed on the actual keyboard
    wait_idle 100;
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";
    type_string "Now testing in Japanese locale";
    assert_and_click "EnterKey"; 
    assert_and_click "EnterKey";
    send_key "caps";
    assert_and_click "LanguageKey";
    assert_and_click "JapaneseLanguage";
    wait_idle 5;
    
    assert_and_click "ClickAnywhere";
    assert_and_click "d";
    assert_and_click "r";
    assert_and_click "a";
    assert_and_click "g";

    #TestCase4(b): On screen keyboard vs actual keyboars
    #Caps clicked on the on screen keyboard
    send_key "caps"; #pressing again caps key so that it will be stopped
    assert_and_click "CapsKeyOn";
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";
    type_string "drag";
    assert_and_click "CapsKeyOff";


    #TestCase5: Lowercase alphabets
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";
    assert_and_click "p";
    assert_and_click "r";
    assert_and_click "o";
    assert_and_click "b";
    assert_and_click "o";
    assert_and_click "o";
    assert_and_click "k";

    #TestCase6:Uppercase alphabets 
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";
    assert_and_click "CapsKeyOn","right",30,2;
    type_string "CAPS key enabled";
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";
    assert_and_click "G";
    assert_and_click "R";
    assert_and_click "O";
    assert_and_click "O";
    assert_and_click "T";
    assert_and_click "CapsKeyOff";
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";

    #TestCase7:Numbers
    assert_and_click "NumericAndSpecialKey";
    assert_and_click "1";
    assert_and_click "3";
    assert_and_click "4";
    assert_and_click "6";
    assert_and_click "9";
    assert_and_click "CloseNumericAndSpecialKey";
    assert_and_click "EnterKey";	
    assert_and_click "EnterKey";

    #TestCase8: Special Characters
    assert_and_click "NumericAndSpecialKey";
    assert_and_click "+";
    assert_and_click ";";
    assert_and_click ",";
    assert_and_click "MoreSpecialCharacterKey";
    assert_and_click "|";
    assert_and_click "}";
    assert_and_click "CloseMoreSpecialCharacterKey";
    assert_and_click "CloseNumericAndSpecialKey";

    #TestCase9: Using special modification keys
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";
    assert_and_click "CapsKeyOn";
    assert_and_click "R";
    assert_and_click "e"; 
    assert_and_click "d";
    assert_and_click "CapsKeyOn";
    assert_and_click "H";
    assert_and_click "a";
    assert_and_click "t";
    assert_and_click "SpaceBarKey";
    assert_and_click "CapsKeyOn";
    assert_and_click "P";
    assert_and_click "u";
    assert_and_click "n";
    assert_and_click "e";
    assert_and_click "e";
    assert_and_click "BackSpaceKey";
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";
    assert_and_click "CapsKeyOn";
    assert_and_click "M";
    assert_and_click "a";
    assert_and_click "h";
    assert_and_click "a";
    assert_and_click "r";
    assert_and_click "a";
    assert_and_click "s";
    assert_and_click "h";
    assert_and_click "t";
    assert_and_click "r";
    assert_and_click "a";
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";

    #TestCase13: Using the actual as well as on screen keyboard simultaneously
    assert_and_click "CapsKeyOn";
    assert_and_click "T";
    assert_and_click "i";
    assert_and_click "g";
    assert_and_click "e";
    assert_and_click "r";
    type_string " Forest";

    
    #TestCase10: The hide keyboard key
    assert_and_click "EnterKey";
    assert_and_click "HideKeyboardKey";
    wait_idle 5;
    assert_and_click "ClickAnywhere";
    wait_idle 10;

    #TestCase3(a):Controlling on-screen keyboard with the help of universal icon on display
    #Disabling onscreen keyboard
    assert_and_click "UniversalIconInTitleBar";
    assert_and_click "ScreenKeyboardInUniversalIcon";

    #TestCase3(a):Controlling on-screen keyboard with the help of universal icon on display
    #Enabling onscreen keyboard
    assert_and_click "UniversalIconInTitleBar";
    assert_and_click "ScreenKeyboardInUniversalIcon";

}
sub test_flags
{
	return {fatal => 1};
}

1;
