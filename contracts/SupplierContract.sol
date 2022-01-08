pragma solidity ^0.5.0;

contract SupplierContract {
uint256 public supCounter =1;
struct supplier{
    bytes lotno;
    bytes32 checkdate;
}

mapping (bytes => supplier) s1;
supplier[] public sm;

function check(bytes memory lot, bytes32 d) public {
    SupplierContract.supplier memory snew = supplier(lot,d);
    s1[lot] = snew;
    sm.push(snew);
    supCounter++; 
}

function getcheck(bytes memory l) public view returns(bytes memory, bytes32) {
        return (s1[l].lotno,s1[l].checkdate);
    }
}