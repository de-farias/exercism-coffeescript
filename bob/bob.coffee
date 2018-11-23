class Bob
  hey: (statement)->
    switch
      when @isShouting(statement)    then "Whoa, chill out!"
      when @isQuestioning(statement) then 'Sure.'
      when @saidNothing(statement)   then 'Fine. Be that way!'
      else
        "Whatever."

  isShouting: (text)->
    text.toUpperCase() == text && @atLeastOneCharacter(text)

  isQuestioning: (text)->
    text.endsWith '?'

  saidNothing: (text)->
    text.trim() == ''

  atLeastOneCharacter: (text)->
    /[^\d,\s]+/.test text

module.exports = Bob
