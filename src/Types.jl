"""
    MyPuzzleRecordModel

    ###
    Fields
    "record::String" : single line of text that is coded
    "characters::Array{Char, 1}" : Array containing each character that composes the string 'record'
    "len::Int64" : Integer value describing length of Array

    Creates new MyPuzzleRecordModel Object
"""
# TODO: Finish the MyPuzzleRecordModel type

mutable struct MyPuzzleRecordModel 
    #fields
    record::String
    characters::Array{Char, 1}
    len::Int64

    #methods
    MyPuzzleRecordModel()= new()
end