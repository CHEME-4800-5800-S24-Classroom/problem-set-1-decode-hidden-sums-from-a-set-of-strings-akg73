# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
# TODO: Put private helper methods here. Don't forget to use the _ naming convention, and to add basic documentation.

#=
function codes_builder_(lineNumber::Int64,total_string::String)
    codes[lineNumber] = Int64(total_string)
    return codes
end
=#


# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #

# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    decode_part_1(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}

TODO: Add documentation
"""
function decode_part_1(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
    
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
    for (lineNumber, model) in models  
        placeholder =model.characters
        numberarray = filter(isdigit,placeholder)
        line_sum = numberarray[1]*numberarray[end]
        codes[lineNumber] = parse(Int64,line_sum)
        total+= parse(Int64,line_sum)
    end   
    return (total,codes);
end


    #=
    for (lineNumber, model) in models  
        i= 1
        first = 0
        last = 0
        #this iterates the first line numebr and its respetive values includig the array

        
        for i in (model.len)
            if isdigit(model.characters[i])
                first = model.characters[i]
                break
            end
            i=+1
        end

        revserse_array = reverse(model.characters)
        for i in (model.len)
            if isdigit(revserse_array[i])
                last = reverse_array[i]
                break
            end
            i=+1
        end
        total_string = String(first)+String(last)
        total = total + Int64(total_string)

        return codes_builder(lineNumber,total_string)

    # TODO: Add the logic for part 1 here
    # ...
    
    # return the total -
    =#
"""
    decode_part_2(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}

TODO: Add documentation
"""
function decode_part_2(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
     
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
    for (lineNumber, model) in models  
        placeholder = model.characters 
        forward = replace([])
    # TODO: Add the logic for part 2 here
    # ...
     
     # return the total -
    return (total, codes);
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #