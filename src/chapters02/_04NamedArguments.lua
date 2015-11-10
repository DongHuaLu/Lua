function house(component)
  if type(component.wall) ~= "string" then
    error("no wall")
  elseif type(component.door) ~= "string" then
    error("no door")  
  elseif type(component.windowsNum) ~= "number" 
    and component.windowsNum < 1 then
    error("no windows")
  end
  return _house(component.wall,component.door,component.windowsNum
          ,component.desk or "没有桌",component.bed or "没有床")
end

function _house(wall,door,windowsNum,desk,bed)
  print("init " .. wall)
  print("init " .. door)
  print("init window num " .. windowsNum)
  print("init " .. desk)
  print("init " .. bed)
end

house{wall="墙纸",door="木门",windowsNum=3,desk="木桌"}