function [TMB] = ZodiacCompare(UserInfo, TMB)
%ZODIACCOMPARE will see if the zodiac signs are compadible. It will take 2
%cell arrays, user info and the bot info. If the signs both satisfy the
%matching criteria, a point will be given to the bot cell array

[r c] = size(TMB);
TempMatchBot= { };

FireSign = ["ARIES", "LEO", "SAGITTARIUS"];
WaterSign = ["CANCER", "SCORPIO", "PISCES"];
AirSign = ["GEMINI", "LIBRA", "AQUARIUS"];
EarthSign = ["TAURUS", "VIRGO", "CAPRICORN"];

i = 1;
while i <= r
score = 0;
    UserSign = UserInfo{1,10}(1,:);
    BotSign = TMB{i,10}(1,:);

    if any(strcmp(FireSign, UserSign)) == true
        UG = "F";
    elseif any(strcmp(WaterSign, UserSign)) == true
        UG = "W";
    elseif any(strcmp(AirSign, UserSign)) == true
        UG = "A";
    elseif any(strcmp(EarthSign, UserSign)) == true
        UG = "E";
    end

    if any(strcmp(FireSign, BotSign)) == true
        BG = "F";
    elseif any(strcmp(WaterSign, BotSign)) == true
        BG = "W";
    elseif any(strcmp(AirSign, BotSign)) == true
        BG = "A";
    elseif any(strcmp(EarthSign, BotSign)) == true
        BG = "E";
    end

    if strcmp(UG, BG) == true
        TMB(i, 10) = {TMB(i, 10) + "(MATCH)"};
        score = score + 1;
       
    elseif (UG == "F" && BG == "A") || (BG == "F" && UG == "A")
        TMB(i, 10) = {TMB(i, 10) + "(MATCH)"};
        score = score + 1;
        
      
    elseif (UG == "E" && BG == "W") || (BG == "E" && UG == "W")
        TMB(i, 10) = {TMB(i, 10) + "(MATCH)"};
        score = score + 1;
   
    end


    BScore = TMB{i,13};
    BScore = BScore + score;
    TMB(i,13) = {BScore};
    

    for j = 1:13
        TMB(i,j) = {TMB{i,j}(1,:)};
    end

    i = i+1;
end

end

