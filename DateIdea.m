function DateIdea()
%DATEIDEA generates a random date idea and prints it out

Dates = ["Have a picnic at the park","Relax at the SPA","Explore nature and go on a hike", "Learn to cook a new meal together" ...
    "Spend a day exploring a local Art Gallery","Go out on a movie date", "Watch the sunset by the beach","Explore a Botanical garden ","Take a ride on a hot air ballon"...
    "Drive and explore the city","Go horseback riding"," Go to a concert of your favourite artist"...
    "Go ice skating together ", "Watch a sporting event","Take in the night sky and stargaze together","Go on a dinner cruise"...
    ,"Rent a kayak and explore nature","Take a stroll at a carnival ", "Have casual and memorable time at an arcade"...
    "Take a Pottery class together","Head to a local farm and pick ingredients for a meal" ...
    "Explore a local Museum","Dine at a fancy restaurant"];

% Generate an index in the list of Dates 
RandomDate = randi(length(Dates));

% Select a string at a random index 
RandomDateString = Dates(RandomDate);

% Displays the date idea 
disp(RandomDateString)



end 