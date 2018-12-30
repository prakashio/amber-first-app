class Pet < Granite::Base
  adapter pg
  table_name pets

  primary id : Int64
  field name : String
  field breed : String
  field age : Int32
  timestamps
end
