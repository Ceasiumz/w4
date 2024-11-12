pub fn animeBlock(self:Game) -> Unit{
  if game.counter >10 && game.counter < 29 && game.counter%6==0{
    self.block[0].changeColor_random()
    self.block[1].changeColor_random()
    self.block[2].changeColor_random()
    
  }
  if game.counter >28 && game.counter < 41 && game.counter%4==0{
    self.block[0].changeColor_random()
    self.block[1].changeColor_random()
    self.block[2].changeColor_random()
  }
  if game.counter >41 && game.counter < 51 && game.counter%2==0{
    self.block[0].changeColor_random()
    self.block[1].changeColor_random()
    self.block[2].changeColor_random()
  }
}

pub fn animeBall(self:Game) -> Unit{
  if game.counter >50 && game.counter < 61 {
    self.ball.width += 9 
  }
  
}