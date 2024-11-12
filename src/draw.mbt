struct Position {
  mut x : Int
  mut y : Int
}

struct Color {
  mut index : UInt
  mut palette : UInt
}

pub fn Color::new() -> Color {
  { index: 1, palette: 2 }
}

let randomer : @random.Rand = @random.Rand::new()

pub fn Color::newRandom() -> Color {
  { index: randomer.uint(), palette: 2 }
}

let inipos : Position = { x: 0, y: 0 }

fn drawBlock(self : Game) -> Unit {
  for i in [0, 1, 2] {
    self.block[i].x = 20 + 45 * i
  }
  for i in [0, 1, 2] {
    @wasm4.set_draw_colors(self.block[i].color.palette)
    @wasm4.rect(
      self.block[i].x,
      self.block[i].y,
      self.block[i].width,
      self.block[i].height,
    )
  }
}

fn drawBall(self : Game) -> Unit {
  @wasm4.set_draw_colors(3)
  @wasm4.oval(
    self.ball.x,
    self.ball.y,
    self.ball.width,
    self.ball.height,
  )

}

fn drawCoin(self : Game) -> Unit {
  @wasm4.set_draw_colors(2)
  @wasm4.text(": \{self.coin}",50,130)
  coin.blit(
    40,
    130,
    8,
    8,
    { one_bit_per_pixel: false, flip_x: false, flip_y: false, rotate: false },
  )
}

//fn drawFrame(self : Game) -> Unit {
//  @wasm4.
//}

fn none() -> Unit {

  ///    if mousepos.x <= 80 {
  ///        mousepos.x += 1;
  ///    } else {
  ///        mousepos.x = 0;
  ///    }
  ///    if mousepos.y <= 80 {
  ///        mousepos.y += 1;
  ///    } else {
  ///        mousepos.y = 0;
  ///    }
  if @wasm4.get_gamepad(index=1).button_right && inipos.x < 80 {
    inipos.x += 1
  }
  if @wasm4.get_gamepad(index=1).button_left && inipos.x > 0 {
    inipos.x -= 1
  }
  if @wasm4.get_gamepad(index=1).button_down && inipos.y < 80 {
    inipos.y += 1
  }
  if @wasm4.get_gamepad(index=1).button_up && inipos.y > 0 {
    inipos.y -= 1
  }
  if @wasm4.get_gamepad(index=1).button_1 {
    noice()
  }
}

pub fn changeColor(self : Block) -> Unit {
  if self.color.palette < 4 {
    self.color.palette += 1
  } else {    
    self.color.palette = 1
  }
}

pub fn changeColor_random(self : Block) -> Unit {
  if self.color.palette < 4 {
  self.color.palette = randomer.uint(limit=3)+1
  }
}
