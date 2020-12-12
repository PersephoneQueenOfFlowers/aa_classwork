require 'byebug'
def first_anagram(str1, str2) # Big O = O(N!) where n is string length
  perms = str1.split("").permutation.to_a
  perms.include?(str2.split(""))
end

str1 = "abac" 
str2 = "cbar"
# p first_anagram(str1, str2)

def second_anagram?(str1, str2)
  # debugger
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

p second_anagram?(str1, str2)
