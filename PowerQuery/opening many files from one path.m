Table.AddColumn(#"name of last step", "name of column with table content", each Table.PromoteHeaders(Csv.Document([Content])))
