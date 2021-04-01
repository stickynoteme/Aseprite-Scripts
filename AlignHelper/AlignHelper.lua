----------------------------------------------------------------------
-- A tool to help align things.
--
-- Feel free to add new commands and modify it as you want.
----------------------------------------------------------------------
local AsepriteScriptsFolder = os.getenv('APPDATA') .. "/Aseprite/scripts/"

local dlg = Dialog("Alinment Helper")
dlg
  :button{text="TL",onclick=function() dofile(AsepriteScriptsFolder .. ".lib/AlignTopLeft.lua") end}
  :button{text="T",onclick=function() dofile(AsepriteScriptsFolder .. "/.lib/AlignTopCenter.lua") end}
  :button{text="TR",onclick=function() dofile(AsepriteScriptsFolder .."/.lib/AlignTopRight.lua") end}
  :newrow()
  :button{text="CL",onclick=function() dofile(AsepriteScriptsFolder .. "/.lib/AlignCenterLeft.lua") end}
  :button{text="C",onclick=function() dofile(AsepriteScriptsFolder .. "/.lib/AlignCenter.lua") end}
  :button{text="CR",onclick=function() dofile(AsepriteScriptsFolder .. "/.lib/AlignCenterRight.lua") end}
  :newrow()
  :button{text="BL",onclick=function() dofile(AsepriteScriptsFolder .. "/.lib/AlignBottomLeft.lua") end}
  :button{text="B",onclick=function() dofile(AsepriteScriptsFolder .. "/.lib/AlignBottomCenter.lua") end}
  :button{text="BR",onclick=function() dofile(AsepriteScriptsFolder .."/.lib/AlignBottomRight.lua") end}
  :show{wait=false}
  