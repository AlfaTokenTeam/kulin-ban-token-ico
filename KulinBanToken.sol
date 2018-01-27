pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract KulinBanToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function KulinBanToken(address _owner)  UpgradeableToken(_owner) {
    name = "KulinBanToken";
    symbol = "KBTA";
    totalSupply = 90000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}