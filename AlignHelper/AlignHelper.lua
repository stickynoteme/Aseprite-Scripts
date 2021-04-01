----------------------------------------------------------------------
-- A tool to help align things.
--
-- Feel free to add new commands and modify it as you want.
----------------------------------------------------------------------
local AsepriteScriptsFolder = os.getenv('APPDATA') .. "/Aseprite/scripts/"

local dlg = Dialog("Alinment Helper")
dlg
  :button{text="TL",onclick=function() dofile("./.lib/AlignTopLeft.lua") end}
  :button{text="T",onclick=function() dofile("./.lib/AlignTopCenter.lua") end}
  :button{text="TR",onclick=function() dofile("./.lib/AlignTopRight.lua") end}
  :newrow()
  :button{text="CL",onclick=function() dofile("./.lib/AlignCenterLeft.lua") end}
  :button{text="C",onclick=function() dofile("./.lib/AlignCenter.lua") end}
  :button{text="CR",onclick=function() dofile("./.lib/AlignCenterRight.lua") end}
  :newrow()
  :button{text="BL",onclick=function() dofile("./.lib/AlignBottomLeft.lua") end}
  :button{text="B",onclick=function() dofile("./.lib/AlignBottomCenter.lua") end}
  :button{text="BR",onclick=function() dofile("./.lib/AlignBottomRight.lua") end}
  :show{wait=false}
  