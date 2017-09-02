pragma solidity 0.4.8;

contract ACoin{
  mapping (address => unint256) public balanceOf;
  // balanceOf[address] = 5;

  function ACoin(unint256 initialSupply){
    balanceOf[msg.sender] = initialSupply;
  }

  function transfer(address _to, unint256 _value) {
    balanceOf[msg.sender] -= _value;
    balanceOf[to] += _value;
  }
}
