## Auto-Sleep Using Matlab
This matlab program uses Machine Learning to identify the user and if no one is using the system, it triggers a function which automatically presses ```Win + X``` followed by ```U``` and ```S``` to make the system sleep. <br>
This program can be further modified to let specific users use the system and when someone else tries using it, it will sleep. <br>

### Configuring to run the program
* Install necessary toolboxes shown in the error messages after running the program (like Deep Learning Toolbox, Webcam Toolbox, etc.)
* Download the files and put your image in the myImages folder.
* Categorise the photos into sub folders to train the model like the image below.
* ![image](https://user-images.githubusercontent.com/66861659/134371775-7131061e-f348-4633-beda-abaf147096be.png)
* I have Charaterized the results into two ```Yashasvi``` and ```Others```, but you can make your own categories.
* Make sure that your photos are of the size 227 x 227 x 3.
* Run the ```.m``` file named ```TransferLearningVideo.m```. 
* It will take a few minutes based on your processing speed and number of categories and photos you have appointed.
* Don't bother other files, as they are for handling exeptional cases.
