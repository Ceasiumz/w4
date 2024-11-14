pub fn prize() -> Unit {
  game.coin +=10
  @wasm4.tone_note_mode(
    (@wasm4.Note::new(60, bend=10), None),
    @wasm4.ADSR::new(60),
    @wasm4.ADSRVolume::new(100),
    @wasm4.ToneFlag::new(),
  )
  @wasm4.trace("prize")
}

pub fn nothing() -> Unit {
  @wasm4.trace("nothing")
}
