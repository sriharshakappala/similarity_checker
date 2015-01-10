require "similarity_checker/version"

module SimilarityChecker
  def self.get_similarity_index string_one, string_two
    string_one.downcase!
		string_two.downcase!
  	pairs_one = (0..string_one.length-2).collect {|i| string_one[i,2]}.reject { |pair| pair.include? " " }
  	pairs_two = (0..string_two.length-2).collect {|i| string_two[i,2]}.reject { |pair| pair.include? " " }
  	union = pairs_one.size + pairs_two.size
		intersection = 0
		pairs_one.each do |p1| 
		  0.upto(pairs_two.size-1) do |i|
		    if p1 == pairs_two[i]
		      intersection += 1
		      pairs_two.slice!(i)
		      break
		    end
		  end
		end
		(2.0 * intersection) / union * 100
  end
end
