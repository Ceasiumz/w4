pub fn start() -> Unit {
  game.coin += 10 
}

let game:Game = Game::new()
pub fn update() -> Unit {
  drawBlock(game)
  drawCoin(game)
  drawBall(game)
  game.input()
}

  ///    if inipos.x <= 80 {
  ///        inipos.x += 1;
  ///    } else {
  ///        inipos.x = 0;
  ///    }
  ///    if inipos.y <= 80 {
  ///        inipos.y += 1;
  ///    } else {
  ///        inipos.y = 0;
  ///    }
  //if @wasm4.get_gamepad(index=1).button_right && inipos.x < 80 {
  //  inipos.x += 1
  //}
  //if @wasm4.get_gamepad(index=1).button_left && inipos.x > 0 {
  //  inipos.x -= 1
  //}
  //if @wasm4.get_gamepad(index=1).button_down && inipos.y < 80 {
  //  inipos.y += 1
  //}
  //if @wasm4.get_gamepad(index=1).button_up && inipos.y > 0 {
  //  inipos.y -= 1
  //}

  //if @wasm4.get_mouse().left {
  //  let mousepos:Position={x:@wasm4.get_mouse().x, y:@wasm4.get_mouse().y}
  //  drawBlock(mousepos)
  //}

  

