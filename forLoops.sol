// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract loops{
    // uint256 public value; 
    uint256[] public  values;

   function add(uint256 x) public   {

    values.push(x);
    
   }


   function calcTotal() public view returns(uint){

    uint total;

    for (uint256 i =0; i<values.length; i++) 
    {
        total += values[i];
    }

    return total;
   }

   function retrieve() public view returns(uint256[] memory){
    return values;
   }
}
