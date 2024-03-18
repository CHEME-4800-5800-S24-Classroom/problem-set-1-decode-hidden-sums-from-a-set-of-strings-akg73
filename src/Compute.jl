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
    
    placeholder = model.characters
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

function _code_builder_part_2(model::MyPuzzleRecordModel)::Int64
   

    placeholder_record = model.record

    integers = Dict("one"=> 1,"two"=> 2,"three"=> 3,"four"=> 4,
                   "five"=> 5, "six"=> 6, "seven"=> 7, "eight"=> 8,
                    "nine"=> 9,"zero"=> 0 )

    
    for (integer, replacement) in integers
            if occursin(integer, placeholder_record)
                starting_addition = string(integer[1])
                ending_addition = string(integer[end])
                temp = starting_addition*integer*ending_addition
                placeholder_record = replace(placeholder_record,integer => temp)
                placeholder_record = replace(placeholder_record,integer => replacement)
            end
    end

    model.record = placeholder_record
    model.characters = collect(placeholder_record)

    return _code_builder_part_1(model)
end



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
     
   
    total = 0;
    codes = Dict{Int64, Int64}();
    for (lineNumber, model) in models  
        codes[lineNumber]= _code_builder_part_2(model)
        total+= codes[lineNumber]
    end
    
    return (total, codes);
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #