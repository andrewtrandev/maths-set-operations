# Set Operations
# Implement the common set operations: intersection, union, symmetric difference
# The union function takes 2 arrays as input, and returns the union of those two arrays.
# Example:
# union([1,2,3], [3,4,5])   # should return [1,2,3,4,5]
# union(["a", "b", "c"], ["d", "e", "f"]) # should return ["a", "b", "c", "d", "e", "f"]
# The intersection function takes 2 arrays as input and returns the intersection.
# Example:
# intersection([1,2,3],[3,4,5])  # should return [3]
# The symmetric_difference function takes 2 arrays as input as returns the symmetric difference (all elements in one or the other set, but not both).
# Example:
# symmetric_difference([1,2,3],[3,4,5]) # should return [1,2,4,5]
# Implement these yourself - not using the Set class.

#######################################################################################################################

def intersection(set1, set2)
    # p set1
    # p set2
    intarray=[]
    for object in set1 #for each object in  set1
        # p object
        if set2.include?(object) #check if the object is included in set2
            intarray.push(object)  #if it is then push it to intarray
        end
    end
    return intarray
	# set1 and set2 are arrays
	# return the intersection
end

p intersection([1,2,3],[3,4,5])  # should return [3]

#######################################################################################################################

def union(set1, set2) 

    set3=set1+set2
    return set3.uniq
	# set1 and set2 are arrays
	# return the union
end


p union([1,2,3], [3,4,5])   # should return [1,2,3,4,5]
p union(["a", "b", "c"], ["d", "e", "f"]) # should return ["a", "b", "c", "d", "e", "f"]


#######################################################################################################################


#symmetric diff - elements that are in one set or the other, but not both
def symmetric_difference(set1, set2)
    symarray=[]
    for object in set1
        if set2.include?(object)

        else
            symarray.push(object)
        end
    end
    
    for object in set2
        if set1.include?(object)
            
        else
            symarray.push(object)
        end
    end

    return symarray
	# set1 and set2 are arrays
	# return the symmetric difference
end


p symmetric_difference([1,2,3],[3,4,5]) # should return [1,2,4,5]