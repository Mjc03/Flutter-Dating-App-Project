function [TMBRanked, TMBPRanked] = Ranking(TMB, TMBP)
%RANKING will take 2 cell arrays of the bots information and bots preferrences
% and rank them heighest to lowest from the column containing their scores.
% It will return an updated list on how they are now sorted

[r c] = size(TMB);

for i = 1:r
    indlow = i;
    for j = i:r
        if TMB{j,13} > TMB{indlow,13}
            indlow = j;
        end
    end
    temp1 = TMB(i,:);
    TMB(i,:) = TMB(indlow,:);
    TMB(indlow,:) = temp1;

    temp2 = TMBP(i,:);
    TMBP(i,:) = TMBP(indlow,:);
    TMBP(indlow,:) = temp2;
end
TMBRanked = TMB;
TMBPRanked = TMBP;

empty = cellfun('isempty',TMBRanked);
TMBRanked(all(empty,2),:) = [ ];
TMBRanked(:,all(empty,1)) = [ ];


empty = cellfun('isempty',TMBPRanked);
TMBPRanked(all(empty,2),:) = [ ];
TMBPRanked(:,all(empty,1)) = [ ];

end

