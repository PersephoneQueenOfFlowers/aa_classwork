require 'byebug'
def first_anagram(str1, str2) # Big O = O(N!) where n is string length
  perms = str1.split("").permutation.to_a
  perms.include?(str2.split(""))
end

str1 = "abac" 
str2 = "cbar"
# p first_anagram(str1, str2)

def second_anagram?(str1, str2) #O(n^2) ?? 
  str1.each_char do |char1|
    i = str2.index(char1)
    if i== nil
      return false  
    else   
      str2 = str2[0...i] + str2[i+1..-1]
    end
  end
  str2.empty? 
end

# p second_anagram?(str1, str2)

def third_anagram?(str1, str2) #O(n logn)
  str1 = str1.split("").sort.join
  str2 = str2.split("").sort.join 
  str1 == str2
end

#p third_anagram?(str1, str2)

def fourth_anagram?(str1, str2) #O(n)
  str_hash_1 = Hash.new(0)
  str_hash_2 = Hash.new(0)
  str1.each_char {|char| str_hash_1[char] += 1 }
  str2.each_char {|char| str_hash_2[char] += 1 }
  str_hash_1 == str_hash_2
end
p fourth_anagram?(str1, str2)