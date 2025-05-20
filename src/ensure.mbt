///|
fn ensure(cond : Bool, msg : String, loc~ : SourceLoc = _) -> Unit!Error {
  if not(cond) {
    fail(msg, loc~)
  }
}

///|
fn ensure_not(cond : Bool, msg : String, loc~ : SourceLoc = _) -> Unit!Error {
  if cond {
    fail(msg, loc~)
  }
}
