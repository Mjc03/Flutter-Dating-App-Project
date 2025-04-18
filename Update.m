function[TMB,TMBP] = Update (TMB,TMBP)
%UPDATE will the delete the first row of 2 related cell
%arrays and will return 2 updated cell arrays with the remaining rows 
%moved up by one. BY Michael Cortez

TMB(1,:) = [ ];
TMBP(1,:) = [ ];

empty = cellfun('isempty',TMB);
TMB(all(empty,2),:) = [ ];
TMB(:,all(empty,1)) = [ ];

empty = cellfun('isempty',TMBP);
TMBP(all(empty,2),:) = [ ];
TMBP(:,all(empty,1)) = [ ];


end 