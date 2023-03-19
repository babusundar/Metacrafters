const hre = require("hardhat");

async function main() {
  await hre.run("compile");

  const Event = await hre.ethers.getContractFactory("EventContract");

  const eventContract = await Event.deploy();

  await eventContract.deployed();

  const TxnEvent1 = await eventContract.depoAmt(100);

  const TxnEvent1Rcpt = await TxnEvent1.wait();

  const TxnEvent2 = await eventContract.wdAmt(1);

  const TxnEvent2Rcpt = await TxnEvent2.wait();

  console.log(TxnEvent1Rcpt.events[0].args.sender);
  console.log(TxnEvent1Rcpt.events[0].args.sequence);
  console.log(TxnEvent1Rcpt.events[0].args.avlAmt);
  console.log(TxnEvent1Rcpt.events[0].args.depoAmt);
  console.log(TxnEvent1Rcpt.events[0].args.total);

  console.log(TxnEvent2Rcpt.events[0].args.sender);
  console.log(TxnEvent2Rcpt.events[0].args.sequence);
  console.log(TxnEvent2Rcpt.events[0].args.withdrawAmt);
  console.log(TxnEvent2Rcpt.events[0].args.total);
}

main();
