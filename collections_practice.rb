require 'pry'

def sort_array_asc(arr)
    arr.sort{|left, right| left <=> right}
end

def sort_array_desc(arr)
    arr.sort{|left, right| right <=> left}
end

def sort_array_char_count(string_arr)
    string_arr.sort{|a,b| a.length <=> b.length}
end

def swap_elements(arr) 
    arr[1], arr[2] = arr[2], arr[1]
    arr
end

## write some tests for this!
def swap_elements_from_to(arr, index, dest_index)
    arr[index], arr[dest_index] = arr[dest_index], arr[index] 
    arr
end

# puts swap_elements_from_to(["a", "b", "c"],0,2)
# puts swap_elements_from_to(["a", "b", "c"],2,1)

def reverse_array(arr)
    arr.reverse
end

def kesha_maker(arr)
    keshified = []
    arr.each do |string| 
        string[2] = "$"
        keshified << string
    end
    keshified
end

test = ["sushi", "blue", "salsa", "shh"]

def proper_kesha_maker(arr)
    arr.map{|string| 
        chars = string.split("")
        chars.each_with_index.map{|char, i|
            if char == "s" && chars[i + 1] == "h"
                char = "$"
            end
            char   
        }
    }
end

# print proper_kesha_maker(test)

def find_a(arr_of_strings)
    arr_of_strings.select{|string| string.start_with?("a")}
end

def sum_array(ints_array)
    ints_array.reduce{ |sum, n| sum + n}
end

def add_s(array)
    array.each_with_index.map{|word, i|
        if i != 1 
            word << "s"
        end
        word
    }
end