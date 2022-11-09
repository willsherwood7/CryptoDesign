# CryptoDesign

1. Block number rewards
  * If block number is divisible by 10, give 10x reward
  * If block number is divisible by 100, give 100x reward
  * If block number is divisible by 1000, give 1000x reward
2. Timing (enviornmentally friendly)
  * If the block was was made during the night (6pm-6am), multiply the user's reward by 1.5
  * If the block was minted at exactly 12:00:00 am, multiply the user's reward by 12
3. Fee
  * 3% of the largest transaction on each block goes to an address specified in the construtor
