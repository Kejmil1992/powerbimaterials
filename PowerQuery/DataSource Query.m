let
  Source = SharePoint.Files(#"Sharepoint name", [ApiVersion = 15]),
  #"Filtered rows" = Table.SelectRows(Source, each [Name] = #"Static file name")

  in 

  #"Filtered rows"
