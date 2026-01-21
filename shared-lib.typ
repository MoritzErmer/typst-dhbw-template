#let is-in-dict(dict-type, state, element) = {
  context {
    let list = state.get()
    if element not in list {
      panic(str(element) + " is not a key in the " + str(dict-type) + " dictionary.")
      return false
    }
  }

  return true
}

#let display-link(dict-type, state, element, text) = {
  if is-in-dict(dict-type, state, element) {
    link(label(str(dict-type) + "-" + str(element)), text)
  }
}

#let display(dict-type, state, element, text, link: true) = {
  if link {
    display-link(dict-type, state, element, text)
  } else {
    text
  }
}
