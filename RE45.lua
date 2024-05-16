text_RE45 = {82, 69, 45, 52, 53, 232, 135, 170, 229, 138, 168, 230, 137, 139, 230, 158, 170}
offset_time = 14

offset_list = {{1, -1, 9, 5}, {2, -1, 9, 5}, {3, -3, 9, 5}, {4, -3, 8, 5}, {5, -3, 8, 5}, {6, -4, 8, 5}, {7, -4, 8, 5},
               {8, -8, 5, 5}, {9, -8, 3, 5}, {10, -7, 5, 5}, {11, -3, 4, 5}, {12, -3, 4, 5}, {13, -4, 3, 5},
               {14, -1, 4, 5}, {15, 0, 4, 5}, {16, -4, 3, 5}, {17, 4, 5, 5}, {18, -4, 5, 5}, {19, -4, 6, 5},
               {20, -2, -3, 5}, {21, -3, 3, 5}, {22, -2, 3, 5}, {23, -2, 3, 5}, {24, -2, 3, 5}, {25, -2, 3, 5}}

EnablePrimaryMouseButtonEvents(true)

function click()

    if (IsKeyLockOn("capslock")) then
        while (IsMouseButtonPressed(3)) do
            if (IsMouseButtonPressed(1)) then

                if (ij <= 25) then

                    offset = offset_list[ij];

                    for var_i = 1, offset[4] do
                        Sleep(offset_time)
                        MoveMouseRelative(offset[2], offset[3])
                    end

                    ij = ij + 1

                end
            end
        end
    end
end
