let coin : @wasm4.Sprite = @wasm4.sprite(
  b"\x00\xa0\x02\x00\x0e\xf0\x36\x5c\xd6\x57\xd5\x57\x35\x5c\x0f\xf0",
)

//let random:@random.Rand = @random.Rand::new()

pub struct Block {
  mut width : Int
  mut height : Int
  mut x : Int
  mut y : Int
  mut color : Color
}

pub fn Block::new() -> Block {
  { width: 30, height: 70, x: 0, y: 20, color: Color::new() }
}
pub struct Ball {
  mut width : Int
  mut height : Int
  mut x : Int
  mut y : Int
  mut color : Color
}

pub fn Ball::new() -> Ball {
  { width: 30, height: 30, x: 30, y: 100, color: Color::new() }
}

pub struct Game {
  mut block : Array[Block]
  mut ball : Ball
  mut frame_count : Int
  mut prev_gamepad : @wasm4.GamePad
  mut coin : UInt
  mut time : UInt
  mut delay : UInt
  mut counter : UInt
  mut counterFlag : Bool
}

pub fn Game::new() -> Game {
  {
    block: [Block::new(), Block::new(), Block::new()],
    ball: Ball::new(),
    frame_count: 0,
    prev_gamepad: @wasm4.GamePad::default(),
    coin: 0,
    time: 0,
    delay: 0,
    counter: 60,
    counterFlag: false,
  }
}

pub fn input(self : Game) -> Unit {
  let gamepad = @wasm4.get_gamepad()
  if game.counterFlag {
    game.counter -= 1
    @wasm4.trace("\{self.counter}")
    animeBlock(self)
    animeBall(self)
  }

  if game.counter == 0 {
    self.block[0].changeColor_random()
    self.block[1].changeColor_random()
    self.block[2].changeColor_random()
    game.counter = 60
    game.counterFlag = false
    game.ball.width = 30
    if game.block[0].color.palette == game.block[1].color.palette {
      if game.block[1].color.palette == game.block[2].color.palette {
        winwin()
      }
    } else {
      nothing()
    }
  }
  //@wasm4.trace("getpad: Change=\{gamepad.button_1}, =\{gamepad.button_1}, Change=\{gamepad.button_1}, Change=\{gamepad.button_1}, Change=\{gamepad.button_1}")
  if gamepad != self.prev_gamepad {
    if gamepad.button_1 {
      game.counterFlag = true
      game.coin -=1
    }
  }
  self.prev_gamepad = gamepad 
}

///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
