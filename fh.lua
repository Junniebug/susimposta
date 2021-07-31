if getgenv().amongusxD == true then
    return
end

pcall(function()
      getgenv().amongusxD = true
   getgenv().Key = "June1010";
   getgenv().Id = "682297558353051687";if syn and not(SENTINEL_V2) then r=syn.request else r=request end;
   gets=function() return r({Method="GET",Url="https://observant-caramel-grip.glitch.me/getscript?d=efu7R4kDdcgI5W8kUZ1y&k="..getgenv().Key.."&id="..getgenv().Id.."&d2=FrostHub"}).Body end;rt=0;repeat spawn(function() pcall(function() loadstring(gets())() end) end);rt=rt+1;wait(60) until getgenv().executed or rt >= 10
end)
