
# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
# TODO: Put private helper methods here. Don't forget to use the _ naming convention, and to add basic documentation.

"""
build_(record::String)--> MyPuzzleRecordModel

Creates new instance of "MyPuzzleRecordModel" from a given text line

### Arguements
"record::String" : single line of text that is coded

Returns a MyPuzzleRecordModel with the array characters, which contains each character that composes the string 'record'
"""
function build_(record::String)::MyPuzzleRecordModel
    model = MyPuzzleRecordModel()
    model.record= record
    model.len = length(record)
    model.characters = collect(record)
    return model

end

# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #

# ===== PUBLIC METHODS BELOW HERE =================================================================================== #
# TODO: Make a build method to construct MyPuzzleRecordModel types
"""
    build(record::String,characters::Array{Char,1}, len::Int64)--> MyPuzzleRecordModel

    Creates new instance of "MyPuzzleRecordModel" from a given text line

    ### Arguements
    "record::String" : single line of text that is coded
    "characters::Array{Char, 1}" : Array containing each character that composes the string 'record'
    "len::Int64" : Integer value describing length of Array
"""


function build(record::String)::MyPuzzleRecordModel
    return build_(record)
end


# ===== PUBLIC METHODS ABOVE HERE =================================================================================== #