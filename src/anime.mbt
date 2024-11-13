pub fn animeBlock(self : Game) -> Unit {
  if game.counter > 10 && game.counter < 29 && game.counter % 6 == 0 {
    self.block[0].changeColor_random()
    self.block[1].changeColor_random()
    self.block[2].changeColor_random()
  }
  if game.counter > 28 && game.counter < 41 && game.counter % 4 == 0 {
    self.block[0].changeColor_random()
    self.block[1].changeColor_random()
    self.block[2].changeColor_random()
  }
  if game.counter > 41 && game.counter < 51 && game.counter % 2 == 0 {
    self.block[0].changeColor_random()
    self.block[1].changeColor_random()
    self.block[2].changeColor_random()
  }
}

pub fn animeBall(self : Game) -> Unit {
  if game.counter > 50 && game.counter < 66 {
    self.ball.x += 7
  }
}

pub fn animeProgressBar(self : Game) -> Unit {
  if self.pbar.width < 60 && self.coin>0{
    if self.time % 5 == 0 {
      self.pbar.width += 1
    }
  } else {
    self.pbar.width = 0
  }
}

pub fn animeSprite(self : Game) -> Unit {
  @wasm4.trace("anicounter\{self.counter} \{self.block[1].sprite_block.x}")
  if self.counter >=0 {
    if true {
      self.block[0].sprite_block.x = 20
      self.block[0].sprite_block.y = 30 
      self.block[1].sprite_block.x = 20
      self.block[1].sprite_block.y = 30
      self.block[2].sprite_block.x = 20
      self.block[2].sprite_block.y = 30
    }
  } else {
    self.block[0].sprite_block.x = self.block[0].x
    self.block[0].sprite_block.y = self.block[0].y
    self.block[1].sprite_block.x = self.block[1].x
    self.block[1].sprite_block.y = self.block[1].y
    self.block[2].sprite_block.x = self.block[2].x
    self.block[2].sprite_block.y = self.block[2].y
  }
}
