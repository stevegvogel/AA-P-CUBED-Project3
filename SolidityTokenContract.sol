pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
contract MyContract {
    using SafeMath for uint256;
    uint256 public value;
    
    function calculate(uint _value1, uint _value2) public {
        value = _value1.div(_value2);
    }
}    
    
contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;

    function mint() public  {
        balances[tx.origin] ++;
    }
}

contract MyContract {      
    address payable wallet;
    address public token;

    event Purchase(address indexed _buyer, uint256 _amount);

    constructor(address payable _wallet, address _token) public {
        wallet = _wallet;
        token = _token;
    }  
        
   // function() external payable {
     //   buyToken ();
    //}
    
    function buyToken() public payable {
        buyToken();
    }   
    
    function buyToken() external payable {
        //buyToken()   
        balances[msg.sender] += 1;
        wallet.transfer(msg.value);
    }
} 