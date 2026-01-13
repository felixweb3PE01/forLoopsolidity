// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract loops{
    // uint256 public value; 
    uint256[] public  values;

    // add values
   function add(uint256 x) public   {

    values.push(x);
    
   }

   // Sum of Total[]
   function calcTotal() public view returns(uint){

    uint total;

    for (uint256 i =0; i<values.length; i++) 
    {
        total += values[i];
    }

    return total;
   }

   // All Values[]
   function retrieve() public view returns(uint256[] memory){
    return values;
   }
   // COunt
    function retrieveCount() public view returns(uint256){
     return values.length;
    }
    // Maximum
    function getMax() view public returns (uint256) {

       uint256 maxValue = values[0];
       for (uint256 i=1; i< values.length; i++)
       if(values[i]>maxValue){
        maxValue=values[i];
       }
       return maxValue;
    }

}

