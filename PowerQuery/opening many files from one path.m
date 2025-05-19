Table.AddColumn(#"name of last step", "name of column with table content", each Table.PromoteHeaders(Csv.Document([Content])))

// Real life example:

let
  Source = #"CANCELLATION Source",
  #"Added FromName.column" = Table.AddColumn(Source, "All Cancellation files", each Table.PromoteHeaders(Csv.Document([Content]))),
  #"Renamed columns" = Table.RenameColumns(#"Added FromName.column", {{"Name", "Source.Name"}}),
  #"Removed other columns" = Table.SelectColumns(#"Renamed columns", {"Source.Name", "All Cancellation files"}),
  #"Expanded All Cancellation files" = Table.ExpandTableColumn(#"Removed other columns", "All Cancellation files", {"Column1", "_1", "_2", "_3", "_4"})
in
  #"Expanded All Cancellation files"

  
