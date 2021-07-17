def sort_array_asc(ints)
ints.sort
end

def sort_array_desc(ints)
ints.sort do |a, b|
    b <=> a
    # if a == b 
        #     0
        # elsif a < b 
        #     1
        # elsif a > b
        #     -1
    end
end

def sort_array_char_count(array_of_strings)
    
    sorted = array_of_strings.sort do |wordA, wordB|
        wordA.length <=> wordB.length
    end
    sorted
end

def swap_elements(arr)
    flipped = arr.sort do |a, b|
     if arr.index(a) == 1 && arr.index(b) == 2
        1
     else
        0
     end
    end
    flipped
end

# def swap_elements_from_to(arr, swap_a, swap_b)
#     flipped = arr.sort do |a, b|
#         if arr.index(a) == swap_a && arr.index(b) == swap_b
#            1
#         else
#            0
#         end
#        end
#        flipped
# end

def reverse_array(arr)
    arr.reverse    
end

def kesha_maker(arr)
   rich_names = arr.each do |word|
    word[2] = "$"
   end
    rich_names
    
end

def find_a(arr)
    arr.select do |word|
        word[0] == "a"
    end
end

def sum_array(arr)
    arr.reduce(0) do |total, num|
        total + num
    end
end

def add_s(arr)
   ans = arr.map do |word|
        if arr.index(word) == 1
            word
        else
            word.split.push("s").join("")
        end
    end
    ans
end