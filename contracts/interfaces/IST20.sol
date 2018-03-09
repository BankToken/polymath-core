pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/token/ERC20/DetailedERC20.sol';

contract IST20 is DetailedERC20 {

    //Swarm hash of security details
    bytes32 public securityDetails;

    //TODO: Should we define status as an emumeration of fixed values?
    function investorStatus(address _investor) public returns (uint8 _status);

    //transfer, transferFrom must respect use respect the result of verifyTransfer
    function verifyTransfer(address _fromAddress, address _toAddress) public returns (bool _allowed);

}