----------------------------------------------------------------------
-- A tool to help align things.
--
-- Feel free to add new commands and modify it as you want.
----------------------------------------------------------------------
local AsepriteScriptsFolder = os.getenv('APPDATA') .. "/Aseprite/scripts/"

AlinHelper_dlg = Dialog{ title="Alinment Helper"}

AlinHelper_dlg
  :button{id = "TL",text="TL",onclick=function() dofile(AsepriteScriptsFolder .. ".lib/AlignTopLeft.lua") end}
  :button{id = "T",text="T",onclick=function() dofile(AsepriteScriptsFolder .. "/.lib/AlignTopCenter.lua") end}
  :button{id = "TR",text="TR",onclick=function() dofile(AsepriteScriptsFolder .."/.lib/AlignTopRight.lua") end}
  :newrow()
  :button{id = "CL",text="CL",onclick=function() dofile(AsepriteScriptsFolder .. "/.lib/AlignCenterLeft.lua") end}
  :button{id = "C",text="C",onclick=function() dofile(AsepriteScriptsFolder .. "/.lib/AlignCenter.lua") end}
  :button{id = "CR",text="CR",onclick=function() dofile(AsepriteScriptsFolder .. "/.lib/AlignCenterRight.lua") end}
  :newrow()
  :button{id = "BL",text="BL",onclick=function() dofile(AsepriteScriptsFolder .. "/.lib/AlignBottomLeft.lua") end}
  :button{id = "B",text="B",onclick=function() dofile(AsepriteScriptsFolder .. "/.lib/AlignBottomCenter.lua") end}
  :button{id = "BR",text="BR",onclick=function() dofile(AsepriteScriptsFolder .."/.lib/AlignBottomRight.lua") end}
  :number {id = "y_offset", text = y_offset or "0", decimals = 0, visible = false}
  :number {id = "x_offset", text = x_offset or "0", decimals = 0, visible = false}
  
  :show{wait=false}
  
  if alignData == nil then
	alignData = AlinHelper_dlg.data 
  end
  
if AlignHelperOffsetDLG == nil then
	AlignHelperOffsetDLG = AlinHelper_dlg.bounds
 end  
 

