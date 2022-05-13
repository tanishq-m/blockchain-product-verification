//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


contract Transactions {
    uint256 transactionsCount;

    event Transfer(address from , address receiver , uint amount , string message ,uint256 timestamp , string keywoard);
 

 // similar to object
    struct TransferStruct{
         address sender; 
         address receiver; 
         uint amount ;
         string message ;
         uint256 timestamp ;
        string keywoard;
       }

    TransferStruct[]  transactions;

    function addToBlockchain(address payable receiver , uint amount ,string memory message , string memory keyword) public {
       transactionsCount +=1;
       transactions.push(TransferStruct(msg.sender , receiver , amount , message , block.timestamp , keyword));

       emit Transfer(msg.sender , receiver , amount , message , block.timestamp , keyword);
    }

    function getAllTransactions () public  view returns ( TransferStruct[] memory){
     return transactions;
    }

    function getTransationCount() public view returns (uint256) {
     return transactionsCount;
    } 
    
}
