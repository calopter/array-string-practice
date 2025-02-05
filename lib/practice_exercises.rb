
# Time Complexity: O(n^2)
# Space Complexity: O(1)
def remove_duplicates(list)
  i = 0
  while i < list.length
    list.delete_at(i + 1) while list[i] == list[i + 1]
    i += 1
  end
  return list
end

# Time Complexity: O(n * m) where m = length of longest string
# Space Complexity: O(n) where n = length of longest string
def longest_prefix(strings)
  prefix = ->s1, s2 { s1.each_char.zip(s2.each_char)
                        .take_while { |c1, c2| c1 == c2 }
                        .map(&:first).join }
                        
  strings.reduce(&prefix)
end

