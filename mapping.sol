// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Mapping  {
    
    // definir un mapping de direcciones y enteros
    mapping(address => uint256) balances;
    // función para establecer el balance en el mapping
   function setBalance(address _addr) public {
    uint256 arbBalance = _addr.balance;
    balances[_addr] = arbBalance;
   }

    // función consultar el valor del balance de una dirección en particular
    function getBalance(address _addr) public view returns (uint256){
        return balances[_addr];
    }
    

    // función me permite es eliminar un valor 
    function remove (address  _adrdr) public {
        delete balances[_adrdr];
    }

    // función llama a otra función para actualizar los balances de un mapping
   function updateBalanceArb(address _addr) public {
    setBalance(_addr);
   }
}
