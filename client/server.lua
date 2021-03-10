AddEventHandler('onResourceStart', function(resourceName)
  if (GetCurrentResourceName() ~= resourceName) then
    return
  end
  print('^2 ¡[guille_hud] ^4se ha iniciado correctamente!^0')
end)