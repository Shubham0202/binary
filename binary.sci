function index = binarySearch(array, numToFind)
    low = 1;
    high = length(array);
    index = -1; // Default if not found
    while low <= high do
        mid = floor((low + high) / 2);
        if array(mid) == numToFind then
            index = mid;
            break;
        elseif array(mid) < numToFind then
            low = mid + 1;
        else
            high = mid - 1;
        end
    end
end

array = [1, 3, 5, 7, 9]; // Already sorted array
numToFind = input("Enter the number to search: ");
index = binarySearch(array, numToFind);
if index == -1 then
    disp("Number not found.");
else
    disp("Number found at position: "), disp(index);
end
