class Anagram
  constructor: (word)->
    @anagram = word.toLowerCase()

  match: (testSample)->
    result = []
    loweredTestSample = (sample.toLowerCase() for sample in testSample)

    for sample in loweredTestSample
      continue if sample == @anagram
      result.push sample if @isAnagram(sample)

    result

  isAnagram: (subject)->
    sortedAnagram = @anagram.split('').sort().join()
    sortedSubject = subject.split('').sort().join()

    sortedSubject == sortedAnagram


module.exports = Anagram
