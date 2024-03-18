# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
# TODO: Put private helper methods here. Don't forget to use the _ naming convention, and to add basic documentation.
"""
 _code_builder_part_1(model::MyPuzzleRecordModel) -> Int 64

 Computes the value of the argument, which is a coded line. 

 ### Arguements
 - `model::MyPuzzleRecordModel`: object containing information for each line of the coded message.

 ### Returns
 - `::Int64`: value of decoded line

"""
function  _code_builder_part_1(model::MyPuzzleRecordModel)::Int64
    
    placeholder =model.characters
    numberarray = filter(isdigit,placeholder)
    line_sum = numberarray[1]*numberarray[end]
    return parse(Int64,line_sum)
end

 """
    _code_builder_part_2(model::MyPuzzleRecordModel) -> Int 64

        Computes the value of the argument, which is a coded line, for the more complex rule.

      ### Arguements
       - `model::MyPuzzleRecordModel`: object containing information for each line of the coded message.

      ### Returns
      - `Int64`: value of decoded line


"""
#=
function _codes_builder_part_2(model::MyPuzzleRecordModel())::Int64
    codes[lineNumber] = Int64(total_string)
    return codes
end
=#


# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #

# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    decode_part_1(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}

        Cycles through each line of coded message stored in the 'models' Dictionary and returns the sum of message 
        alongside dictionary of value per code
     ### Arguements:
          - ' models:: Dict{Int64, MyPuzzleRecordModel} ' : Contains each line of coded message 
   
        ### Return:
          - 'Tuple{Int64, Dict{Int64, Int64} ' : Total sum and Dictionary of sum per line. 
            Keys = code dictionary, values = sums
 
"""
function decode_part_1(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
    
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
    for (lineNumber, model) in models 
        
        codes[lineNumber] = _code_builder_part_1(model)
        total+= codes[lineNumber]
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
   
        Cycles through each line of coded message stored in the 'models' Dictionary and returns the sum of message 
        alongside dictionary of value per code. Operates on more complex input

    ### Arguements:
          - ' models:: Dict{Int64, MyPuzzleRecordModel} ' : Contains each line of coded message 
   
    ### Return:
          - 'Tuple{Int64, Dict{Int64, Int64} ' : Total sum and Dictionary of sum per line
             Keys = code dictionary, values = sums
"""
function decode_part_2(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
     
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
    for (lineNumber, model) in models  
        placeholder = model.characters 
        forward = replace([])
    end
    # TODO: Add the logic for part 2 here
    # ...
     
     # return the total -
    return (total, codes);
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #