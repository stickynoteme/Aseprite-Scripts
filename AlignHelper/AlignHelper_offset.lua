----------------------------------------------------------------------
-- A tool to help align things.
--
-- Feel free to add new commands and modify it as you want.
----------------------------------------------------------------------
local AsepriteScriptsFolder = os.getenv('APPDATA') .. "/Aseprite/scripts/"

local dlg = Dialog("Alinment Helper")
dlg
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
  :button{id = "Apply",text="Apply",onclick=function() alignData = dlg.data end}
  :button{id = "Reset",text="Reset",onclick=function()
    alignData.x_offset = 0
    alignData.y_offset = 0
  end}
  :show{wait=false}
 
  --MINIMIZE TO SAVE SPACE
  function showHideAlignOptions()
    local data = dlg.data
	local currentshowHideAlighn = not data.alignMinimize
    dlg
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
  