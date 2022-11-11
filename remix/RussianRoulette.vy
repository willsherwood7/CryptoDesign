players: DynArray[address, 100]
losers: DynArray[address, 100]
odds: public(uint256)
playersTurn: public(uint256)
creator: address

@external
def __init__():
    self.creator = msg.sender

@external
def setOdds(oneInThisMany : uint256):
    assert msg.sender == self.creator
    self.odds = oneInThisMany

@external
def addPlayer(player : address):
    for i in self.players:
        assert player == i
    for i in self.losers:
        assert player == i
    self.players.append(player)

@internal
def lose(player : address):
    self.players = []
    self.losers.append(player)

@internal
def random() -> uint256:
    return (block.timestamp % (self.odds + 1) + 1)

@external
def play():
    r : uint256 = self.random()
    a : address = self.players[self.playersTurn]
    if r == 1:
        self.lose(a)
    else:
        self.playersTurn = self.playersTurn + 1

@external
def isALoser(person : address) -> bool:
    for i in self.losers:
        if person == i:
            return True
    return False