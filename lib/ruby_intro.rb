# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    # YOUR CODE HERE
    sumArr = 0
    arr.each do |x| sumArr += x  end
    return sumArr
end

def max_2_sum arr
    # YOUR CODE HERE
    if arr.length == 0
        sum2MaxArr = 0
    elsif arr.length == 1
        sum2MaxArr = arr[0]
    else
        maxNo = arr[0]
        minNo = arr[1]
        len = arr.length - 1
        for i in 2..len
            if arr[i] > maxNo
                maxNo = arr[i]
            else
                if arr[i] > minNo
                    minNo = arr[i]
                end
            end
        end
        # if maxNo == minNo
        #     sum2MaxArr = maxNo
        # else
        #     sum2MaxArr = maxNo + minNo
        # end
        sum2MaxArr = maxNo + minNo
    end
    return sum2MaxArr
end

def sum_to_n? arr, n
    # YOUR CODE HERE
    if arr.length < 2
        return false
    end
    
    sortedArr = arr.sort()
    i = 0
    j = sortedArr.length - 1
    
    while (sortedArr[i] + sortedArr[j]) != n
        
        if sortedArr[i] + sortedArr[j] < n
            i = i + 1
        else
            j = j - 1
        end
        
        if i >= j
            return false
        end
    end
    return true
end

# Part 2

def hello(name)
    # YOUR CODE HERE
    return 'Hello, ' + name
end

def starts_with_consonant? s
    # YOUR CODE HERE
    if s.length < 1
        return false
    end
    if not s[0].match?(/[[:alpha:]]/)
        return false
    end
    if ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U'].include? s[0]
        return false
    else
        return true
    end
end

def binary_multiple_of_4? s
    # YOUR CODE HERE
    if s.length < 1
        return false
    end
    begin 
        bin = Integer(s)
        if bin % 4 == 0
            return true
        else
            return false
        end    
    rescue => err
        return false
    end
end

# Part 3

class BookInStock
    # YOUR CODE HERE
    def initialize(isbn, price)
        if not isbn.class == String
            raise(ArgumentError, "ISBN should be a string")
        end
        
        if isbn.length < 1
            raise(ArgumentError, "ISBN should not be an empty string")
        end
        
        @isbn = isbn
        
        if not (price.class == Integer or price.class == Float)
            raise(ArgumentError, "Price should be a valid number")
        end
        
        @price = price.to_f
        
        if @price <= 0.0
            raise(ArgumentError, "Price should be a valid number")
        end
    end
    
    def isbn
        @isbn
    end
    
    def isbn=(newIsbn)
        @isbn = newIsbn
    end
    
    def price
        @price
    end
    
    def price=(newPrice)
        @price = newPrice
    end
    
    def price_as_string
        return "$%.2f"%@price
    end
end
