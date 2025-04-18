function [] = Graphics(num)
%GRAPHICS contains all the graphics for the Flutter dating app. Depending
%on the number input, a diffrent graphic will appear. There is no output


if num == 0 %app opening screen


    fprintf("  __________________________________________________________WELCOME TO:____________________________________________________________\n\n")
    fprintf("    **  \\ /  **     |   ********    **      **         **   **********   **********   ********    ********    |    **  \\ /  **\n")
    fprintf("   ****  O  ****    |   **          **      **         **       **           **       **          **     **   |   ****  O  ****\n")
    fprintf("  ****** O ******   |   **          **      **         **       **           **       **          **     **   |  ****** O ******\n")
    fprintf("   ***** O *****    |   ********    **      **         **       **           **       **          **     **   |   ***** O *****\n")
    fprintf("     ****O****      |   **          **      **         **       **           **       ******      ********    |     ****O****\n")
    fprintf("   ***** O *****    |   **          **      **         **       **           **       **          **     **   |   ***** O *****\n")
    fprintf("  ****** O ******   |   **          **      **         **       **           **       **          **      **  |  ****** O ******\n")
    fprintf("   ****  O  ****    |   **          **        **     **         **           **       **          **      **  |   ****  O  ****\n")
    fprintf("    **       **     |   **          ********    *****           **           **       ********    **      **  |    **       **\n\n")
    fprintf("                                                          (The dating app)\n\n")
    fprintf("  ___________________________________________________｡⋆｡˚FIND YOUR FLUTTER™˚｡⋆｡______________________________________________________\n\n")


elseif num == 1 %options menu
    fprintf("  ====================================\n")
    fprintf("          ˚｡⋆｡˚MAIN MENU˚｡⋆｡˚\n\n")
    fprintf("     Option 1: Set YOUR Information\n")
    fprintf("     Option 2: Set YOUR Preferrences\n")
    fprintf("     Option 3: Find YOUR Flutter™\n")
    fprintf("     Option 4: Exit\n")
    fprintf("  ====================================\n")
elseif num == 2 %setting personal info header
    fprintf("==============================================\n")
    fprintf("You Selected Option 1: Set YOUR Information\n")
    fprintf("==============================================\n")
    fprintf("If you are going to find your Flutter,   ⋆｡˚\nwe need to know about you first!          ˚｡⋆\nPlease answer the following questions!   ⋆｡˚\n")
    fprintf("==============================================\n")
elseif num == 3 %setting personal prefrrences header
     fprintf("==============================================\n")
    fprintf("You Selected Option 2: Set YOUR Preferrences\n")
    fprintf("==============================================\n")
    fprintf("If you are going to find your Flutter,   ⋆｡˚\nwe must know what you are looking for!    ˚｡⋆\nPlease answer the following questions!   ⋆｡˚\n")
    fprintf("==============================================\n")
elseif num == 4 %matching header
fprintf("｡⋆   ˚   ｡   ʚɞ    ｡    ˚    ⋆｡   ʚɞ  ˚        ｡⋆｡˚TIME TO˚｡⋆｡    ⋆｡    ʚɞ   ｡⋆    ˚   ｡    ʚɞ     ｡    ˚    ⋆｡   \n")
fprintf("  ʚɞ      ⋆｡     ˚    ʚɞ        ｡⋆｡    ˚ ｡⋆｡˚FIND YOUR FLUTTER™˚｡⋆｡    ˚       ʚɞ     ⋆｡     ˚      ʚɞ    ｡⋆    ˚    \n")
elseif num == 5 %exit
fprintf("  ______________________________________________________THANK YOU FOR USING____________________________________________________________\n\n")
fprintf("    **  \\ /  **     |   ********    **      **         **   **********   **********   ********    ********    |    **  \\ /  **\n")
fprintf("   ****  O  ****    |   **          **      **         **       **           **       **          **     **   |   ****  O  ****\n")
fprintf("  ****** O ******   |   **          **      **         **       **           **       **          **     **   |  ****** O ******\n")
fprintf("   ***** O *****    |   ********    **      **         **       **           **       **          **     **   |   ***** O *****\n")
fprintf("     ****O****      |   **          **      **         **       **           **       ******      ********    |     ****O****\n")
fprintf("   ***** O *****    |   **          **      **         **       **           **       **          **     **   |   ***** O *****\n")
fprintf("  ****** O ******   |   **          **      **         **       **           **       **          **      **  |  ****** O ******\n")
fprintf("   ****  O  ****    |   **          **        **     **         **           **       **          **      **  |   ****  O  ****\n")
fprintf("    **       **     |   **          ********    *****           **           **       ********    **      **  |    **       **\n\n")
fprintf("                                                          (The dating app)\n\n")
fprintf("                                                           Come back soon!\n\n")
fprintf("  ___________________________________________________｡⋆｡˚FIND YOUR FLUTTER™˚｡⋆｡______________________________________________________\n")
end
end

