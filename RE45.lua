offset_list = {

    { 1, -2, 12, 2 }, { 2, 0, 12, 2 }, { 3, 0, 12, 2 },

    { 4, -2, 12, 2 }, { 5, -3, 12, 2 }, { 6, -3, 12, 2 },

    { 7,  -3, 12, 2 }, { 8, -3, 12, 2 }, { 9, 0, 12, 2 },

    { 10, 3,  12, 2 }, { 11, 3, 12, 2 }, { 12, 3, 10, 2 },

    { 13, 3,  6, 2 }, { 14, 0, 5, 2 }, { 15, -3, 4, 2 },

    { 16, -3, 7, 2 }, { 17, 0, 7, 2 }, { 18, 3, 7, 2 },

    { 19, 3, 7, 2 }, { 20, 4, 7, 2 }, { 21, 0, 7, 2 },

    { 22, 3, 1, 2 }, { 23, -3, 2, 2 }, { 24, -3, 0, 2 },

    { 25, -3, 1, 2 }, { 26, -3, 0, 2 }, { 27, -3, 1, 2 }

}
offset_time = 25

EnablePrimaryMouseButtonEvents(true)

function OnEvent(event, arg)
ClearLog()
    if (event == "MOUSE_BUTTON_PRESSED") then
        if (IsKeyLockOn("capslock")) then
      
            
                if IsMouseButtonPressed(1) then
                ij = 1
                    repeat
                    if (ij <= 25) then
                        offset = offset_list[ij];
                        for var_i = 1, offset[4] do
                            Sleep(offset_time)
                         MoveMouseRelative(offset[2], offset[3])
                             OutputLogMessage("Event: "..event.." Arg: "..arg.."")
                        end
                        ij = ij + 1
                    end
                    until not IsMouseButtonPressed(1)
                end
            end
        end
    end



