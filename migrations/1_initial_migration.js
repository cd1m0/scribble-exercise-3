const Migrations = artifacts.require("Migrations");
const Foo = artifacts.require("Foo");

module.exports = deployer => {
    deployer.deploy(Migrations);
    deployer.deploy(Foo);
};
