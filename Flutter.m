%MAIN FILE FOR THE FLUTTER DATING APP

load DatingAppData.mat

%Introduction and menu
Graphics(0)
Graphics(1)
selection= input("     User Selection: ");
fprintf("  ====================================\n\n")

%selection error checking
while selection ~= [1 2 3 4]
    fprintf("  Not a valid option\n")
    Graphics(1)
    selection= input("     User Selection: ");
    fprintf("  ====================================\n\n")
end


%while loop for the main workings of the app (corresponds to the menu)
while selection >= 1 && selection <= 3

    if selection == 1 % User information section
        Graphics(2)
        fprintf("｡⋆｡˚GENERAL˚｡⋆｡\n")
        fprintf("===============\n")

        UserName = input("Tell us your name: \n", 's');
        UserName = upper(UserName);

        UserGen = input("Tell us your gender (M/F): \n", 's');
        [UserGen] = GenderErrorCheck(UserGen); %GENDER ERROR CHECK FUNCTION

        UserAge = input("Tell us your age (18 - 35): \n");
        while UserAge < 18 || UserAge > 35
            UserAge = input("Enter a vaild age (18 - 35): \n");
        end
        UserHeight = input("Tell us your height (150cm - 200cm): \n");
        while UserHeight < 150 || UserHeight > 200
            UserHeight = input("Enter a vaild height (150cm - 200cm): \n");
        end
        fprintf("=================\n")
        fprintf("｡⋆｡˚APPEARANCE˚｡⋆｡\n")
        fprintf("=================\n")

        UserEC = input("What is your eye colour? \nOPTIONS: Blue • Brown • Black • Green • Other \n", 's');
        UserEC = upper(UserEC);

        UserHC = input("What is your hair colour? \nOPTIONS: Brown • Black • Blonde • Red • Bald • Other \n", 's');
        UserHC = upper(UserHC);

        fprintf("==========================\n")
        fprintf("｡⋆｡˚PERSONALITY & TASTE˚｡⋆｡\n")
        fprintf("==========================\n")

        UserInEx = input("Are you:\n1.A Social Butterfly (Extrovert) εϊз\n2.In your coccon (Introvert) ^_^\nEnter the value you are: \n");
        while UserInEx ~= 1 && UserInEx ~= 2
            UserInEx = input("Enter a vaild option (1 for extrovert, 2 for introvert): \n");
        end
        UserMG = input("What is your favourite music genre? \nOPTIONS: Rock • Pop • Country • Jazz • R&B • Other \n", 's');
        UserMG = upper(UserMG);

        UserPet = input("What is your favourite pet? \nOPTIONS: Dog • Cat • Bird • Fish • None • Other \n", 's');
        UserPet = upper(UserPet);

        UserZo = input("What is your Zodiac Sign? \n", 's');
        UserZo = upper(UserZo);

        fprintf("================\n")
        fprintf("｡⋆｡˚LIFESTYLE˚｡⋆｡\n")
        fprintf("================\n")

        UserJob = input("What is your current occupation? \n", 's');
        UserJob = upper(UserJob);

        UserPT = input("What is your favourite hobby? \n", 's');
        UserPT = upper(UserPT);

        UserInfo(1,1:12) = {UserName, UserGen, UserAge, UserHeight, UserEC, UserHC, UserInEx, UserMG, UserPet, UserZo, UserJob, UserPT};
        save('DatingAppData.mat', 'UserInfo', 'BotInfo', 'BotPref')

        % return to menu
        Graphics(1)
        selection= input("     User Selection: ");
        fprintf("  ====================================\n\n")
        %selection error checking
        while selection ~= [1 2 3 4]
            fprintf("  Not a valid option\n")
            Graphics(1)
            selection= input("     User Selection: ");
            fprintf("  ====================================\n\n")
        end


    elseif selection == 2 % User preferrence section

        Graphics(3)
        fprintf("｡⋆｡˚GENERAL˚｡⋆｡\n")
        fprintf("===============\n")

        PrefGen = input("Tell us your preferred gender (M/F): \n", 's');
        [PrefGen] = GenderErrorCheck(PrefGen); %GENDER ERROR CHECK FUNCTION

        PrefAgeRangeY = input("Tell us your preferred age range\n(Accepted ages: >= 18 and <= 35):\nMinimum ʚɞ : ");

        while PrefAgeRangeY < 18 || PrefAgeRangeY > 35
            PrefAgeRangeY = input("Enter a vaild age (18 - 35) for minimum age: ");
        end
        PrefAgeRangeO = input("Maximum ʚɞ : ");
        while PrefAgeRangeO < PrefAgeRangeY || PrefAgeRangeO > 35
            PrefAgeRangeO = input("Enter a vaild age (Minimum - 35) for maximum age: ");
        end


        PrefAgeRange = [PrefAgeRangeY PrefAgeRangeO];

        fprintf("==================\n")
        fprintf("｡⋆｡˚APPEARANCE˚｡⋆｡\n")
        fprintf("==================\n")

        PrefHeightRangeS = input("Tell us your preferred height range (150cm - 200cm)\nShortest ʚɞ : ");
        while PrefHeightRangeS < 150 || PrefHeightRangeS > 200
            PrefHeightRangeS = input("Enter a vaild height (150cm - 200cm) for shortest: ");
        end
        PrefHeightRangeT = input("Tallest ʚɞ : ");
        while PrefHeightRangeT < PrefHeightRangeS || PrefHeightRangeT > 200
            PrefHeightRangeT = input("Enter a vaild height (shortest - 200cm) for tallest: ");
        end
        PrefHeightRange = [PrefHeightRangeS PrefHeightRangeT];

        PrefEC = input("Tell us your preferred eye colour: \nOPTIONS: Blue • Brown • Black • Green • Any\n", 's');
        PrefEC = upper(PrefEC);

        PrefHC = input("Tell us your preferred hair colour: \nOPTIONS: Brown • Black • Blonde • Red • Bald • Any\n", 's');
        PrefHC = upper(PrefHC);

        fprintf("==========================\n")
        fprintf("｡⋆｡˚PERSONALITY & TASTE˚｡⋆｡\n")
        fprintf("==========================\n")
        PrefInEx = input("Would you prefer:\n1.A Social Butterfly (Extrovert) εϊз\n2.In their coccon (Introvert) ^_^\nEnter the value you'd like:\n");
        while PrefInEx ~= 1 && PrefInEx ~= 2
            PrefInEx = input("Enter a vaild option (1 for extrovert, 2 for introvert): \n");
        end
        UserInfo(2,1:10) = {'User Preferrences', PrefGen, PrefAgeRange, PrefHeightRange, PrefEC, PrefHC, PrefInEx, UserInfo{1,8}(1,:), UserInfo{1,9}(1,:), UserInfo{1,10}(1,:)};
        save('DatingAppData.mat', 'UserInfo', 'BotInfo', 'BotPref')

        % return to menu
        Graphics(1)
        selection= input("     User Selection: ");
        fprintf("  ====================================\n\n")
        %selection error checking
        while selection ~= [1 2 3 4]
            fprintf("  Not a valid option\n")
            Graphics(1)
            selection= input("     User Selection: ");
            fprintf("  ====================================\n\n")
        end


    elseif selection == 3
        % finding a match
        Graphics(4)

        %Primary level matching
        [TMB, TMBP] = Gender(UserInfo, BotInfo, BotPref); % sorts by gender
        [TMB, TMBP] = Range(UserInfo{1,3}, UserInfo{2,3}, TMB, TMBP,3); %sorts by age
        [TMB, TMBP] = Range(UserInfo{1,4}, UserInfo{2,4}, TMB, TMBP,4); %sorts by height
        %Secondary level matching
        [TMB] = Secondary(UserInfo, TMB, TMBP, 5); %eye colour match score
        [TMB] = Secondary(UserInfo, TMB, TMBP, 6); %hair colour match score
        [TMB] = Secondary(UserInfo, TMB, TMBP, 7); %Introvert/extrovert match score
        [TMB] = Secondary(UserInfo, TMB, TMBP, 8); %pet match score
        [TMB] = Secondary(UserInfo, TMB, TMBP, 9); %music match score
        [TMB] = ZodiacCompare(UserInfo, TMB); %matching zodiac score

        %Ranking the match with the highest score
        [Ranked, RankedPref] = Ranking(TMB, TMBP);


        decision = 0;
        counter = 1;
        while decision == 0  %loop until match is choosen or no more matches left
            if isempty(Ranked) == true %no match found
                fprintf("  ======================================\n")
                fprintf("  No match found in our database! Sorry!\n  εϊз Maybe dont be so picky! εϊз\n")
                fprintf("  ======================================\n\n")
                decision = 1;
                Graphics(1)
                selection= input("     User Selection: ");
                fprintf("  ====================================\n\n")
            else %user desicion
                MatchDisplay(Ranked, RankedPref);
                [r c] = size(Ranked);
                matches = r-1;
                fprintf("                                              There are still %d matches left for you\n", matches)
                fprintf("  ====================================\n")
                fprintf("            Enter 1 to ACCEPT\n                  OR\n    Enter 0 to DECLINE and try again!\n");
                fprintf("  ====================================\n")
                decision = input("     User Selection: ");
                fprintf("  ====================================\n\n")

                if decision == 1  %accept
                    selection = 5;
                elseif decision == 0  %reject
                    [Ranked, RankedPref] = Update (Ranked,RankedPref);%Michael's Update Function
                    counter = counter+1;
                end
            end
        end

    end


end

if selection == 4 % User exits app
    Graphics(5)
end
if selection == 5 % match is accepted

    fprintf("♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥ \n")
    fprintf("                                             Congratulations! Your Flutter™ is %s\n", Ranked{1,1})
    fprintf("♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      ♥      \n")

    fprintf("  =========================================\n")
    fprintf("  And it only took you %d attempt(s)\n", counter)
    fprintf("  Please take this complementary data idea:\n")
    fprintf("  ")
    DateIdea() %Michael's Date Idea Function
    fprintf("  =========================================\n")
    Graphics(5)
end


