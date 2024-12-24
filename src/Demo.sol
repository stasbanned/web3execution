// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Demo {
		// BOOLEAN:
		
    // bool public myBool = true; // state variable

    // function myFunc(bool _inputBool) public {
    //     bool localBool = false; // local
    //     localBool && _inputBool // AND
    //     localBool || _inputBool // OR
    //     localBool == _inputBool // EQUAL
    //     localBool != _inputBool // NOT EQUAL
    //     !localBool // NOT
		
    //     if(_inputBool || localBool) {
    //     }
    // }
		
		
		// UNSINGED INTEGERS
    // uint public myUint = 42;
    // 2 ** 256
		
    // uint8 public mySmallUint = 2;
    // 2 ** 8 = 256
    // 0 ---> (256-1)
    // uint16
    // uint24
    // uint32
    // ...uint256
		
		// SIGNED INTEGERS
    // int public myInt = -42;
    // int8 public mySmallInt = -1;
    // 2 ** 7 = 128
    // -128 --> (128-1)
		
		
		// MIN-MAX
		// uint public maximum;
    // function getMax() public {
    //     maximum = type(uint8).max;
    // }
		
		
		// MATH
		// function math(uint _inputUint) public {
    //     uint localUint = 42;
    //     localUint + 1;
    //     localUint - 1;
    //     localUint * 2;
    //     localUint / 2;
    //     localUint ** 3;
    //     localUint % 3;
    //     -myInt;

    //     localUint == 1;
    //     localUint != 1;
    //     localUint > 1;
    //     localUint >= 1;
    //     localUint < 2;
    //     localUint <= 2;
    // }
		
		
		// UNCHECKED
    uint8 public myVal = 1;

    function dec() public {
        unchecked {
            myVal--;
        }
    }
}