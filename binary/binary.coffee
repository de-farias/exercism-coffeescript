class Binary
  constructor: (@value)->

  toDecimal: ()->
    nomalized = @value.replace(/[^01]+/g, '')
    result    = 0
    for digit, idx in nomalized.split('').reverse()
      result += parseInt(digit) * 2**idx

    result

module.exports = Binary
