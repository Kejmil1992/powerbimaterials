Table.AddColumn(#"name of last step", "name of column with table content", each Table.PromoteHeaders(Csv.Document([Content])))

// Real life example:

let
  Source = #"CANCELLATION Source",
  #"Added FromName.column" = Table.AddColumn(Source, "All Cancellation files", each Table.PromoteHeaders(Csv.Document([Content]))),
  #"Renamed columns" = Table.RenameColumns(#"Added FromName.column", {{"Name", "Source.Name"}}),
  #"Removed other columns" = Table.SelectColumns(#"Renamed columns", {"Source.Name", "All Cancellation files"}),
  #"Expanded All Cancellation files" = Table.ExpandTableColumn(#"Removed other columns", "All Cancellation files", {"LP", "ROK", "NAZWA_KLIENTA", "NIP", "KLIENT_ULICA", "KLIENT_NUMER_DOMU", "KLIENT_KOD_POCZTOWY", "KLIENT_MIASTO", "Suma z SUMA_POBORU_MWh", "KRS", "WOL_DO_UNIEWA�_MWh", "ADRES_PELNY", "ZROBIONE ?", "SUM_WOL_MWh", "DATA_1", "NR_GP_1", "WOL_1_MWh", "DATA_2", "NR_GP_2", "WOL_2_MWh", "DATA_3", "NR_GP_3", "WOL_3_MWh", "zosta�o", "", "_1", "_2", "_3", "_4"}, {"LP", "ROK", "NAZWA_KLIENTA", "NIP", "KLIENT_ULICA", "KLIENT_NUMER_DOMU", "KLIENT_KOD_POCZTOWY", "KLIENT_MIASTO", "Suma z SUMA_POBORU_MWh", "KRS", "WOL_DO_UNIEWA�_MWh", "ADRES_PELNY", "ZROBIONE ?", "SUM_WOL_MWh", "DATA_1", "NR_GP_1", "WOL_1_MWh", "DATA_2", "NR_GP_2", "WOL_2_MWh", "DATA_3", "NR_GP_3", "WOL_3_MWh", "zosta�o", "Column1", "_1", "_2", "_3", "_4"})
in
  #"Expanded All Cancellation files"

  
