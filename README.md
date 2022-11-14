# CryptoDesign

I edited these to make them work with a coin based on a proof-of-stake chain.

1. Block number minting
  * If block number is divisible by 10, mint 10x the amount
  * If block number is divisible by 100, mint 100x the amount
  * If block number is divisible by 1000, mint 1000x the amount
2. Timing (enviornmentally friendly)
  * If the block was was made during the night (6pm-6am), multiply the user's reward by 1.5
  * If the block was minted at exactly 12:00:00 am, multiply the user's reward by 12
3. Fee
  *  Every time a transaction of coins happens, the same amount of coins are given to an address defined in the constructor.
