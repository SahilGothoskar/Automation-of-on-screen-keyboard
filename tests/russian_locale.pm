use base "basetest";
use strict;
use testapi;
#Capital R is preceded with all the assert_ functions because russian keyboard layout is appeared instead of english layout as of japanese 
sub run
{
    
    wait_idle 100;
    send_key "ctrl-t";
    assert_and_click "ClickAnywhere2";  
    assert_and_click "LanguageKey";
    assert_and_click "EnglishLanguage";
    type_string "Now testing in Russian locale";
    assert_and_click "ClickAnywhere2";  
    assert_and_click "EnterKey";
    send_key "caps";
    assert_and_click "LanguageKey";
    assert_and_click "RussianLanguage";
    assert_and_click "ClickAnywhere2";
    wait_idle 5;
    #TestCase4(a): On screen keyboard vs actual keyboars
    #Caps pressed on the actual keyboard
    send_key "caps";
    assert_and_click "Rd";
    assert_and_click "Rr";
    assert_and_click "Ra";
    assert_and_click "Rg";

    #TestCase4(b): On screen keyboard vs actual keyboars
    #Caps clicked on the on screen keyboard
    send_key "caps"; #pressing again caps key so that it will be stopped
    assert_and_click "CapsKeyOn";
    assert_and_click "REnterKey";
    type_string "drag";
    assert_and_click "CapsKeyOff";


    #TestCase5: Lowercase alphabets
    assert_and_click "REnterKey";
    assert_and_click "Rp";
    assert_and_click "Rr";
    assert_and_click "Ro";
    assert_and_click "Rb";
    assert_and_click "Ro";
    assert_and_click "Ro";
    assert_and_click "Rk";

    #TestCase6:Uppercase alphabets 
    assert_and_click "REnterKey";
    assert_and_click "CapsKeyOn","right",30,2;
    type_string "CAPS key enabled";
    assert_and_click "REnterKey";
    assert_and_click "RG";
    assert_and_click "RR";
    assert_and_click "RO";
    assert_and_click "RO";
    assert_and_click "RT";
    assert_and_click "CapsKeyOff";
    assert_and_click "REnterKey";

    #TestCase7:Numbers
    assert_and_click "NumericAndSpecialKey";
    assert_and_click "1";
    assert_and_click "3";
    assert_and_click "4";
    assert_and_click "6";
    assert_and_click "9";
    assert_and_click "CloseNumericAndSpecialKey";
    assert_and_click "REnterKey";	

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
    assert_and_click "REnterKey";
    assert_and_click "CapsKeyOn";
    assert_and_click "RR";
    assert_and_click "Re"; 
    assert_and_click "Rd";
    assert_and_click "CapsKeyOn";
    assert_and_click "RH";
    assert_and_click "Ra";
    assert_and_click "Rt";
    assert_and_click "SpaceBarKey";
    assert_and_click "CapsKeyOn";
    assert_and_click "RP";
    assert_and_click "Ru";
    assert_and_click "Rn";
    assert_and_click "Re";
    assert_and_click "Re";
    assert_and_click "BackSpaceKey";
    assert_and_click "REnterKey";
    assert_and_click "CapsKeyOn";
    assert_and_click "RM";
    assert_and_click "Ra";
    assert_and_click "Rh";
    assert_and_click "Ra";
    assert_and_click "Rr";
    assert_and_click "Ra";
    assert_and_click "Rs";
    assert_and_click "Rh";
    assert_and_click "Rt";
    assert_and_click "Rr";
    assert_and_click "Ra";
    assert_and_click "REnterKey";


    #TestCase13: Using the actual as well as on screen keyboard simultaneously
    assert_and_click "CapsKeyOn";
    assert_and_click "RT";
    assert_and_click "Ri";
    assert_and_click "Rg";
    assert_and_click "Re";
    assert_and_click "Rr";
    type_string " Forest";
    assert_and_click "REnterKey";

    #TestCase10: The hide keyboard key
    assert_and_click "REnterKey";
    assert_and_click "HideKeyboardKey";
    wait_idle 5;
    assert_and_click "ClickAnywhere2";
    wait_idle 10;

    
}
sub test_flags
{
	return {fatal => 1};
}

1;
