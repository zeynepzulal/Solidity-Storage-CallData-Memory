// SPDX-License-Identifier:MIT

pragma solidity ^0.8.17;

contract StorageCallDataMemory{
    /*
    storage : store on blockchain.   
        --> max maliyet

    memory: gecici olarak depolanir,fonksiyon islem bitirdikten sonra silinir.   
        --> storage göre daha az maliyetli

    call data: özel bir bellek bölgesi ve sadece read islemi icin kullanilabilir.   -
        --> min maliyet



    string , array , sturct ifadelerin memory ile tanimlanmasi gerekir.

    string -> çok bellek harcar ve gas maliyeti yüksektir.
    */

    uint storedData;  // default olarak storage da depolaniyor.
    string name;  // storage
    struct Person{ //storage
        string name;
    }

    function setName(string calldata _name) public {
    name = _name;
    }

}