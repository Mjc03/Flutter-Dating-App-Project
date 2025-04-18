function [TMB, TMBP]  = Gender(UserInfo, BotInfo, BotPref)
%GENDER takes the cell arrays of user's info, bot profiles information and their prefrences
%It will find adequate matches based on the user and bots prefernce and
%its output would be two cell arrays of the bots that fit the prefernce
%gender wise.

[r c] = size(BotInfo);

for x = 1:r
    TMB(x,:) = BotInfo(x,:);
    TMBP(x,:) = BotPref(x,:);
end

while r ~= 0

    if TMB{r,2} ~= UserInfo{2,2} || UserInfo{1,2} ~= TMBP{r,2}
  
        TMB(r, :) =  [ ];
        TMBP(r, :) =  [ ];
    end
    r = r -1;
end

empty = cellfun('isempty',TMB);
TMB(all(empty,2),:) = [ ];
TMB(:,all(empty,1)) = [ ];


empty = cellfun('isempty',TMBP);
TMBP(all(empty,2),:) = [ ];
TMBP(:,all(empty,1)) = [ ];



end

