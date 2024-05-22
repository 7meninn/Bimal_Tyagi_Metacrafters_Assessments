// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

// BIMAL TYAGI (22BCS15995)

contract MyToken_Excite {

//       REQUIREMENTS
//    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)

string public nameOfToken = "Excite";
string public abbrvOfToken = "EXC";
uint256 public supplyAvailable = 0;

//    2. Your contract will have a mapping of addresses to balances (address => uint)

mapping (address => uint256) individualBalance;

/*    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount*/

function mintExcite (address creditingWallet, uint numberOfCoins) public
    {
        individualBalance[creditingWallet] += numberOfCoins;
        supplyAvailable += numberOfCoins;
    }

/*    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.*/

/*    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.*/

function burnExcite (address whichWallet, uint numberOfCoins) public
    {
        if (individualBalance[whichWallet] >= numberOfCoins)
        {
            individualBalance[whichWallet] -= numberOfCoins;
            supplyAvailable -= numberOfCoins;
        }
    }
}
