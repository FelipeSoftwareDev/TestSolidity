// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MeuContrato {
    uint public meuUint;
    string public minhaString;
    bool public meuBool;
    address public meuEndereco;
    uint[] public meuArray;

    function setUint(uint _meuUint) private  {
        meuUint = _meuUint;
    }

    function setString(string memory _minhaString) private {
        minhaString = _minhaString;
    }

    function setBool(bool _meuBool) private {
          meuBool  = _meuBool;
    }

    function setEndereco(address _meuEndereco) private {
        meuEndereco = _meuEndereco;
    }

    function adicionarAoArray(uint _valor) public  {
        meuArray.push(_valor);
    }

    function executarFuncao() public  {
        setUint(10);
        setString("Hello Wordl!");
        setBool(true);
        setEndereco(address(0x1123456789012345678901234567890));
        adicionarAoArray(5); // index [0]
        adicionarAoArray(10); // index[1]
        adicionarAoArray(15); // index[2]
    }

    function enviarValor()external payable  {
        payable(address(this));
        
    }

    function saldoContrato() public view returns (uint){
        return address(this).balance;
    }
}
