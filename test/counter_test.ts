import { ethers } from "hardhat";
import { expect } from "chai";
import { ContractTransactionResponse } from "ethers";
import { CounterContract } from "../typechain-types";

describe('Counter', () => {
    let Counter, counter: CounterContract & { deploymentTransaction(): ContractTransactionResponse; };
    beforeEach(async () => {
        Counter = await ethers.getContractFactory('CounterContract');
        counter = await Counter.deploy(1, 'This is my first counting');
    })

  it('Should Show the current Count', async () => {
    expect((await counter.current()).toString());
    console.log((await counter.current()).toString());
  });

  it('Should increase the count', async () => {
    expect((await counter.increment()));
      console.log((await counter.current()).toString());
  });

  it('Should decrease the Count', async () => {
    expect((await counter.decrement()));
      console.log((await counter.current()).toString());
  });
});