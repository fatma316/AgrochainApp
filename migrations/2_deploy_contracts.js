var Migrations = artifacts.require("./Migrations.sol");
var StructStorage = artifacts.require("./StructStorage.sol");
var SupplierContract = artifacts.require("./SupplierContract.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(StructStorage)
  .then(function(){
    return deployer.deploy(SupplierContract, StructStorage.address);
  })
};
