const Ballot = artifacts.require("Ballot")

module.exports = async function (deployer) {
  const proposalNames = ['Tony', 'Keven', 'Mike']
  await deployer.deploy(Ballot, proposalNames)
  const ballot = await Ballot.deployed()
};
