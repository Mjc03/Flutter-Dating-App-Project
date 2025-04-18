function [] = MatchDisplay(MatchInfo, MatchPref)
% MatchDisplay will display all information of the candidiate to the user
% in the command window. There would be no output.


fprintf("________________________________________________________________________________________________________________________\n")
fprintf("♥      ♥      ♥      ♥      ♥      ♥      ♥                               ♥      ♥      ♥      ♥      ♥      ♥      \n")
fprintf("                          *****    *****                                    *****    *****         \n")
fprintf("       **  \\ /  **       *******  *******                                  *******  *******        **  \\ /  **\n")
fprintf("     ****** O ******     *****************              Your               *****************     ****** O ******\n")
fprintf("     ****** O ******      ***************                                   ***************      ****** O ******\n")
fprintf("      ***** O *****        *************               Flutter               *************        ***** O *****\n")
fprintf("        ****O****           ***********                                       ***********           ****O****\n")
fprintf("      ***** O *****          *********                   is                    *********          ***** O *****\n")
fprintf("     ****** O ******          *******                                           *******          ****** O ******\n")
fprintf("      ****  O  ****            *****                    . . .                    *****            ****  O  ****\n")
fprintf("       **       **              ***                                               ***              **       **\n")
fprintf("                                 *                                                 *                     \n")
fprintf("♥      ♥      ♥      ♥      ♥      ♥                  %s!                  ♥      ♥      ♥      ♥      ♥      ♥      \n", MatchInfo{1,1})
fprintf("________________________________________________________________________________________________________________________\n")

fprintf("                                              Take a look for yourself:\n")
fprintf("________________________________________________________________________________________________________________________\n")
fprintf("BEFORE YOU CONTINUE:\n •Gender, Age and Height meet your preferrences and your Flutter's automatically\n")
fprintf(" •Compadiability score can be from 0-6 (including hair, eye colour, music genre, pet, zodiac sign and personality)\n")



fprintf("  ==============================\n")
fprintf("           About %s:\n", MatchInfo{1,1})
fprintf("  ==============================\n")
fprintf("  Age: %d\n", MatchInfo{1,3})
fprintf("  Height: %dcm\n", MatchInfo{1,4})
fprintf("  Occupation: %s\n", MatchInfo{1,11})
fprintf("  Hobby: %s\n", MatchInfo{1,12})
fprintf("  ==============================\n")
fprintf("            Apperance\n")
fprintf("  ==============================\n")
fprintf("  Eye Colour: %s\n", MatchInfo{1,5})
fprintf("  Hair Colour: %s\n", MatchInfo{1,6})
fprintf("  ==============================\n")
fprintf("        Personality & Taste\n")
fprintf("  ==============================\n")
fprintf("  (MATCH) = you fit each others criteria!\n")
fprintf("  Favourite Music Genre: %s\n", MatchInfo{1,8})
fprintf("  Favourite Pet: %s\n", MatchInfo{1,9})
fprintf("  Zodiac Sign: %s\n", MatchInfo{1,10})
fprintf("  ==============================\n")
fprintf("        %s's Preferences:\n", MatchInfo{1,1})
fprintf("  ==============================\n")
fprintf("  Eye colour Preferrence: %s\n", MatchPref{1,5})
fprintf("  Hair colour Preferrence: %s\n", MatchPref{1,6})
fprintf("  ==============================\n")
fprintf("        Additional Information:\n")
fprintf("  ==============================\n")
fprintf("  Your compatibility score: %d\n", MatchInfo{1,13})

if MatchInfo{1,7} == 2
    if MatchPref{1,7} == 1
        fprintf("  %s is in their Cocoon (introvert)\n  Whos looking for a Social Butterfly (extrovert)\n", MatchInfo{1,1})
    elseif MatchPref{1,7} == 2
        fprintf("  %s is in their Cocoon (introvert)\n  Whos looking someone alike!\n",MatchInfo{1,1})
    end
elseif MatchInfo{1,7} == 1
    if MatchPref{1,7} == 1
        fprintf("  %s is a Social Butterfly (extrovert)\n  Whos looking for someone alike!\n",MatchInfo{1,1})
    elseif MatchPref{1,7} == 2
        fprintf("  %s is a Social Butterfly (extrovert)\n  Whos looking someone in their Cocoon (introvert)\n",MatchInfo{1,1})
    end
end



fprintf("♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥ \n")
fprintf("                                                     The choice is yours!\n")
fprintf("                                                 Intrested in contacting %s?\n", MatchInfo{1,1})
fprintf("                                                    What have you got to lose!\n")
fprintf("                                            Would you rather your luck with someone else?\n")
fprintf("♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      \n")

end

