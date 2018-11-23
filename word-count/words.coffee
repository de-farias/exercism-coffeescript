class Words
  constructor: (@text)->

  count: ()->
    result = {}
    words  = @text.replace(/[^\w|\s]+/g, '')
                  .split(' ')

    for word in words
      normalizedWord = word.trim().toLowerCase()
      continue unless normalizedWord.length

      result[normalizedWord] ||= 0
      result[normalizedWord]  += 1

    result

module.exports = Words
