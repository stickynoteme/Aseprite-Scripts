----------------------------------------------------------------------
-- A tool to help align things.
--
-- Feel free to add new commands and modify it as you want.
----------------------------------------------------------------------
local AsepriteScriptsFolder = os.getenv('APPDATA') .. "/Aseprite/scripts/"

AlinHelperOffset_dlg = Dialog{ title="Alinment Helper", onclose=function() AlignHelperOffsetDLG = AlinHelperOffset_dlg.bounds writeVarToFile() end}

AlinHelperOffset_dlg
  :check{ id="alignMinimize", text="Minimize", selected=false, onclick=function() showHideAlignOptions() end}
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
  :newrow()
  :separator{id = "sep1",text="Offset Settings [x , y]"}
  :number {id = "y_offset", text = y_offset or "0", decimals = 0}
  :number {id = "x_offset", text = x_offset or "0", decimals = 0}
  :button{id = "Apply",text="Apply",onclick=function() alignData = AlinHelperOffset_dlg.data end}
  :button{id = "Reset",text="Reset",onclick=function() alignData.x_offset = 0 alignData.y_offset = 0 end}
  :show{wait=false}
  
  if alignData == nil then
	alignData = AlinHelperOffset_dlg.data 
  end
  
if AlignHelperOffsetDLG == nil then
	AlignHelperOffsetDLG = AlinHelperOffset_dlg.bounds
 end
local f = io.open(AsepriteScriptsFolder .. "AlignHelper_offset_window_save.cfg", "r")
if f ~= nil then
	AlignHelperOffsetDLG.x = f:read("*line")
	AlignHelperOffsetDLG.y = f:read("*line")
	AlignHelperOffsetDLG.width = f:read("*line")
	AlignHelperOffsetDLG.height = f:read("*line")
	f:close()
end
  AlinHelperOffset_dlg.bounds = AlignHelperOffsetDLG
  
 
  --MINIMIZE TO SAVE SPACE
  function showHideAlignOptions()
    local data = AlinHelperOffset_dlg.data
	local currentshowHideAlighn = not data.alignMinimize
    AlinHelperOffset_dlg
	  :modify{id="TL",visible = currentshowHideAlighn}
      :modify{id="T",visible = currentshowHideAlighn}
	  :modify{id="TR",visible = currentshowHideAlighn}
	  :modify{id="CL",visible = currentshowHideAlighn}
	  :modify{id="C",visible = currentshowHideAlighn}
	  :modify{id="CR",visible = currentshowHideAlighn}
	  :modify{id="BL",visible = currentshowHideAlighn}
	  :modify{id="B",visible = currentshowHideAlighn}
	  :modify{id="BR",visible = currentshowHideAlighn}
	  :modify{id="sep1",visible = currentshowHideAlighn}
	  :modify{id="y_offset",visible = currentshowHideAlighn}
      :modify{id="x_offset",visible = currentshowHideAlighn}
	  :modify{id="Apply",visible = currentshowHideAlighn}
	  :modify{id="Reset",visible = currentshowHideAlighn}
    end
  
function writeVarToFile ()
	local f = assert(io.open(AsepriteScriptsFolder .. "AlignHelper_offset_window_save.cfg", "w"))
	f:write(AlignHelperOffsetDLG.x, "\n")
	f:write(AlignHelperOffsetDLG.y, "\n")
	f:write(AlignHelperOffsetDLG.width, "\n")
	f:write(AlignHelperOffsetDLG.height, "\n")
	f:close()
end
