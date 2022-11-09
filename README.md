# CryptoDesign

1. Block number rewards
  * If block number is divisible by 10, mint 10x currency to the the user
  * If block number is divisible by 100, mint 100x currency to the the user
  * If block number is divisible by 1000, mint 1000x currency to the the user
2. Timing
  * If the block was was made during the night (6pm-6am), multiply the user's reward by 1.5
  * If the block was minted at exactly 12:00:00 am or pm, multiply the user's reward by 12
3. Fee
  * 3% of the largest transaction on each block goes to an address specified in the construtor
