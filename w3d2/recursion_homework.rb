def sum_to n 
  return 1 if n == 1 
  n + sum_to(n - 1 )
end 


def add_numbers arr
  return arr[0] if arr.length <= 1 
  sum = arr.shift
  sum + add_numbers(arr)
end


  # p add_numbers([1,2,3,4]) # => returns 10
  # p add_numbers([3]) # => returns 3
  # p add_numbers([-80,34,7]) # => returns -39
  # p add_numbers([]) # => returns nil


def gamma_fnc(n) 
  return nil if n == 0 
  return 1 if n == 1 
  (n - 1) * gamma_fnc(n - 1)
end

  p gamma_fnc(0)  # => returns nil
  p gamma_fnc(1)  # => returns 1
  p gamma_fnc(4)  # => returns 6
  p gamma_fnc(8)  # => returns 5040


def ice_cream_shop(flavors, favorite)
  return false if flavors.length == 0 || flavors.length == 1 && flavors[0] != favorite 
  return true if favorite == flavors[-1]
  ice_cream_shop(flavors[(0..-2)], favorite) 
  # false
end 


def reverse(string)
  return string if string.length == 0
  return string[-1] + reverse(string[0..-2])
end

   # Test Cases
  # p reverse("house") # => "esuoh"
  # p reverse("dog") # => "god"
  # p reverse("atom") # => "mota"
  # p reverse("q") # => "q"
  # p reverse("id") # => "di"
  # p reverse("") # => ""
