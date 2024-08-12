// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;
 
contract DummyData {
 
    struct Ekin {
        uint ada;
        uint parsel;
        uint verim;
        string kisi;
        uint ekim;
        uint hektar;
    }
 
    uint public kalan;
    Ekin newEkin;
 
    event Sell(uint kalan);
 
    constructor(uint ada, uint parsel, uint verim, string memory kisi, uint ekim, uint hektar) payable {
        newEkin = Ekin(ada, parsel, verim, kisi, ekim, hektar);
        kalan = urun();
    }
 
    function queryAda() public view returns (uint) {
        return newEkin.ada;
    }
 
    function queryParsel() public view returns (uint) {
        return newEkin.parsel;
    }
 
    function queryVerim() public view returns (uint) {
        return newEkin.verim;
    }
 
    function queryKisi() public view returns (string memory) {
        return newEkin.kisi;
    }
 
    function queryEkim() public view returns (uint) {
        return newEkin.ekim;
    }
 
    function queryHektar() public view returns (uint) {
        return newEkin.hektar;
    }
 
    function urun() public returns (uint) {
        uint urun = newEkin.hektar * newEkin.verim;
        return urun;
    }
 
    function satis(uint satis) public returns (uint) {
 
        require(kalan - satis > 0, "fail");
        kalan = kalan - satis;
        emit Sell(kalan);
        return kalan;
    }
}