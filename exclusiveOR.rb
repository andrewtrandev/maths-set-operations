# Exclusive OR
# Implement a function that returns the exclusive or of 2 decimal values.
# It will be helpful to use your implementation of the decimal to binary challenge from the bases lesson. 

# exclusive_or(num1, num2)
# takes decimal numbers as parameters
# returns a decimal value of the exclusive or of the two parameters
# Example: exclusive_or(7, 3) => 4
# Hint 1: Use to_i(2) to convert the XOR bit string result to a decimal
# "100".to_i(2) => 4
# Hint 2: If you are using a loop to compare the binary string characters, consider that one may be longer than the other, and you will have to account for that:
# "100" xor "1" => "100" xor "001" => "101" 

def exclusive_or(num1, num2)
    
    def decimal_to_binary(decimal)
        puts "#{decimal}"
        binary=[]
        if decimal == 0
            return "0"
        end
        while decimal >= 2 #whiledecimal is >= 2 
            if decimal%2==1 #if mode 2 is = 1 
                binary.unshift("1") #add one to start of binary array
            else decimal%2==0
                binary.unshift("0")
            end
            decimal=decimal/2
        end

        if decimal%2==1
            binary.unshift("1")
        end
        return binary.join('')
    end

     bin1=decimal_to_binary(num1) #get the binary of num1 and assign it to bin1
     bin2=decimal_to_binary(num2)

    while bin1.length != bin2.length #forgot to put this while loop in so that it keeps adding 0's until the lengths match
        if bin1.length < bin2.length
            bin1.prepend("0")
        else bin2.length < bin1.length
            bin2.prepend("0")   #if the values arn't equal in length we can prepend 0 to the binary number
        end                     #doesn't affect it's value but helps with XOR calculations]
    end
       bin1=bin1.split("")
       bin2=bin2.split("")

    returnbin=[] #this will be where we store the XOR calculation 
    index=0
    for number in bin1
        if number == bin2[index]
            returnbin.push("0")
        else
            returnbin.push("1")
        end
        index+=1
    end
    return returnbin.join("").to_i(2) #join array elements and convert from binary to decimal


end

#xor, if they're different then = 1, else =0
#possible issue is printing of returned values for dec2bin converter
p exclusive_or(7, 3) #=> 4
 p exclusive_or(70, 30) #88
p exclusive_or(0,1) # 1