function [ids] = getIDs(len,removingIDs)
	ids=1:len;
	ids(removingIDs)=[];
end
