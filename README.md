# Similarity Checker Gem

Pattern Matching & Similarity Index Calculator

## Installation

Install the gem by:

		$ gem install similarity_checker

## Usage

Open irb

		$ require 'similarity_checker'
		$ SimilarityChecker.get_similarity_index("str1", "str2")

The `get_similarity_index` method takes two strings as an argument and returns the similairy index between them out of a band between 0 to 100.

## Example

		$ SimilarityChecker.get_similarity_index("string", "string")
		=> 100.0

		$ SimilarityChecker.get_similarity_index("teststringone", "test string two")
		=> 72.72727272727273
		
		$ SimilarityChecker.get_similarity_index("test string one", "test string two")
		=> 80.0

## Contributing

1. Fork it ( https://github.com/sriharshakappala/similarity_checker/fork )
2. Create your feature branch (`git checkout master`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin master`)
5. Create a new Pull Request
