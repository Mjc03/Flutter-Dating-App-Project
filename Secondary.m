function [TMB] = Secondary(UserInfo, BotInfo, BotPref, column)
%SECONDARY will compare the secondary compnents of the dating app and
%deliver a point to those matching. This includes eye colour, hair colour, fav genre of music, fav pet and personality type. 
%It will take 3 cell arrays: users information, bot information and bot prefrences.
%It will also take the column which is being scored.
%It will return an updated array of matches with their score.

[r c] = size(BotInfo);
TMB= { };

i = 1;
while i <= r
    score = 0;
    if column == 5 %the first function call sets BScore to 0
        BotInfo(i, 13) = {0};
        BScore = BotInfo{i,13};
    end

    if column == 8 || column == 9
    if strcmp(UserInfo{1,column},BotInfo{i,column}) == true
        BotInfo(i, column) = {BotInfo(i, column) + " (MATCH)"};
        score = score + 1;
    end
    end

    if column == 7
     if UserInfo{1,column} == BotPref{i,column} && UserInfo{2,column} == BotInfo{i,column}
        score = score + 1;
     end
    end
    
    if column == 5 || column == 6
        if strcmp(UserInfo{2,column}(1,:),'ANY') == true && strcmp(BotPref{i,column}(1,:),'ANY') == true
            score = score + 1;
        elseif strcmp(UserInfo{2,column}(1,:),'ANY') == true && strcmp(BotPref{i,column}(1,:),'ANY')~= true
            if strcmp(UserInfo{1,column}(1,:),BotPref{i,column}(1,:))== true
                score = score + 1;
            end
        elseif strcmp(UserInfo{2,column}(1,:),'ANY') ~= true && strcmp(BotPref{i,column}(1,:),'ANY') == true
            if  strcmp(UserInfo{2,column}(1,:),BotInfo{i,column}(1,:)) == true
                score = score + 1;
            end

        elseif strcmp(UserInfo{1,column}(1,:),BotPref{i,column}(1,:))== true && ...
                strcmp(UserInfo{2,column}(1,:),BotInfo{i,column}(1,:)) == true
            score = score + 1;
        end
    end
    

    BScore = BotInfo{i,13};
    BScore = BScore + score;
    BotInfo(i,13) = {BScore};

    for j = 1:13
        TMB(i,j) = {BotInfo{i,j}(1,:)};
    end

    i = i + 1;

end
end

