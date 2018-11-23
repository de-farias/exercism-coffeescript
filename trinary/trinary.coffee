class Trinary
  constructor: (@number)->

  toDecimal: ()->
    nomalizedNumber = @number.replace(/[^012]+/g, '')
    preparedValues  = nomalizedNumber.split('')
                                     .reverse()
    trinary         = 0

    for value, idx in preparedValues
      trinary += parseInt(value) * 3**idx

    trinary


module.exports = Trinary
