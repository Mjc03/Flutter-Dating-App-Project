function [TMB, TMBP] = Range(UserValue, UserRange, BotInfo, BotPref, column)
%RANGE can applied to any characteristic where a range must be analyzed
%(age, height). Inputs include the users value and their range (a vector),
% the cell array of the bots information and a cell array for the bots
% preferrence. A column input is also necessary in order to indicate what
% quality is being analyzed.It will find adeqaute matches accorrding to the ranges
% and printthem to the 2 output cell arrays.

[r c] = size(BotInfo);
TMB= { };
TMBP = { };

i = 1;
while i <= r

    BLow = BotPref{i,column}(1,1);
    BHigh = BotPref{i,column}(1,2);
    BRange = [BLow BHigh];
    BValue = BotInfo{i,column};

    ULow = UserRange(1,1);
    UHigh = UserRange(1,2);

    if UserValue >= BLow && UserValue <= BHigh
        if BValue >= ULow && BValue <= UHigh

            TMB(i, 1:13) =  BotInfo(i, 1:13);
            TMBP(i, 1:10) =  BotPref(i, 1:10);
            for j = 1:13
                TMB(i,j) = {BotInfo{i,j}(1,:)};
            end

            for k = 1:10
                TMBP(i,k) = {BotPref{i,k}(1,:)};
            end
        end
    end
    i = i+1;
end

empty = cellfun('isempty',TMB);
TMB(all(empty,2),:) = [ ];
TMB(:,all(empty,1)) = [ ];

empty = cellfun('isempty',TMBP);
TMBP(all(empty,2),:) = [ ];
TMBP(:,all(empty,1)) = [ ];

end

