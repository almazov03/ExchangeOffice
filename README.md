## SmartContract - Currency Exchange Office
This repository contains a smart contract for a currency exchange office. The contract is deployed using Remix IDE.

Deployment
To deploy the contract, follow these steps:

## Insructions
* Install Remix IDE and create a new folder.
* Copy the ExchangeOffice.sol and Pashcoin.sol files from this repository to the new folder.
* Compile the ExchangeOffice.sol and Pashcoin.sol files in Remix.
* Deploy the Pashcoin.sol contract by going to Deploy & Run transactions on the left bar in Remix. Choose Pashcoin.sol at the CONTRACT (Compiled by Remix) field, input the VALUE and INITIAL SUPPLY, and then click transact.
* Deploy the ExchangeOffice.sol contract by choosing it at the CONTRACT (Compiled by Remix) field, and then clicking transact.
* Select the Pashcoin contract at Deployed Contracts.
* Select increaseAllowance.
* In the spender field, input the address of your Currency Exchange Office contract.
* In the addedValue field, input the amount you want to add as allowance (e.g. 100).
* You can now buy and sell tokens by entering its address.
* You can also set custom exchange rate.
* Finally, you can destroy the contract by calling the destroy function and passing the owner address.
