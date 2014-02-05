elseif ( string.sub( system.getInfo("model"), 1, 2 ) == "iP" ) then
   application =
   {
      content =
      {
         width = 320,
         height = 480,
         scale = "letterBox",
         xAlign = "center",
         yAlign = "center",
         imageSuffix =
         {
            ["@2x"] = 1.5,
            ["@4x"] = 3.0,
         },
      },
   }