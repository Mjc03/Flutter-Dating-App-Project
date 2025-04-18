function [ValidGen] = GenderErrorCheck(GenInput)
%GENDERERRORCHECK takes the Gender the user entered and checks if it
%matches the accepted input (F,f,M,m). It automatically sets it to
%uppercase aswell. It will return with the prompt again if the input is
%invalid and return the value of the valid gender when finally entered

GenInput = upper(GenInput);
check = 1;
while check == 1
    if GenInput ~= 'F' && GenInput ~= 'M'
        GenInput = input("Enter vaild gender (M/F):\n", 's');
        GenInput = upper(GenInput);
    else
        check = 0;
    end

end
ValidGen = GenInput;
end

