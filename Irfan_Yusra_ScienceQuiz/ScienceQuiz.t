/*
 Partners: Yusra, Sara
 Submitted on 19 June, 2015.

 ====================================================
 This is a program that runs a quiz about science. It has a total of 30 questions.
 At the beginning of the quiz, a screen will be appear. On the screeen two buttons will be be displayed :
 1. START :
 In which you can choose a category and begin playing
 2. INSTRUCTIONS :
 It is a multiple choice game in which the users are presented with buttons to guess the right answer.
 If the user gets the answer right, the screen clears and it is shown that they have a right answer with a music file playing in the background.
 If the user gets the answer wrong, the screen clears and it is shown that they have a wrong answer with a sad or angry picture with a music file playing in the background.
 After the 10 questions have been finished the program will show the ending in which the user will be shown the number of questions they got right and the number of questions they got wrong.
 THE END!
 =====================================================
 */


import GUI % important for the GUI buttons


View.Set ("graphics:790;570") % setting the screen

% variable for number of rights

var answers : int
answers := 0

% variable for number of wrongs
var wrong : int
wrong := 0



%============================================CHEMISTRY: answer variables for the 30 questions===============================================================

var chemans1Q1 : int
var chemans2Q1 : int
var chemans3Q1 : int


var chemans1Q2 : int
var chemans2Q2 : int
var chemans3Q2 : int

var chemans1Q3 : int
var chemans2Q3 : int
var chemans3Q3 : int


var chemans1Q4 : int
var chemans2Q4 : int
var chemans3Q4 : int


var chemans1Q5 : int
var chemans2Q5 : int
var chemans3Q5 : int


var chemans1Q6 : int
var chemans2Q6 : int
var chemans3Q6 : int


var chemans1Q7 : int
var chemans2Q7 : int
var chemans3Q7 : int


var chemans1Q8 : int
var chemans2Q8 : int
var chemans3Q8 : int


var chemans1Q9 : int
var chemans2Q9 : int
var chemans3Q9 : int


var chemans1Q10 : int
var chemans2Q10 : int
var chemans3Q10 : int


%==========================================================BIOLOGY: answer variables for the 10 questions====================================================

var bioans1Q1 : int
var bioans2Q1 : int
var bioans3Q1 : int


var bioans1Q2 : int
var bioans2Q2 : int
var bioans3Q2 : int


var bioans1Q3 : int
var bioans2Q3 : int
var bioans3Q3 : int


var bioans1Q4 : int
var bioans2Q4 : int
var bioans3Q4 : int


var bioans1Q5 : int
var bioans2Q5 : int
var bioans3Q5 : int


var bioans1Q6 : int
var bioans2Q6 : int
var bioans3Q6 : int


var bioans1Q7 : int
var bioans2Q7 : int
var bioans3Q7 : int


var bioans1Q8 : int
var bioans2Q8 : int
var bioans3Q8 : int


var bioans1Q9 : int
var bioans2Q9 : int
var bioans3Q9 : int


var bioans1Q10 : int
var bioans2Q10 : int
var bioans3Q10 : int



%============================================================PHYSICS: answer variables for the 10 questions=================================================
var physans1Q1 : int
var physans2Q1 : int
var physans3Q1 : int


var physans1Q2 : int
var physans2Q2 : int
var physans3Q2 : int

var physans1Q3 : int
var physans2Q3 : int
var physans3Q3 : int


var physans1Q4 : int
var physans2Q4 : int
var physans3Q4 : int


var physans1Q5 : int
var physans2Q5 : int
var physans3Q5 : int


var physans1Q6 : int
var physans2Q6 : int
var physans3Q6 : int


var physans1Q7 : int
var physans2Q7 : int
var physans3Q7 : int


var physans1Q8 : int
var physans2Q8 : int
var physans3Q8 : int


var physans1Q9 : int
var physans2Q9 : int
var physans3Q9 : int


var physans1Q10 : int
var physans2Q10 : int
var physans3Q10 : int



%===============================================================OTHER VARIABLES=============================================================================

var start : int % for the start button
var ins : int % instruction button
var font : int % for fonts
var intro : int
var bio : int
var chem : int
var phys : int
var back : int

%===================================================================PHYSICS=================================================================================

%===================================================================Physend=================================================================================

procedure physend

    cls
    GUI.Disable (physans1Q10)
    GUI.Disable (physans2Q10) % Disabling previous GUIs
    GUI.Disable (physans3Q10)

    cls

    var background : int := Pic.FileNew ("ending.jpg") % Background image for the emd
    Pic.Draw (background, -10, -10, picMerge)

    colour (white)

    var font3 : int  % Declaring the variable for the font
    font3 := Font.New ("serif:30")  % The font size of the text
    Draw.Text ("SCORE", 325, 500, font3, blue) % Text written inside the speech bubble
    Font.Free (font3)

    var font2 : int % Declaring the variable for the font
    font2 := Font.New ("serif:18")  % The font size of the text
    Draw.Text ("The number of answers that you answered correctly are:", 10, 362, font2, 7) % Text written inside the speech bubble
    Font.Free (font2)

    colour (green)
    locate (13, 75)

    put answers

    var font1 : int % Declaring the variable for the font
    font1 := Font.New ("serif:18")  % The font size of the text
    Draw.Text ("The number of answers that you answered wrong are:", 10, 298, font1, 7) % Text written inside the speech bubble
    Font.Free (font1)

    colour (green)
    locate (17, 75)
    put wrong

    delay (2000)

    cls

    var finish : int := Pic.FileNew ("theend.jpg") % The image of the end
    Pic.Draw (finish, -10, -10, picMerge)

    Music.PlayFile ("end of program.mp3")

end physend   % End of procedure physend





%==================================================================PhysQ10==================================================================================

procedure physwrongQ10 % If the answer is wrong the following code will be read


    cls


    colour (brightblue) % Changes the colour of the text written bellow
    put "The answer was " .. % Puts out the correct answer on the screen
    colour (brightred) % Changes the colour of the text written bellow to emphasize the right answer
    put " Visible light."  % This is the correct answer for this question
    var myPic1 : int := Pic.FileNew ("wrong 10.jpg") % This puts out a sad/angry image, because the user chose wrong answer
    Pic.Draw (myPic1, 350, 75, picMerge)

    var font : int  % Declaring the variable for the font
    font := Font.New ("serif:50") % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav") % Sad/angry music to show that the user has chosen the wrong option
    delay (1000)


    wrong := wrong + 1 % Adding 1 point to the wrong answers so they can be put out in the end


    cls % Clears the screen


    physend
end physwrongQ10 % End of the procedure wrongQ10


procedure physrightQ10 % If the answer is right the following code will be read


    cls % Clears the screen


    var myPic1 : int := Pic.FileNew ("rwtemp2.jpg") % This is the background
    Pic.Draw (myPic1, -50, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:38")  % The font size of the text
    Draw.Text ("You are Right!!", 10, 450, font, 0)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3") % Round of applause because the user chose the correct option
    delay (1000)
    answers := answers + 1 % Adding 1 point to the correct answers so they can be put out in the end


    cls % Clears the screen


    physend
end physrightQ10 % End of the procedure physrightQ10


procedure physQ10


    cls

    GUI.Disable (physans1Q9)
    GUI.Disable (physans2Q9) % Disabling previous GUIs
    GUI.Disable (physans3Q9)


    cls


    var background : int := Pic.FileNew ("physics template.jpg") % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)
    colour (black)


    %Question
    var font : int
    font := Font.New ("serif:13") % The font size of the text
    Draw.Text (" 10) What are visible rays ?", 300, 420, font, black)
    Font.Free (font)

    physans1Q10 := GUI.CreateButtonFull (320, 342, 50, "Visible light  ", physrightQ10, 10, '^D', true) % Creates first answer button and leads user to right image
    physans2Q10 := GUI.CreateButtonFull (320, 275, 50, "Waves emitted from the sun ", physwrongQ10, 10, '^D', true) % Creates second answer button and leads user to wrong image
    physans3Q10 := GUI.CreateButtonFull (320, 205, 50, " Waves used in medical imaging", physwrongQ10, 10, '^D', true) % Creates third answer button and leads user to wrong image


    var pic : int := Pic.FileNew ("physQ10.jpg") % Background image for the question
    Pic.Draw (pic, 20, 220, picMerge)


end physQ10 % End of procedure physQ10


%==================================================================PhysQ9===================================================================================

procedure physwrongQ9 % If the answer is wrong the following code will be read


    cls


    colour (brightblue) % Changes the colour of the text written bellow
    put "The answer was " .. % Puts out the correct answer on the screen
    colour (brightred) % Changes the colour of the text written bellow to emphasis on the right answer
    put "17." % This is the correct answer of this question
    var myPic1 : int := Pic.FileNew ("wrong 9.jpg") % This a sad/angry image, because the user chose the wrong answer
    Pic.Draw (myPic1, 400, 50, picMerge)


    var font : int   % Declaring the variable for the font
    font := Font.New ("serif:50")   % The font size of the text
    Draw.Text ("You are wrong!!!", 150, 400, font, 12)   % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav") % Sad/angry music to show that the user has chosen the wrong option
    delay (1000)


    wrong := wrong + 1 % Adding 1 point to the wrong answers so they can be put out in the end


    cls % Clears the screen


    physQ10
end physwrongQ9 % End of the procedure biowrongQ9


procedure physrightQ9 % If the answer is right the following code will be read


    cls % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp2.jpg") % This is the right background
    Pic.Draw (myPic1, -50, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:38")  % The font size of the text
    Draw.Text ("You are Right!!", 10, 450, font, 0)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3") % Round of applause because the user has chosen the correct option
    delay (1000)
    answers := answers + 1 % Adding 1 point to the correct answers so they can be put out in the end


    cls % Clears the screen


    physQ10
end physrightQ9 % End of the procedure physrightQ9


procedure physQ9


    cls

    GUI.Disable (physans1Q8)
    GUI.Disable (physans2Q8) % Disabling previous GUIs
    GUI.Disable (physans3Q8)


    cls


    var background : int := Pic.FileNew ("physics template.jpg") % Background image for the question
    Pic.Draw (background, 0, 0, picMerge)
    colour (black)


    %Question

    var font : int
    font := Font.New ("serif:13")  % The font size of the text
    Draw.Text ("9) Find the angle of refraction when light passes from air into a substance with an index of refraction of", 50, 420, font, black)
    Draw.Text ("1.98 at an angle of incidence of 35 degrees.", 50, 400, font, black)
    Font.Free (font)

    physans1Q9 := GUI.CreateButtonFull (320, 342, 50, "  17  ", physrightQ9, 10, '^D', true) % Creates first answer button and leads user to right image
    physans2Q9 := GUI.CreateButtonFull (320, 275, 50, "16 ", physwrongQ9, 10, '^D', true) % Creates second answer button and leads user to wrong image
    physans3Q9 := GUI.CreateButtonFull (320, 205, 50, " 15 ", physwrongQ9, 10, '^D', true) % Creates third answer button and leads user to wrong image


    var pic : int := Pic.FileNew ("physQ9.jpg") % Visual aid for this question
    Pic.Draw (pic, 40, 120, picMerge)


end physQ9 % End of the procedure physQ9




%=====================================================================PhysQ8===============================================================================

procedure physwrongQ8 % If the answer is wrong the following code will be read

    cls

    colour (brightblue) % Changes the colour of the text written bellow
    put "The answer was " .. % Puts out the correct answer on the screen
    colour (brightred) % Changes the colour of the text written bellow to emphasis on the right answer
    put " Light has to travel to a less dense material."  % This is the correct answer of this question
    var myPic1 : int := Pic.FileNew ("wrong 8.jpg") % This puts out a sad/angry image, because the user chose the wrong answer
    Pic.Draw (myPic1, 350, 75, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50") % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)   % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav") % Sad/angry music because the user chose the wrong option
    delay (1000)

    wrong := wrong + 1 % Adding 1 point to the wrong answers so they can be put out in the end

    cls % Clears the screen

    physQ9
end physwrongQ8 % End of the procedure physwrongQ8


procedure physrightQ8 % If the answer is right the following code will be displayed


    cls % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp2.jpg") % This is the right background
    Pic.Draw (myPic1, -50, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:38")  % The font size of the text
    Draw.Text ("You are Right!!", 10, 450, font, 0) % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3") % Cheerful music to show that the user has chosen the correct option
    delay (1000)
    answers := answers + 1 % Adding 1 point to the correct answers so they can be put out in the end

    cls % Clears the screen

    physQ9
end physrightQ8 % End of the procedure physrightQ1


procedure physQ8

    cls

    GUI.Disable (physans1Q7)
    GUI.Disable (physans2Q7) % Disabling previous GUIs
    GUI.Disable (physans3Q7)

    cls

    var background : int := Pic.FileNew ("physics template.jpg") % Dackground image/template for the question
    Pic.Draw (background, 0, 0, picMerge)
    colour (black)


    %Question
    var font : int
    font := Font.New ("serif:13") % The font size of the text
    Draw.Text ("8) What condition is required for total internal reflection to occur ?", 180, 420, font, black)
    Font.Free (font)


    physans1Q8 := GUI.CreateButtonFull (320, 342, 50, "  Light has to remain in the same medium ", physwrongQ8, 10, '^D', true) % Creates first answer button and leads user to right image
    physans2Q8 := GUI.CreateButtonFull (320, 275, 50, " Light has to travel to a less dense material ", physrightQ8, 10, '^D', true)  % Creates second answer button and leads user to wrong image
    physans3Q8 := GUI.CreateButtonFull (320, 205, 50, " Light has to travel a more dense material  ", physwrongQ8, 10, '^D', true) % Creates third answer button and leads user to wrong image


    var pic : int := Pic.FileNew ("physQ8.jpg") % Visual aid for this question
    Pic.Draw (pic, 20, 200, picMerge)


end physQ8 % End of procedure physQ8


%====================================================================PhysQ7=================================================================================

procedure physwrongQ7 % If the answer is wrong the following code will be read

    cls

    colour (brightblue) % Changes the colour of the text written bellow
    put "The answer was " .. % Puts out the correct answer on the screen
    colour (brightred) % Changes the colour of the text written bellow to emphasis on the right answer
    put "Radio waves"   % This is the correct answer of this question
    var myPic1 : int := Pic.FileNew ("wrong 7.jpg") % This puts out a sad/angry image, because the user chose the wrong answer
    Pic.Draw (myPic1, 350, 40, picMerge)


    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50") % The font size of the text
    Draw.Text ("You are wrong!!!", 200, 370, font, 12)     % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav") % Sad/angry music to show that the user has chosen the wrong option
    delay (1000)


    wrong := wrong + 1 % Adding 1 point to the wrong answers so they can be put out in the end


    cls % Clears the screen


    physQ8
end physwrongQ7 % End of the procedure physwrongQ4


procedure physrightQ7 % If the answer is right the following code will be read


    cls % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp2.jpg") % This is the background
    Pic.Draw (myPic1, -50, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:38")   % The font size of the text
    Draw.Text ("You are Right!!", 10, 450, font, 0)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3") % Round of applause because the user chose the correct option
    delay (1000)
    answers := answers + 1 % Adding 1 point to the correct answers so they can be put out in the end


    cls % Clears the screen


    physQ8
end physrightQ7 % End of the procedure physrightQ7


procedure physQ7


    cls

    GUI.Disable (physans1Q6)
    GUI.Disable (physans2Q6) % Disabling previous GUIs
    GUI.Disable (physans3Q6)


    cls


    var background : int := Pic.FileNew ("physics template.jpg") % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)
    colour (black)


    %Question
    var font : int
    font := Font.New ("serif:13") % The font size of the text
    Draw.Text ("  7) Which type of wave has the longest wavelength ?", 200, 420, font, black)
    Font.Free (font)


    physans1Q7 := GUI.CreateButtonFull (320, 342, 50, " Infrared rays ", physwrongQ7, 10, '^D', true)    % Creates first answer button and leads user to wrong image
    physans2Q7 := GUI.CreateButtonFull (320, 275, 50, "Radio waves ", physrightQ7, 10, '^D', true)  % Creates second answer button and leads user to right image
    physans3Q7 := GUI.CreateButtonFull (320, 205, 50, " Microwaves ", physwrongQ7, 10, '^D', true) % Creates third answer button and leads user to wrong image



    var pic : int := Pic.FileNew ("physQ7.jpg") % Visual aid for the question
    Pic.Draw (pic, 20, 200, picMerge)


end physQ7 % End of the procedure physQ7




%======================================================================PhysQ6===============================================================================

procedure physwrongQ6 % If the answer is wrong the following code will be read


    cls


    colour (brightblue) % Changes the colour of the text written bellow
    put "The answer was " .. % Puts out the correct answer on the screen
    colour (brightred) % Changes the colour of the text written bellow to emphasis on the right answer
    put "Gamma rays"  % This is the correct answer of this question
    var myPic1 : int := Pic.FileNew ("wrong 6.jpg") % This puts out a sad/angry image, because the user chose the wrong answer
    Pic.Draw (myPic1, 350, 50, picMerge)

    var font : int  % Declaring the variable for the font
    font := Font.New ("serif:50")   % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)   % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong. wav") % Sad/angry music because the user chose the wrong option
    delay (1000)


    wrong := wrong + 1 % Adding 1 point to the wrong answers so they can be put out in the end


    cls % Clears the screen


    physQ7
end physwrongQ6 % End of the procedure wrongQ6


procedure physrightQ6 % If the answer is right the following code will be displayed


    cls % Clears the screen


    var myPic1 : int := Pic.FileNew ("rwtemp2.jpg") % This is the background
    Pic.Draw (myPic1, -50, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:38")  % The font size of the text
    Draw.Text ("You are Right!!", 10, 450, font, 0)  % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3") % Round of applause to show that the user chose the correct option
    delay (1000)
    answers := answers + 1 % Adding 1 point to the correct answers so they can be put out in the end


    cls % Clears the screen


    physQ7
end physrightQ6 % End of the procedure physrightQ6


procedure physQ6


    cls

    GUI.Disable (physans1Q5)
    GUI.Disable (physans2Q5) % Disabling previous GUIs
    GUI.Disable (physans3Q5)

    cls

    var background : int := Pic.FileNew ("physics template.jpg") % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)
    colour (black)


    %Question
    var font : int
    font := Font.New ("serif:13") % The font size of the text
    Draw.Text (" 6) Which type of wave has the highest frequency ?", 200, 420, font, black)
    Font.Free (font)


    physans1Q6 := GUI.CreateButtonFull (320, 342, 50, " X- rays ", physwrongQ6, 10, '^D', true)    % Creates first answer button and leads user to wrong image
    physans2Q6 := GUI.CreateButtonFull (320, 275, 50, " Gamma rays ", physrightQ6, 10, '^D', true) % Creates second answer button and leads user to right image
    physans3Q6 := GUI.CreateButtonFull (320, 205, 50, " Ultraviolet rays  ", physwrongQ6, 10, '^D', true) % Creates third answer button and leads user to wrong image


    var pic : int := Pic.FileNew ("physQ6.jpg") % Visual aid for the question
    Pic.Draw (pic, 20, 200, picMerge)


end physQ6 % End of the procedure physQ6



%======================================================================PhysQ5===============================================================================

procedure physwrongQ5 % if the answer is wrong the following code will be read


    cls


    colour (brightblue) % Changes the colour of the text written bellow
    put "The answer was " .. % Puts out the correct answer on the screen
    colour (brightred) % Changes the colour of the text written bellow to emphasis on the right answer
    put "  1.56  " % This is the correct answer of this question
    var myPic1 : int := Pic.FileNew ("wrong 5.jpg") % This puts out a sad/angry image, because the user chose the wrong answer
    Pic.Draw (myPic1, 350, 30, picMerge)


    var font : int    % Declaring the variable for the font
    font := Font.New ("serif:50") % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12) % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong. wav") % Sad/angry music because the user chose the wrong option
    delay (1000)


    wrong := wrong + 1 % Adding 1 point to the wrong answers so they can be put out in the end


    cls %Clears the screen


    physQ6
end physwrongQ5 % End of the procedure physwrongQ5


procedure physrightQ5 % If the answer is right the following code will be read


    cls % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp2.jpg") % This is the right background
    Pic.Draw (myPic1, -50, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:38")  % The font size of the text
    Draw.Text ("You are Right!!", 10, 450, font, 0)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3") % Cheerful music to show that the user has chosen the correct option
    delay (1000)
    answers := answers + 1 % Adding 1 point to the correct answers so they can be put out in the end


    cls % Clears the screen


    physQ6
end physrightQ5 % end of the procedure physrightQ5


procedure physQ5


    cls

    GUI.Disable (physans1Q4)
    GUI.Disable (physans2Q4) % Disabling previous GUIs
    GUI.Disable (physans3Q4)


    cls


    var background : int := Pic.FileNew ("physics template.jpg") % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)
    colour (black)


    %Question
    var font : int
    font := Font.New ("serif:13") % The font size of the text
    Draw.Text (" 5) The speed of light through a substance is 1.818 x 10 (to the power of) 8 m/s. What is the refraction index?", 10, 420, font, black)
    Font.Free (font)


    physans1Q5 := GUI.CreateButtonFull (320, 342, 50, "  1.8 ", physwrongQ5, 10, '^D', true)   % Creates first answer button and leads user to wrong image
    physans2Q5 := GUI.CreateButtonFull (320, 275, 50, "  1.43 ", physwrongQ5, 10, '^D', true)  % Creates second answer button and leads user to wrong image
    physans3Q5 := GUI.CreateButtonFull (320, 205, 50, " 1.56  ", physrightQ5, 10, '^D', true)  % Creates third answer button and leads user to right image



    var pic : int := Pic.FileNew ("physQ5.jpg") % Visual aid for the question
    Pic.Draw (pic, 20, 220, picMerge)


end physQ5 % End of the procedure physQ5


%===================================================================PhysQ4==================================================================================

procedure physwrongQ4 % if the answer is wrong the following code will be read


    cls


    colour (brightblue) % Changes the colour of the text written bellow
    put "The answer was " .. % Puts out the correct answer on the screen
    colour (brightred) % Changes the colour of the text written bellow to emphasis on the right answer
    put "  5.4 cm " % This is the correct answer of this question
    var myPic1 : int := Pic.FileNew ("wrong 4.jpg") % This puts out a sad/angry image because the user chose the wrong answer
    Pic.Draw (myPic1, 450, 30, picMerge)


    var font : int    % Declaring the variable for the font
    font := Font.New ("serif:50")  % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12) % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav") % Sad/angry music because the user chose the wrong option
    delay (1000)


    wrong := wrong + 1 % Adding 1 point to the wrong answers so they can be put out in the end


    cls % Clears the screen


    physQ5
end physwrongQ4 % End of the procedure physwrongQ4


procedure physrightQ4 % If the answer is right the following code will be read


    cls % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp2.jpg") % This is the right background
    Pic.Draw (myPic1, -50, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:38")  % The font size of the text
    Draw.Text ("You are Right!!", 10, 450, font, 0)  % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3") % Round of applause because the user chose the correct option
    delay (1000)
    answers := answers + 1 % Adding 1 point to the correct answers so they can be put out in the end

    cls % Clears the screen

    physQ5
end physrightQ4 % End of the procedure physrightQ4


procedure physQ4

    cls

    GUI.Disable (physans1Q3)
    GUI.Disable (physans2Q3) % Disabling previous GUIs
    GUI.Disable (physans3Q3)

    cls

    var background : int := Pic.FileNew ("physics template.jpg") % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)
    colour (black)


    %Question
    var font : int
    font := Font.New ("serif:13") % The font size of the text
    Draw.Text (" 4) The magnification of a concave mirror is 0.24. What is the size of the image if the object is 22.1 cm high?", 30, 420, font, black)
    Font.Free (font)


    physans1Q4 := GUI.CreateButtonFull (320, 342, 50, " 3.6 cm  ", physwrongQ4, 10, '^D', true) % Creates first answer button and leads user to wrong image
    physans2Q4 := GUI.CreateButtonFull (320, 275, 50, "  3.4 cm ", physwrongQ4, 10, '^D', true) % Creates second answer button and leads user to wrong image
    physans3Q4 := GUI.CreateButtonFull (320, 205, 50, "  5.4 cm ", physrightQ4, 10, '^D', true) % Creates third answer button and leads user to right image



    var pic : int := Pic.FileNew ("physQ4.jpg") % Visuala aid for the question
    Pic.Draw (pic, 20, 220, picMerge)


end physQ4 % End of the procedure physQ4


%===================================================================PhysQ3==================================================================================

procedure physwrongQ3 % If the answer is wrong the following code will be read

    cls

    colour (brightblue) % Changes the colour of the text written bellow
    put "The answer was " .. % Puts out the correct answer on the screen
    colour (brightred) % Changes the colour of the text written bellow to emphasis on the right answer
    put "  2.05 x 10 (to the power of) 8 m/s " % This is the correct answer of this question
    var myPic1 : int := Pic.FileNew ("wrong 3.jpeg") % This puts out a sad/angry image, because the user chose the wrong answer
    Pic.Draw (myPic1, 350, 75, picMerge)

    var font : int      % Declaring the variable for the font
    font := Font.New ("serif:50")  % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12) % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("wrong.wav") % Sad/angry music beacuse the user chose the wrong option
    delay (1000)

    wrong := wrong + 1 % Adding 1 point to the wrong answers so they can be put out in the end

    cls % Clears the screen

    physQ4
end physwrongQ3 % End of the procedure physwrongQ3


procedure physrightQ3 % If the answer is right the following code will be read

    cls % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp2.jpg") % This is the right background
    Pic.Draw (myPic1, -50, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:38")   % The font size of the text
    Draw.Text ("You are Right!!", 10, 450, font, 0) % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3") % Round of applause because the user chose the correct option
    delay (1000)
    answers := answers + 1 % Adding 1 point to the correct answers so they can be put out in the end

    cls % Clears the screen


    physQ4
end physrightQ3 % End of the procedure physrightQ3


procedure physQ3

    cls

    GUI.Disable (physans1Q2)
    GUI.Disable (physans2Q2) % Disabling previous GUIs
    GUI.Disable (physans3Q2)

    cls

    var background : int := Pic.FileNew ("physics template.jpg") % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)
    colour (black)

    %Question
    var font : int
    font := Font.New ("serif:13") % The font size of the text
    Draw.Text (" 3) What is the speed of light in a substance that has an index of refraction of 1.46? ", 100, 420, font, black)
    Font.Free (font)


    physans1Q3 := GUI.CreateButtonFull (320, 342, 50, " 2.05 x 10(to the power of)8 m/s  ", physrightQ3, 10, '^D', true) % Creates first answer button and leads user to right image
    physans2Q3 := GUI.CreateButtonFull (320, 275, 50, " 1.66 x 10(to the power of)8 m/s ", physwrongQ3, 10, '^D', true)  % Creates second answer button and leads user to wrong image
    physans3Q3 := GUI.CreateButtonFull (320, 205, 50, "  2.03 x 10(to the power of)8 m/s ", physwrongQ3, 10, '^D', true) % Creates third answer button and leads user to wrong image



    var pic : int := Pic.FileNew ("physQ3.jpg") % Visual aid for the question
    Pic.Draw (pic, 20, 220, picMerge)


end physQ3 % End of the procedure physQ3


%======================================================================PhysQ2==============================================================================

procedure physwrongQ2 % if the answer is wrong the following code will be read

    cls

    colour (brightblue) % Changes the colour of the text written bellow
    put "The answer was " .. % Puts out the correct answer on the screen
    colour (brightred) % Changes the colour of the text written bellow to emphasis on the right answer
    put " 70 degrees " % This is the correct answer of this question
    var myPic1 : int := Pic.FileNew ("wrong 2.jpeg") % This puts out a sad/angry image, because the user chose wrong answer
    Pic.Draw (myPic1, 390, 75, picMerge)


    var font : int      % Declaring the variable for the font
    font := Font.New ("serif:50")   % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12) % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav") % Sad/angry music because the user chose the wrong option
    delay (1000)


    wrong := wrong + 1 % Adding 1 point to the wrong answers so they can be put out in the end

    cls % Clears the screen

    physQ3


end physwrongQ2 % End of the procedure physwrongQ2


procedure physrightQ2 % If the answer is right the following code will be read


    cls % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp2.jpg") % This is the right background
    Pic.Draw (myPic1, -50, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:38")   % The font size of the text
    Draw.Text ("You are Right!!", 10, 450, font, 0) % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3") % Round of applause because the user chose the correct option

    answers := answers + 1 % Adding 1 point to the correct answers so they can be put out in the end


    cls % Clears the screen


    physQ3
end physrightQ2 % End of the procedure physrightQ2


procedure physQ2


    cls

    GUI.Disable (physans1Q1)
    GUI.Disable (physans2Q1) % Disabling previous GUIs
    GUI.Disable (physans3Q1)


    cls


    var background : int := Pic.FileNew ("physics template.jpg") % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)
    colour (black)


    %Question
    var font : int
    font := Font.New ("serif:13") % The font size of the text
    Draw.Text (" 2) The critical angle is 62 degrees. Which angle will ensure that total internal reflection will occur? ", 50, 420, font, black)
    Font.Free (font)


    physans1Q2 := GUI.CreateButtonFull (320, 342, 50, " 70 degrees ", physrightQ2, 10, '^D', true) % Creates first answer button and leads user to right image
    physans2Q2 := GUI.CreateButtonFull (320, 275, 50, " 20 degrees", physwrongQ2, 10, '^D', true)  % Creates second answer button and leads user to wrong image
    physans3Q2 := GUI.CreateButtonFull (320, 205, 50, " 32 degrees", physwrongQ2, 10, '^D', true)  % Creates third answer button and leads user to wrong image



    var pic : int := Pic.FileNew ("physQ2.jpg") % Visual aid for the question
    Pic.Draw (pic, 10, 220, picMerge)


end physQ2 % End of the procedure physQ2


%=====================================================================PhysQ1===============================================================================

procedure physwrongQ1 % If the answer is wrong the following code will be read


    cls


    colour (brightblue) % Changes the colour of the text written bellow
    put "The answer was " .. % Puts out the correct answer on the screen
    colour (brightred) % Changes the colour of the text written bellow to emphasis on the right answer
    put "1.16" % This is the correct answer of this question

    var myPic1 : int := Pic.FileNew ("wrong 1.jpg")  % This puts out a sad/angry image, because the user chose the wrong answer
    Pic.Draw (myPic1, 350, 75, picMerge)

    var font : int      % Declaring the variable for the font
    font := Font.New ("serif:50")   %  The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav") % Sad/angry music because the user chose the wrong option
    delay (1000)


    wrong := wrong + 1 % Adding 1 point to the wrong answers so they can be put out in the end


    cls % Clears the screen


    physQ2


end physwrongQ1 % End of the procedure physwrongQ1


procedure physrightQ1 % If the answer is right the following code will be displayed


    cls % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp2.jpg") % This is the background
    Pic.Draw (myPic1, -50, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:38")  % The font size of the text
    Draw.Text ("You are Right!!", 10, 450, font, 0)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3") % Round of applause because the user chose the correct option

    answers := answers + 1 % Adding 1 point to the correct answers so they can be put out in the end


    cls % Clears the screen


    physQ2
end physrightQ1 % End of the procedure physrightQ1


procedure physQ1


    cls



    var background : int := Pic.FileNew ("physics template.jpg") % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)
    colour (black)


    %Question
    var font : int
    font := Font.New ("serif:13")
    Draw.Text ("1) If the angle of refraction is 43 degrees and the angle of incidence is 52 degrees, what is the index of refraction?", 10, 420, font, black)
    Font.Free (font)


    physans1Q1 := GUI.CreateButtonFull (320, 342, 50, " 1.16 ", physrightQ1, 10, '^D', true)  % Creates first answer button and leads user to right image
    physans2Q1 := GUI.CreateButtonFull (320, 275, 50, " 1.80 ", physwrongQ1, 10, '^D', true) % Creates second answer button and leads user to wrong image
    physans3Q1 := GUI.CreateButtonFull (320, 205, 50, " 1.1", physwrongQ1, 10, '^D', true)  % Creates third answer button and leads user to wrong image



    var pic : int := Pic.FileNew ("physQ1.jpg") % Visual aid for the question
    Pic.Draw (pic, 20, 120, picMerge)


end physQ1 % End of the procedure physQ1

%===============================================================WARNING=============================================================================================
procedure warning

    cls

    GUI.Disable (chem)
    GUI.Disable (phys) % Disabling previous GUIs
    GUI.Disable (bio)
cls 
    var font : int
    font := Font.New ("serif:23")

    Draw.Text ("WARNING: You need a calculator, pencil and paper !!!!", 50, 300, font, red)
delay (3000)
    physQ1
end warning

%====================================================================CHEMISTRY==============================================================================

%=====================================================================Chemend===============================================================================

procedure chemend

    cls
    GUI.Disable (chemans1Q10)
    GUI.Disable (chemans2Q10)     % disabling previous GUIs
    GUI.Disable (chemans3Q10)

    cls

    var background : int := Pic.FileNew ("ending.jpg")     % Background image for the end
    Pic.Draw (background, -10, -10, picMerge)

    colour (white)

    var font3 : int     % Declaring the variable for the font
    font3 := Font.New ("serif:30")     % The font size of the text
    Draw.Text ("SCORE", 325, 500, font3, blue)     % Text written inside the speech bubble
    Font.Free (font3)

    var font2 : int     % Declaring the variable for the font
    font2 := Font.New ("serif:18")     % The font size of the text
    Draw.Text ("The number of answers that you answered correctly are:", 10, 362, font2, 7)     % Text written inside the speech bubble
    Font.Free (font2)

    colour (green)
    locate (13, 75)

    put answers

    var font1 : int     % Declaring the variable for the font
    font1 := Font.New ("serif:18")     % The font size of the text
    Draw.Text ("The number of answers that you answered wrong are:", 10, 298, font1, 7)     % Text written inside the speech bubble
    Font.Free (font1)

    colour (green)
    locate (17, 75)
    put wrong

    delay (2000)

    cls

    var finish : int := Pic.FileNew ("theend.jpg")     % The image of the end
    Pic.Draw (finish, -10, -10, picMerge)

    Music.PlayFile ("end of program.mp3")

end chemend     % End of the procedure chemend

%================================================================ChemQ10====================================================================================

procedure chemwrongQ10     % If the answer is wrong the following code will be read
    cls

    colour (brightblue)     % Changes the colour of the text written bellow
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of the text written bellow to emphasis on the right answer
    put "Base ."       % This is the correct answer of this question

    var myPic1 : int := Pic.FileNew ("wrong 10.jpg")     % This puts out a a sad/angry image because the user chose the wrong answer
    Pic.Draw (myPic1, 350, 75, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav")     % Sad/angry music to show that the user chose the wrong option
    delay (1000)
    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end

    cls     % Clears the screen

    chemend
end chemwrongQ10     % End of the procedure chemwrongQ10


procedure chemrightQ10     % If the answer is right the following code will be displayed

    cls     % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp1.jpg")     % This is the right background
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 80, 350, font, 1)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % Round of applause because the user chose the correct option
    delay (1000)
    answers := answers + 1     % Adding 1 point to the correct answers so they can be put out in the end

    cls     % Clears the screen

    chemend
end chemrightQ10     % End of the procedure chemrightQ10


procedure chemQ10
    cls


    GUI.Disable (chemans1Q9)
    GUI.Disable (chemans2Q9)     % Disabling previous GUIs
    GUI.Disable (chemans3Q9)

    cls

    var background : int := Pic.FileNew ("chemistry template.jpg")     % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)

    colour (black)
    %Question
    var font : int
    font := Font.New ("serif:13")     % The font size of the text
    Draw.Text ("10). What can neutralize acid ?  ", 300, 420, font, black)
    Font.Free (font)

    chemans1Q10 := GUI.CreateButtonFull (320, 342, 50, " Base ", chemrightQ10, 10, '^D', true)     % Creates first answer button and leads user to right image
    chemans2Q10 := GUI.CreateButtonFull (320, 275, 50, "Water ", chemwrongQ10, 10, '^D', true)     % Creates second answer button and leads user to wrong image
    chemans3Q10 := GUI.CreateButtonFull (320, 205, 50, "Acids", chemwrongQ10, 10, '^D', true)     % Creates third answer button and leads user to wrong image


    var pic : int := Pic.FileNew ("chemQ10.jpg")     % Visual aid for the question
    Pic.Draw (pic, 20, 220, picMerge)


end chemQ10     % End of the procedure chemQ10



%=====================================================================ChemQ9================================================================================

procedure chemwrongQ9     % If the answer is wrong the following code will be read
    cls

    colour (brightblue)     % Changes the colour of the text written bellow
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of the text written bellow to emphasis on the right answer
    put " 7."     % This is the correct answer of this question

    var myPic1 : int := Pic.FileNew ("wrong 9.jpg")     % This puts out a sad/angry image, because the user chose the wrong answer
    Pic.Draw (myPic1, 400, 50, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 150, 400, font, 12)     % text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav")     % Sad/angry music because the user chose the wrong option
    delay (1000)
    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end

    cls     % Clears the screen

    chemQ10
end chemwrongQ9     % End of the procedure chemwrongQ9


procedure chemrightQ9     % If the answer is right the following code will be read

    cls     % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp1.jpg")     % This is the right background
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 80, 350, font, 1)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % Round of applause because the user chose the correct option
    delay (1000)

    answers := answers + 1     % Adding 1 point to the correct answers so they can be put out in the end

    cls     % Clears the screen

    chemQ10
end chemrightQ9     % End of the procedure chemrightQ9



procedure chemQ9
    cls

    GUI.Disable (chemans1Q8)
    GUI.Disable (chemans2Q8)     % Disabling previous GUIs
    GUI.Disable (chemans3Q8)

    cls

    var background : int := Pic.FileNew ("chemistry template.jpg")     % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)

    colour (black)
    %Question
    var font : int

    font := Font.New ("serif:13")     % The font size of the text
    Draw.Text (" 9) What is the pH of pure water ?  ", 300, 420, font, black)
    Font.Free (font)

    chemans1Q9 := GUI.CreateButtonFull (320, 342, 50, " 7 ", chemrightQ9, 10, '^D', true)     % Creates first answer button and leads user to right image
    chemans2Q9 := GUI.CreateButtonFull (320, 275, 50, " 0 ", chemwrongQ9, 10, '^D', true)     % Creates second answer button and leads user to wrong image
    chemans3Q9 := GUI.CreateButtonFull (320, 205, 50, "14", chemwrongQ9, 10, '^D', true)     % Creates third answer button and leads user to wrong image

    var pic : int := Pic.FileNew ("chemQ9.jpg")     % Visual aid for the question
    Pic.Draw (pic, 20, 220, picMerge)


end chemQ9     % Endof the procedure chemQ9

%==================================================================ChemQ8===================================================================================

procedure chemwrongQ8     % If the answer is wrong the following code will be read
    cls

    colour (brightblue)     % Changes the colour of the text written bellow
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of the text written bellow to emphasis on the right answer
    put "Only carbon dioxide and water"     % This is the correct answer of this question

    var myPic1 : int := Pic.FileNew ("wrong 8.jpg")     % This puts out a  sad/angry image, because the user chose the wrong answer
    Pic.Draw (myPic1, 350, 75, picMerge)

    var font : int      % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("wrong.wav")     % Sad/angry music because the user chose the wrong option
    delay (1000)
    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end

    cls     % Clears the screen

    chemQ9
end chemwrongQ8     % End of the procedure chemwrongQ8


procedure chemrightQ8     % If the answer is right the following code will be read

    cls     % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp1.jpg")     % This is the  right background
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 80, 350, font, 1)     % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("right.mp3")     % Round of applause because the user chose the correct option
    delay (1000)

    answers := answers + 1     % Adding 1 point to the correct answers so they can be put out in the end

    cls     % Clears the screen

    chemQ9
end chemrightQ8     % End of the procedure chemrightQ8


procedure chemQ8
    cls

    GUI.Disable (chemans1Q7)
    GUI.Disable (chemans2Q7)     % Disabling previous GUIs
    GUI.Disable (chemans3Q7)

    cls

    var background : int := Pic.FileNew ("chemistry template.jpg")     % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)

    colour (black)
    %Question
    var font : int

    font := Font.New ("serif:13")     % The font size of the text
    Draw.Text (" 8) The products of a complete combustion reaction are called:", 300, 420, font, black)
    Font.Free (font)


    chemans1Q8 := GUI.CreateButtonFull (320, 342, 50, " Only carbon dioxide, water, carbon monoxide and unburned fuel ", chemwrongQ8, 10, '^D', true)
    % Creates first answer button and leads user to wrong image
    chemans2Q8 := GUI.CreateButtonFull (320, 275, 50, " Only carbon monoxide, unburned fuel and water ", chemwrongQ8, 10, '^D', true)     % Creates second answer button and leads user to wrong image
    chemans3Q8 := GUI.CreateButtonFull (320, 205, 50, "Only carbon dioxide and water", chemrightQ8, 10, '^D', true)     % Creates third answer button and leads user to right image


    var pic : int := Pic.FileNew ("chemQ8.jpg")     % Visual aid for the question
    Pic.Draw (pic, 20, 220, picMerge)

end chemQ8     % End of the procedure chemQ8


%===================================================================ChemQ7=================================================================================

procedure chemwrongQ7     % If the answer is wrong the following code will be read
    cls


    colour (brightblue)     % Changes the colour of the text written bellow
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of the text written bellow to emphasis on the right answer
    put "Solution concentration is 100 times less acidic"     % This is the correct answer of this question


    var myPic1 : int := Pic.FileNew ("wrong 7.jpg")     % This puts out a sad/angry image, because the user chose the wrong answer
    Pic.Draw (myPic1, 350, 40, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 200, 370, font, 12)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("wrong.wav")     % Sad/angry music to because the user chose the wrong option
    delay (1000)
    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end

    cls     % Clears the screen

    chemQ8
end chemwrongQ7     % End of the procedure chemwrongQ7


procedure chemrightQ7     % If the answer is right the following code will be read

    cls     % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp1.jpg")     % This is the right background
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 80, 350, font, 1)     % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("right.mp3")     % Round of applause because the user chose the correct option
    delay (1000)

    answers := answers + 1     % Adding 1 point to the correct answers so they can be put out in the end

    cls     % Clears the screen

    chemQ8
end chemrightQ7     % End of the procedure chemrightQ7


procedure chemQ7
    cls

    GUI.Disable (chemans1Q6)
    GUI.Disable (chemans2Q6)     % Disabling previous GUIs
    GUI.Disable (chemans3Q6)

    cls

    var background : int := Pic.FileNew ("chemistry template.jpg")     % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)

    colour (black)
    %Question
    var font : int

    font := Font.New ("serif:13")     % The font size of the text
    Draw.Text (" 7)  Which of the following statements about going from pH 4 to 6 is correct ", 250, 420, font, black)
    Font.Free (font)


    chemans1Q7 := GUI.CreateButtonFull (320, 342, 50, " Solution concentration has increased 20 times ", chemwrongQ7, 10, '^D', true)     % Creates first answer button and leads user to wrong image
    chemans2Q7 := GUI.CreateButtonFull (320, 275, 50, " The PH has increased by 2 ", chemwrongQ7, 10, '^D', true)     % Creates second answer button and leads user to wrong image
    chemans3Q7 := GUI.CreateButtonFull (320, 205, 50, "Solution concentration is 100 times less acidic", chemrightQ7, 10, '^D', true)     % Creates third answer button and leads user to right image

    var pic : int := Pic.FileNew ("chemQ7.jpg")     % Visual aid the question
    Pic.Draw (pic, 20, 220, picMerge)

end chemQ7     % End of the procedure chemQ7

%=====================================================================ChemQ6===============================================================================

procedure chemwrongQ6     % If the answer is wrong the following code will be read
    cls


    colour (brightblue)     % Changes the colour of the text written bellow
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of the text written bellow to emphasis on the right answer
    put "Sour tasting, Hydrogen ion containing, low pH."     % This is the correct answer of this question


    var myPic1 : int := Pic.FileNew ("wrong 6.jpg")     % This puts out a clipart which is sad/angry, since it the user has got the wrong answer
    Pic.Draw (myPic1, 350, 50, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("wrong.wav")     % Sad/angry music because the user chose the wrong option
    delay (1000)
    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end

    cls     % Clears the screen

    chemQ7
end chemwrongQ6     % End of the procedure chemwrongQ2


procedure chemrightQ6     % If the answer is right the following code will be read

    cls     % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp1.jpg")     % This is the right background
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 80, 350, font, 1)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % Round of applause because the user chose the correct option
    delay (1000)
    answers := answers + 1     % adding 1 point to the correct answers so they can be put out in the end

    cls     % Clears the screen

    chemQ7
end chemrightQ6     % End of the procedure rightQ5



procedure chemQ6
    cls


    GUI.Disable (chemans1Q5)
    GUI.Disable (chemans2Q5)     % Disabling previous GUIs
    GUI.Disable (chemans3Q5)


    cls

    var background : int := Pic.FileNew ("chemistry template.jpg")     % Background image for the question
    Pic.Draw (background, 0, 0, picMerge)

    colour (black)
    %Question
    var font : int

    font := Font.New ("serif:13")     % The font size of the text
    Draw.Text (" 6)  Acids are : ", 300, 420, font, black)
    Font.Free (font)

    chemans1Q6 := GUI.CreateButtonFull (320, 342, 50, " Sour tasting, Hydrogen ion containing, low pH ", chemrightQ6, 10, '^D', true)     % Creates first answer button and leads user to right image
    chemans2Q6 := GUI.CreateButtonFull (320, 275, 50, " Slippery, hydroxide ion containing, high pH ", chemwrongQ6, 10, '^D', true)     % Creates second answer button and leads user to wrong image
    chemans3Q6 := GUI.CreateButtonFull (320, 205, 50, " Bitter, Hydrogen ion containing, low pH", chemwrongQ6, 10, '^D', true)     % Creates third answer button and leads user to wrong image


    var pic : int := Pic.FileNew ("chemQ6.jpg")     % Visual aid for the question
    Pic.Draw (pic, 20, 220, picMerge)


end chemQ6     % End of the procedure chemQ6

%====================================================================ChemQ5=================================================================================

procedure chemwrongQ5     % If the answer is wrong the following code will be displayed
    cls


    colour (brightblue)     % Changes the colour of the text written bellow
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of the text written bellow to emphasis on the right answer
    put "P2O2."     % This is the correct answer of this question


    var myPic1 : int := Pic.FileNew ("wrong 5.jpg")     % This puts out a sad/angry because the user chose the wrong answer
    Pic.Draw (myPic1, 350, 30, picMerge)


    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav")     % Sad/angry music because that the user chose the wrong option
    delay (1000)
    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end


    cls     % Clears the screen

    chemQ6
end chemwrongQ5     % End of the procedure chemwrongQ5



procedure chemrightQ5     % If the answer is right the following code will be displayed

    cls     % Clears the screen
    var myPic1 : int := Pic.FileNew ("rwtemp1.jpg")     % This is the right background
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 80, 350, font, 1)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % Round of applause because the user chose the correct option


    answers := answers + 1     % Adding 1 point to the correct answers so they can be put out in the end
    cls     % Clears the screen

    chemQ6
end chemrightQ5     % End of the procedure chemrightQ5


procedure chemQ5
    cls

    GUI.Disable (chemans1Q4)
    GUI.Disable (chemans2Q4)     % Disabling previous GUIs
    GUI.Disable (chemans3Q4)

    cls

    var background : int := Pic.FileNew ("chemistry template.jpg")     % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)

    colour (black)
    %Question
    var font : int
    font := Font.New ("serif:13")     % The font size of the text
    Draw.Text (" 5) Which of the following compounds has a prefix in its name ? ", 300, 420, font, black)
    Font.Free (font)

    chemans1Q5 := GUI.CreateButtonFull (320, 342, 50, " MgSO4 ", chemwrongQ5, 10, '^D', true)     % Creates first answer button and leads user to wrong image
    chemans2Q5 := GUI.CreateButtonFull (320, 275, 50, " P2O2 ", chemrightQ5, 10, '^D', true)     % Creates second answer button and leads user to right image
    chemans3Q5 := GUI.CreateButtonFull (320, 205, 50, "NaCl", chemwrongQ5, 10, '^D', true)     % Creates third answer button and leads user to wrong image


    var pic : int := Pic.FileNew ("chemQ5.jpg")     % Visual aid for the question
    Pic.Draw (pic, 20, 220, picMerge)


end chemQ5     % End of the procedure chemQ5



%====================================================================ChemQ4=================================================================================

procedure chemwrongQ4     % If the answer is wrong the following code will be read
    cls

    colour (brightblue)     % Changes the colour of the text written bellow
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of the text written bellow to emphasis on the right answer
    put "NaClO3"     % This is the correct answer of this question


    var myPic1 : int := Pic.FileNew ("wrong 4.jpg")     % This puts out a sad/angry image, because the user chose the wrong answer
    Pic.Draw (myPic1, 450, 30, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav")     % Sad/angry music because the user chose the wrong option
    delay (1000)
    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end

    cls     % clears the screen

    chemQ5
end chemwrongQ4     % End of the procedure chemwrongQ4


procedure chemrightQ4     % If the answer is right the following code will be read

    cls     % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp1.jpg")     % This is the right background
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 80, 350, font, 1)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % Round of applause because the user chose the correct option

    answers := answers + 1     % Adding 1 point to the correct answers so they can be put out in the end

    cls     % Clears the screen

    chemQ5
end chemrightQ4     % End of the procedure rightQ4



procedure chemQ4
    cls

    GUI.Disable (chemans1Q3)
    GUI.Disable (chemans2Q3)     % Disabling previous GUIs
    GUI.Disable (chemans3Q3)

    cls

    var background : int := Pic.FileNew ("chemistry template.jpg")     % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)

    colour (black)
    %Question
    var font : int
    font := Font.New ("serif:13")     % The font size of the text
    Draw.Text (" 4)  Which of the following compounds has a name that ends in 'ate' ? ", 300, 420, font, black)
    Font.Free (font)


    chemans1Q4 := GUI.CreateButtonFull (320, 342, 50, " KOH ", chemwrongQ4, 10, '^D', true)     % Creates first answer button and leads user to wrong image
    chemans2Q4 := GUI.CreateButtonFull (320, 275, 50, " H2O ", chemwrongQ4, 10, '^D', true)     % Creates second answer button and leads user to wrong image
    chemans3Q4 := GUI.CreateButtonFull (320, 205, 50, "NaClO3", chemrightQ4, 10, '^D', true)     % Creates third answer button and leads user to right image

    var pic : int := Pic.FileNew ("chemQ4.jpg")     % Visual aid for the question
    Pic.Draw (pic, 20, 220, picMerge)


end chemQ4     % End of the procedure chemQ4

%====================================================================ChemQ3================================================================================

procedure chemwrongQ3     % If the answer is wrong the following code will be read
    cls


    colour (brightblue)     % Changes the colour of the text written bellow
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of the text written bellow to emphasis on the right answer
    put "An element from group 16 combined with an element from group 17"     % This is the correct answer of this question


    var myPic1 : int := Pic.FileNew ("wrong 3.jpeg")     % This puts out a  sad/angry image, because the user chose the wrong answer
    Pic.Draw (myPic1, 350, 75, picMerge)


    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav")     % Sad/angry music because the user chose the wrong option
    delay (1000)
    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end

    cls     % Clears the screen

    chemQ4
end chemwrongQ3     % End of the procedure wrongQ3



procedure chemrightQ3     % If the answer is right the following code will be read

    cls     % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp1.jpg")     % This is the right background
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 80, 350, font, 1)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % Round of applause because the user chose the correct option

    answers := answers + 1     % Adding 1 point to the correct answers so they can be put out in the end

    cls     % Clears the screen

    chemQ4
end chemrightQ3     % End of the procedure chemrightQ3



procedure chemQ3
    cls

    GUI.Disable (chemans1Q2)
    GUI.Disable (chemans2Q2)     % Disabling previous GUIs
    GUI.Disable (chemans3Q2)

    cls

    var background : int := Pic.FileNew ("chemistry template.jpg")     % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)

    colour (black)
    %Question
    var font : int
    font := Font.New ("serif:13")     % The font size of the text
    Draw.Text (" 3) Which combination of elements mostly form molecular compounds? ", 280, 420, font, black)
    Font.Free (font)


    chemans1Q3 := GUI.CreateButtonFull (320, 342, 50, " An element from group 17 combined with an element from group 18 ", chemwrongQ3, 10, '^D', true)
    % Creates first answer button and leads user to wrong image
    chemans2Q3 := GUI.CreateButtonFull (320, 275, 50, "  An element from group 16 combined with an element from group 17", chemrightQ3, 10, '^D', true)
    % Creates second answer button and leads user to right image
    chemans3Q3 := GUI.CreateButtonFull (320, 205, 50, "An element from group 1 combined with an element from group 17", chemwrongQ3, 10, '^D', true)
    % Creates third answer button and leads user to wrong image

    var pic : int := Pic.FileNew ("chemQ3.jpg")     % Visual aid for the question
    Pic.Draw (pic, 20, 220, picMerge)


end chemQ3     % End of the procedure chemQ3

%======================================================================ChemQ2==============================================================================

procedure chemwrongQ2     % If the answer is wrong the following code will be read
    cls

    colour (brightblue)     % Changes the colour of the text written bellow
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of the text written bellow to emphasis on the right answer
    put "Lose electrons to become positively charged cations."     % This is the correct answer of this question

    var myPic1 : int := Pic.FileNew ("wrong 2.jpeg")     % This puts out a sad/angry image, because the user chose wrong answer
    Pic.Draw (myPic1, 390, 75, picMerge)


    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("wrong.wav")     % Sad/angry music to show that the user has chosen the wrong option
    delay (1000)
    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end

    cls     % Clears the screen

    chemQ3
end chemwrongQ2     % End of the procedure chemwrongQ2


procedure chemrightQ2     % If the answer is right the following code will be displayed

    cls     % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp1.jpg")     % This is the right background
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 80, 350, font, 1)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % Round of applause because the user chose the correct option
    delay (1000)
    answers := answers + 1     % Adding 1 point to the correct answers so they can be put out in the end

    cls     % Clears the screen

    chemQ3
end chemrightQ2     % End of the procedure chemrightQ2


procedure chemQ2
    cls

    GUI.Disable (chemans1Q1)
    GUI.Disable (chemans2Q1)     % Disabling previous GUIs
    GUI.Disable (chemans3Q1)

    cls

    var background : int := Pic.FileNew ("chemistry template.jpg")     % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)

    colour (black)
    %Question
    var font : int
    font := Font.New ("serif:13")     % The font size of the text
    Draw.Text (" 2)  In reactions with non-metal, metals tend to:  ", 300, 420, font, black)
    Font.Free (font)

    chemans1Q2 := GUI.CreateButtonFull (320, 342, 50, " Lose electrons to become positively charged anions ", chemwrongQ2, 10, '^D', true)
    % Creates first answer button and leads user to wrong image
    chemans2Q2 := GUI.CreateButtonFull (320, 275, 50, " Lose electrons to become positively charged cations", chemrightQ2, 10, '^D', true)
    % Creates second answer button and leads user to right image
    chemans3Q2 := GUI.CreateButtonFull (320, 205, 50, " Gain electrons to become negatively charged anions", chemwrongQ2, 10, '^D', true)
    % Creates third answer button and leads user to wrong image

    var pic : int := Pic.FileNew ("chemQ2.jpg")     % Visual aid for the question
    Pic.Draw (pic, 20, 220, picMerge)


end chemQ2     % End of the procdure chemQ2



%===================================================================ChemQ1==================================================================================

procedure chemwrongQ1     % If the answer is wrong the following code will be read

    cls

    colour (brightblue)     % Changes the colour of the text written bellow
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of the text written bellow to emphasis on the right answer
    put "CO"     % This is the correct answer of this question

    var myPic1 : int := Pic.FileNew ("wrong 1.jpg")     % This puts out a  sad/angry image, because the user chose the wrong answer
    Pic.Draw (myPic1, 350, 75, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % Text written inside the speech bubble
    Font.Free (font)
    Music.PlayFile ("wrong.wav")     % Sad/angry music to show that the user has chosen the wrong option
    delay (1000)

    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end

    cls     % Clears the screen

    chemQ2

end chemwrongQ1     % End of the procedure wrongQ1

procedure chemrightQ1     % If the answer is right the following code will be displayed

    cls     % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp1.jpg")     % This is the right background
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 80, 350, font, 1)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % Round of applause because the user chose the correct option
    delay (1000)
    answers := answers + 1     % Adding 1 point to the correct answers so they can be put out in the end

    cls     % Clears the screen

    chemQ2

end chemrightQ1     % End of the procedure chemrightQ1

procedure chemQ1

    cls

    GUI.Disable (chem)
    GUI.Disable (phys)     % Disabling previous GUIs
    GUI.Disable (bio)

    cls

    var background : int := Pic.FileNew ("chemistry template.jpg")     % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)
    colour (black)

    %Question
    var font : int
    font := Font.New ("serif:13")     % The font size of the text
    Draw.Text (" 1) Which of the following chemical formula represents a compound ? ", 300, 420, font, black)
    Font.Free (font)

    chemans1Q1 := GUI.CreateButtonFull (320, 342, 50, " CO ", chemrightQ1, 10, '^D', true)
    % putting out the first option in the form of a button in the multiple choice to choose the right/wrong answer
    chemans2Q1 := GUI.CreateButtonFull (320, 275, 50, " Na", chemwrongQ1, 10, '^D', true)
    % putting out the second option in the form of a button in the multiple choice to choose the right/wrong answer
    chemans3Q1 := GUI.CreateButtonFull (320, 205, 50, " P4", chemwrongQ1, 10, '^D', true)
    % putting out the third option in the form of a button in the multiple choice to choose the right/wrong answer

    var pic : int := Pic.FileNew ("chemQ1.jpg")     % Visual aid for the question
    Pic.Draw (pic, 20, 220, picMerge)

end chemQ1     % End of the procedure chemQ1



%=================================================================BIOLOGY===================================================================================

%=================================================================Bioend====================================================================================

procedure bioend

    cls
    GUI.Disable (bioans1Q10)
    GUI.Disable (bioans2Q10)     % Disabling previous GUIs
    GUI.Disable (bioans3Q10)

    cls

    var background : int := Pic.FileNew ("ending.jpg")     % Background image for the ending
    Pic.Draw (background, -10, -10, picMerge)


    colour (white)

    var font3 : int     % Declaring the variable for the font
    font3 := Font.New ("serif:30")     % The font size of the text
    Draw.Text ("SCORE", 325, 500, font3, blue)     % Text written inside the speech bubble
    Font.Free (font3)

    var font2 : int     % Declaring the variable for the font
    font2 := Font.New ("serif:18")     % The font size of the text
    Draw.Text ("The number of answers that you answered correctly are:", 10, 362, font2, 7)     % Text written inside the speech bubble
    Font.Free (font2)

    colour (green)
    locate (13, 75)

    put answers


    var font1 : int     % Declaring the variable for the font
    font1 := Font.New ("serif:18")     % The font size of the text
    Draw.Text ("The number of answers that you answered wrong are:", 10, 298, font1, 7)     % Text written inside the speech bubble
    Font.Free (font1)

    colour (green)
    locate (17, 75)
    put wrong

    delay (2000)

    cls


    var finish : int := Pic.FileNew ("theend.jpg")     %The image of the end
    Pic.Draw (finish, -10, -10, picMerge)

    Music.PlayFile ("end of program.mp3")


end bioend


%===================================================================BioQ10===================================================================================

procedure biowrongQ10     % If the answer is wrong the following code will be read
    cls

    colour (brightblue)     % Changes the colour of the text written bellow
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of the text written bellow to emphasis on the right answer
    put "a muscular wall found within the heart "     % This is the correct answer of this question

    var myPic1 : int := Pic.FileNew ("wrong 10.jpg")     % This puts out a clipart which is sad/angry, since it the user has got the wrong answer
    Pic.Draw (myPic1, 350, 75, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("wrong.wav")     % Sad/angry music because the user chose the wrong option
    delay (1000)
    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end

    cls     % Clears the screen

    bioend

end biowrongQ10     % End of the procedure biowrongQ10


procedure biorightQ10     % If the answer is right the following code will be read

    cls     % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp.jpg")     % This is the right background
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 30, 30, font, 0)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % Round of applause because the user chose the correct option
    answers := answers + 1     % Adding 1 point to the correct answers so they can be put out in the end

    cls     % Clears the screen

    bioend
end biorightQ10     % End of the procedure biorightQ10


procedure bioQ10
    cls

    GUI.Disable (bioans1Q9)
    GUI.Disable (bioans2Q9)     % Disabling previous GUIs
    GUI.Disable (bioans3Q9)

    cls

    var background : int := Pic.FileNew ("biology template.jpg")     % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)


    colour (black)
    %Question
    var font : int
    font := Font.New ("serif:13")     % The font size of the text
    Draw.Text (" 10)The septum is : ", 300, 420, font, black)
    Font.Free (font)



    bioans1Q10 := GUI.CreateButtonFull (320, 342, 50, " A muscular wall present in the large intestine ", biowrongQ10, 10, '^D', true)     % Creates first answer button and leads user to wrong image
    bioans2Q10 := GUI.CreateButtonFull (320, 275, 50, "A muscular wall found within the heart", biorightQ10, 10, '^D', true)     % Creates second answer button and leads user to right image
    bioans3Q10 := GUI.CreateButtonFull (320, 205, 50, "The connective tissue that connects bones to muscles", biowrongQ10, 10, '^D', true)
    % Creates third answer button and leads user to wrong image

    var pic : int := Pic.FileNew ("bioQ10.jpg")     % Visual aid for the question
    Pic.Draw (pic, 20, 220, picMerge)


end bioQ10     % End of the procedure bioQ10


%===================================================================BioQ9===================================================================================

procedure biowrongQ9     % If the answer is wrong the following code will be read
    cls

    colour (brightblue)     % Changes the colour of the text written bellow
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of the text written bellow to emphasis on the right answer
    put " Genetic information is inherited from one parent."     % This is the correct answer of this question


    var myPic1 : int := Pic.FileNew ("wrong 9.jpg")     % This puts out a sad/angry image, because the user chose the wrong answer
    Pic.Draw (myPic1, 400, 50, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 150, 400, font, 12)     % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav")     % Sad/angry music because the user chose the wrong option
    delay (1000)
    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end

    cls     % Clears the screen

    bioQ10     % Once all the things in the wrong Q9  code finish, this will take the user to the next question.

end biowrongQ9     % End of the procedure biowrongQ9


procedure biorightQ9     % If the answer is right the following code will be read

    cls     % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp.jpg")     % This is the background
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 30, 30, font, 0)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % Round of applause because the user chose the correct option

    answers := answers + 1     % Adding 1 point to the correct answers so they can be put out in the end

    cls     % Clears the screen

    bioQ10     % Once all the things in the right Q9 code finish, this will take the user to the next question.

end biorightQ9     % End of the procedure biorightQ9


procedure bioQ9
    cls

    GUI.Disable (bioans1Q8)
    GUI.Disable (bioans2Q8)     % Disabling previous GUIs
    GUI.Disable (bioans3Q8)

    cls

    var background : int := Pic.FileNew ("biology template.jpg")     % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)

    colour (black)
    %Question
    var font : int
    font := Font.New ("serif:13")     % The font size of the text
    Draw.Text (" 9) What happens in asexual reproduction ?", 300, 420, font, black)
    Font.Free (font)

    bioans1Q9 := GUI.CreateButtonFull (320, 342, 50, " Genetic information is inherited from one parent ", biorightQ9, 10, '^D', true)     % Creates first answer button and leads user to right image
    bioans2Q9 := GUI.CreateButtonFull (320, 275, 50, "Genetic information is inherited from two parents", biowrongQ9, 10, '^D', true)     % Creates second answer button and leads user to wrong image
    bioans3Q9 := GUI.CreateButtonFull (320, 205, 50, "No genetic information is inherited", biowrongQ9, 10, '^D', true)     % Creates third answer button and leads user to wrong image

    var pic : int := Pic.FileNew ("bioQ9.jpg")     % Visual aid for the question
    Pic.Draw (pic, 20, 160, picMerge)


end bioQ9     % End of bioQ9



%=======================================================================bioQ8===============================================================================

procedure biowrongQ8     % If the answer is wrong the following code will be read
    cls

    colour (brightblue)     % Changes the colour of the text written bellow
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of the text written bellow to emphasis on the right answer
    put "Malignant"     % This is the correct answer of this question

    var myPic1 : int := Pic.FileNew ("wrong 8.jpg")     % This puts out a sad/angry image, because the user chose the wrong answer
    Pic.Draw (myPic1, 350, 75, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav")     % Sad/angry music because the user chose the wrong option
    delay (1000)
    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end

    cls     % Clears the screen

    bioQ9     % Once all the things in the wrong Q9 code finish, this will take the user to the next question.

end biowrongQ8     % End of the procedure wrongQ8


procedure biorightQ8     % If the answer is right the following code will be read

    cls     % Clears the screen


    var myPic1 : int := Pic.FileNew ("rwtemp.jpg")     % This is the right background
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 30, 30, font, 0)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % Round of applause because the user chose the correct option

    answers := answers + 1     % Adding 1 point to the correct answers so they can be put out in the end

    cls     % Clears the screen

    bioQ9     % Once all the things in the right Q9 code finish, this will take the user to the next question.

end biorightQ8     % End of the procedure biorightQ9


procedure bioQ8
    cls


    GUI.Disable (bioans1Q7)
    GUI.Disable (bioans2Q7)     % Disabling previous GUIs
    GUI.Disable (bioans3Q7)

    cls

    var background : int := Pic.FileNew ("biology template.jpg")     % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)

    colour (black)
    %Question
    var font : int
    font := Font.New ("serif:13")     % The font size of the text
    Draw.Text ("8) What tumor interferes with surrounding cells ?  ", 300, 420, font, black)
    Font.Free (font)


    bioans1Q8 := GUI.CreateButtonFull (320, 342, 50, " Malignant", biorightQ8, 10, '^D', true)
    bioans2Q8 := GUI.CreateButtonFull (320, 275, 50, "Benign ", biowrongQ8, 10, '^D', true)
    bioans3Q8 := GUI.CreateButtonFull (320, 205, 50, "Metastasis", biowrongQ8, 10, '^D', true)

    var pic : int := Pic.FileNew ("bioQ8.jpg")     % Visual aid for the question
    Pic.Draw (pic, 20, 220, picMerge)


end bioQ8     % End of the procedure bioQ8

%====================================================================bioQ7=================================================================================

procedure biowrongQ7     % If the answer is wrong the following code will be read

    cls

    colour (brightblue)     % Changes the colour of the text written bellow
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of the text written bellow to emphasis on the right answer
    put "Left ventricle"     % This is the correct answer of this question

    var myPic1 : int := Pic.FileNew ("wrong 7.jpg")     % This puts out a sad/angry image, because the user got the wrong answer
    Pic.Draw (myPic1, 350, 40, picMerge)


    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 200, 370, font, 12)     % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav")     % Sad/angry music to show that the user has choosen the wrong option
    delay (1000)
    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end

    cls     % Clears the screen

    bioQ8     % Once the code is read, this will take the user to the next question.

end biowrongQ7     % End of the procedure biowrongQ7


procedure biorightQ7     % If the answer is right the following code will be read

    cls     % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp.jpg")     % This is the right background
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 30, 30, font, 0)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % Round of applause because user has choosen the correct option
    answers := answers + 1     % Adding 1 point to the correct answers so they can be put out in the end

    cls     % Clears the screen

    bioQ8     % Once the code is read, this will take the user to the next question.

end biorightQ7     % End of the procedure biorightQ7

procedure bioQ7

    cls

    GUI.Disable (bioans1Q6)
    GUI.Disable (bioans2Q6)     % Disabling previous GUIs
    GUI.Disable (bioans3Q6)

    cls

    var background : int := Pic.FileNew ("biology template.jpg")     % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)
    colour (black)

    %Question

    var font : int
    font := Font.New ("serif:13")     % The font size of the text
    Draw.Text ("7) What section of the heart is surrounded by the thickest muscular wall? ", 280, 420, font, black)
    Font.Free (font)

    bioans1Q7 := GUI.CreateButtonFull (320, 342, 50, "Left ventricle", biorightQ7, 10, '^D', true)     % Creates first answer button and leads user to right image
    bioans2Q7 := GUI.CreateButtonFull (320, 275, 50, "Right atrium", biowrongQ7, 10, '^D', true)     % Creates second answer button and leads user to wrong image
    bioans3Q7 := GUI.CreateButtonFull (320, 205, 50, "Right ventricle", biowrongQ7, 10, '^D', true)     % Creates third answer button and leads user to wrong image

    var pic : int := Pic.FileNew ("bioQ7.jpg")     % Visual aid for this question
    Pic.Draw (pic, 20, 150, picMerge)

end bioQ7     % end of procedure bioQ7



%=====================================================================bioQ6=================================================================================

procedure biowrongQ6     % If the answer is wrong the following code will be read
    cls

    colour (brightblue)     % Changes the colour of the text written bellow
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of the text written bellow to emphasis on the right answer
    put "Capillaries"     % This is the correct answer of this question


    var myPic1 : int := Pic.FileNew ("wrong 6.jpg")     % This puts out sad/angry image, because the user got the wrong answer
    Pic.Draw (myPic1, 350, 50, picMerge)


    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav")     % Sad/angry music to show that the user has choosen the wrong option
    delay (1000)
    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end

    cls     % Clears the screen

    bioQ7     % Once the code is read, this will take the user to the next question.

end biowrongQ6     % End of the procedure biowrongQ6


procedure biorightQ6     % If the answer is right the following code will be displayed

    cls     % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp.jpg")     % This is the right background
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 30, 30, font, 0)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % Round of applause because the user chose the correct option
    delay (1000)
    answers := answers + 1     % Adding 1 point to the correct answers so they can be put out in the end

    cls     % Clears the screen

    bioQ7     % Once the code is read, this will take the user to the next question.

end biorightQ6     % End of the procedure biorightQ6



procedure bioQ6
    cls

    GUI.Disable (bioans1Q5)
    GUI.Disable (bioans2Q5)     % Disabling previous GUIs
    GUI.Disable (bioans3Q5)

    cls

    var background : int := Pic.FileNew ("biology template.jpg")     % Background image/template for this question
    Pic.Draw (background, 0, 0, picMerge)


    colour (black)

    %Question

    var font : int
    font := Font.New ("serif:13")     % The font size of the text
    Draw.Text ("6) What are alveoli surrounded by? ", 300, 420, font, black)
    Font.Free (font)


    bioans1Q6 := GUI.CreateButtonFull (320, 342, 50, "Arteries", biowrongQ6, 10, '^D', true)     % Creates first answer button and leads user to wrong image
    bioans2Q6 := GUI.CreateButtonFull (320, 275, 50, "Veins", biowrongQ6, 10, '^D', true)     % Creates second answer button and leads user to wrong image
    bioans3Q6 := GUI.CreateButtonFull (320, 205, 50, "Capillaries", biorightQ6, 10, '^D', true)     % Creates third answer button and leads user to right image


    var pic : int := Pic.FileNew ("bioQ6.jpg")     % Visual aid for the question
    Pic.Draw (pic, 20, 180, picMerge)

end bioQ6     % End of procedure bioQ6



%======================================================================bioQ5================================================================================

procedure biowrongQ5     % If the answer is wrong the following code will be read
    cls

    colour (brightblue)     %  Changes the colour of the text written bellow
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of the text written bellow to emphasis on the right answer
    put "Contraction and relaxation of muscles in the digestive system"     % This is the correct answer for the question


    var myPic1 : int := Pic.FileNew ("wrong 5.jpg")     % Puts a sad/angry image because the user has got the wrong answer
    Pic.Draw (myPic1, 350, 30, picMerge)


    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("wrong.wav")     % Sad/angry music to show that the user has choosen the wrong option
    delay (1000)
    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end

    cls     % Clears the screen

    bioQ6     % Once this code is read, the user will be taken to the next question.

end biowrongQ5     % End of the procedure biowrongQ5


procedure biorightQ5     % If the answer is right the following code will be read

    cls     % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp.jpg")     % This is the right background
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 30, 30, font, 0)     % Text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("right.mp3")     % Round of applause to show that the corerect answer was chosen
    delay (1000)
    answers := answers + 1     % Adding 1 point to the correct answers so they can be put out in the end

    cls     % Clears the screen

    bioQ6     % Once this code is read, the user will be taken to the next question.

end biorightQ5     % End of the procedure biorightQ5



procedure bioQ5
    cls

    GUI.Disable (bioans1Q4)
    GUI.Disable (bioans2Q4)     % Disabling previous GUIs
    GUI.Disable (bioans3Q4)

    cls

    var background : int := Pic.FileNew ("biology template.jpg")     % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)


    colour (black)
    %Question
    var font : int
    font := Font.New ("serif:13")     % The font size of the text
    Draw.Text ("5) What is peristalsis ?", 300, 420, font, black)
    Font.Free (font)


    bioans1Q5 := GUI.CreateButtonFull (310, 340, 30, "Contraction of biceps", biowrongQ5, 30, '^D', true)     % Creates first answer button and leads user to wrong image
    bioans2Q5 := GUI.CreateButtonFull (310, 273, 30, " Contraction and relaxation of muscles in the respiratory tract", biowrongQ5, 30, '^D', true)
    % Creates second answer button and leads user to wrong image
    bioans3Q5 := GUI.CreateButtonFull (310, 202, 30, "Contraction and relaxation of muscles in the digestive system", biorightQ5, 30, '^D', true)
    % Creates third answer button and leads user to right image


    var pic : int := Pic.FileNew ("bioQ5.jpg")     % Visual aid for this question
    Pic.Draw (pic, 20, 160, picMerge)

end bioQ5     % Ends bioQ5 procedure



%================================================================bioQ4======================================================================================

procedure biowrongQ4     % if the answer is wrong the following code will be displayed
    cls

    colour (brightblue)     % changes the colour of the text written bellow
    put "The answer was " ..     % puts out the correct answer on the screen
    colour (brightred)     % changes the colour of the text written bellow to emphasis on the right answer
    put "All of the above"     % this is the correct answer of this question

    var myPic1 : int := Pic.FileNew ("wrong 4.jpg")     % this puts out a  sad/angry image, since the user got the wrong answer
    Pic.Draw (myPic1, 450, 30, picMerge)

    var font : int     % declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("wrong.wav")     % sad/angry music to show that the user has choosen the wrong option
    delay (1000)
    wrong := wrong + 1     % adding 1 point to the wrong answers so they can be put out in the end

    cls     % clears the screen

    bioQ5     % when the code is done, this will take the user to the next question.

end biowrongQ4     % end of the procedure biowrongQ4


procedure biorightQ4     % if the answer is right the following code will be displayed

    cls     % clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp.jpg")     % this is the background for the right answer
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 30, 30, font, 0)     % text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % round of applause to show demonstrate the the user chose the right andwer
    delay (1000)
    answers := answers + 1     % adding 1 point to the correct answers so they can be put out in the end

    cls       % clears the screen

    bioQ5     % once this code is read,  the user will be taken to the next question.

end biorightQ4     % end of the procedure biorightQ4



procedure bioQ4
    cls

    GUI.Disable (bioans1Q3)
    GUI.Disable (bioans2Q3)     % disabling previous GUIs
    GUI.Disable (bioans3Q3)

    cls

    var background : int := Pic.FileNew ("biology template.jpg")     % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)


    colour (black)

    %Question

    var font : int

    font := Font.New ("serif:13")     % The font size of the text

    Draw.Text ("4) What does the central nervous system include?", 300, 420, font, black)

    Font.Free (font)



    bioans1Q4 := GUI.CreateButtonFull (320, 342, 50, "Brain", biowrongQ4, 10, '^D', true)     % Creates first answer button and leads user to wrong image
    bioans2Q4 := GUI.CreateButtonFull (320, 275, 50, "Spinal Cord", biowrongQ4, 10, '^D', true)     % Creates second answer button and leads user to wrong image
    bioans3Q4 := GUI.CreateButtonFull (320, 205, 50, "All of the above", biorightQ4, 10, '^D', true)     % Creates third answer button and leads user to right image



    var pic : int := Pic.FileNew ("bioQ4.jpg")     % Visual aid for the question
    Pic.Draw (pic, 20, 220, picMerge)


end bioQ4     % Ends the procedure, bioQ4



%======================================================================bioQ3================================================================================

procedure biowrongQ3     % if the answer is wrong the following code will be displayed
    cls

    colour (brightblue)     % changes the colour of the text written bellow
    put "The answer was " ..     % puts out the correct answer on the screen
    colour (brightred)     % changes the colour of the text written bellow to emphasis on the right answer
    put "Stem"     % this is the correct answer of this question


    var myPic1 : int := Pic.FileNew ("wrong 3.jpeg")     % this puts a sad/angry image, since the user got the wrong answer
    Pic.Draw (myPic1, 350, 75, picMerge)


    var font : int     % declaring the variable for the font
    font := Font.New ("serif:50")     % the font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % text written inside the speech bubble
    Font.Free (font)


    Music.PlayFile ("wrong.wav")     % sad/angry music to show that the user has chosen the wrong option
    delay (1000)
    wrong := wrong + 1     % adding 1 point to the wrong answers so they can be put out in the end

    cls     % clears the screen

    bioQ4     % Once the the biowrongQ3 code is read, the user is taken to the next question
end biowrongQ3         % end of the procedure wrongQ3


procedure biorightQ3     % if the answer is right the following code will be displayed

    cls     % clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp.jpg")     % Template for the right answer
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % declaring the variable for the font
    font := Font.New ("serif:50")     % the font size of the text
    Draw.Text ("You are Right!!!", 30, 30, font, 0)     % text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % cheerful music to show that the user has choosen the correct option
    delay (1000)
    answers := answers + 1     % adding 1 point to the correct answers so they can be put out in the end

    cls     % clears the screen

    bioQ4     % once all the things in the right Q3 code finish, this will take the user to the next question.

end biorightQ3     % end of the procedure rightQ3



procedure bioQ3
    cls

    GUI.Disable (bioans1Q2)
    GUI.Disable (bioans2Q2)     % disabling previous GUIs
    GUI.Disable (bioans3Q2)

    cls

    var background : int := Pic.FileNew ("biology template.jpg")     % background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)


    colour (black)
    %Question
    var font : int
    font := Font.New ("serif:13")     % the font size of the text
    Draw.Text ("3) What cells are specialized cells that can differentiate into other cells?", 230, 420, font, black)
    Font.Free (font)



    bioans1Q3 := GUI.CreateButtonFull (330, 342, 50, "Stem", biorightQ3, 10, '^D', true)     % Creates first answer button and leads user to right image
    bioans2Q3 := GUI.CreateButtonFull (330, 275, 50, "Benign", biowrongQ3, 10, '^D', true)     % Creates second answer button and leads user to wrong image
    bioans3Q3 := GUI.CreateButtonFull (330, 205, 50, "Malignant", biowrongQ3, 10, '^D', true)     % Creates third answer button and leads user to wrong image



    var pic : int := Pic.FileNew ("bioQ3.jpg")     % Visual aid for the question
    Pic.Draw (pic, 20, 220, picMerge)

end bioQ3




%================================================================BioQ2======================================================================================

procedure biowrongQ2     % if the answer is wrong the following code will be displayed
    cls

    colour (brightblue)     % changes the colour of the text written bellow
    put "The answer was " ..     % puts out the correct answer on the screen
    colour (brightred)     % changes the colour of the text written bellow to emphasis on the right answer
    put "Carcinogens!"     % this is the correct answer of this question


    var myPic1 : int := Pic.FileNew ("wrong 2.jpeg")     % this puts out a sad/angry image because the user chose the wrong answer
    Pic.Draw (myPic1, 390, 75, picMerge)


    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("wrong.wav")     % Sad/angry music to show that the user has choosen the wrong option
    delay (1000)
    wrong := wrong + 1     % Adding 1 point to the wrong answers so they can be put out in the end

    cls     % Clears the screen

    bioQ3     % Once all the things in the wrong Q2 code finish, this will take the user to the next question.

end biowrongQ2     % End of the procedure biowrongQ2


procedure biorightQ2     % If the answer is right the following code will be displayed

    cls     % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp.jpg")     % This is rhe picture for the right answer
    Pic.Draw (myPic1, 0, 0, picMerge)

    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are Right!!!", 30, 30, font, 0)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % Round of applause demostrates the user chose the right answer
    delay (1000)
    answers := answers + 1     % Adding 1 point to the correct answers so they can be put out in the end

    cls        % Clears the screen

    bioQ3      % Once the code in biorightQ2 is done, the user will be taken to the next question

end biorightQ2     % End of the procedure biorightQ2



procedure bioQ2
    cls

    GUI.Disable (bioans1Q1)
    GUI.Disable (bioans2Q1)     % Disabling previous GUIs
    GUI.Disable (bioans3Q1)

    cls

    var background : int := Pic.FileNew ("biology template.jpg")     % Background image/template for the question
    Pic.Draw (background, 0, 0, picMerge)


    colour (black)
    %Question
    var font : int

    font := Font.New ("serif:13")     % The font size of the text

    Draw.Text ("2) What is the general name for environmental factors that cause cancer ?", 230, 420, font, black)
    Font.Free (font)



    bioans1Q2 := GUI.CreateButtonFull (330, 342, 50, "Metastasis", biowrongQ2, 10, '^D', true)     % Creates first answer button and leads user to wrong image
    bioans2Q2 := GUI.CreateButtonFull (330, 275, 50, "Apoptosis", biowrongQ2, 10, '^D', true)     % Creates second answer button and leads user to wrong image
    bioans3Q2 := GUI.CreateButtonFull (330, 205, 50, "Carcinogens", biorightQ2, 10, '^D', true)     % Creates third answer button and leads user to right image

    var pic : int := Pic.FileNew ("bioQ2.jpg")     % Visual aid for this question
    Pic.Draw (pic, 15, 170, picMerge)


end bioQ2     % Ends the procedure bioQ2



%=============================================================BioQ1==========================================================================================

procedure biowrongQ1     % If the answer is wrong the following code will be read
    cls

    colour (brightblue)     % Changes the colour of the text written below
    put "The answer was " ..     % Puts out the correct answer on the screen
    colour (brightred)     % Changes the colour of text written to emphasize the right answer
    put "Germ!"     % This is the correct answer for this question


    var myPic1 : int := Pic.FileNew ("wrong 1.jpg")     % this puts out a clipart which is sad/angry, since it the user has got the wrong answer
    Pic.Draw (myPic1, 350, 75, picMerge)


    var font : int     % Declaring the variable for the font
    font := Font.New ("serif:50")     % The font size of the text
    Draw.Text ("You are wrong!!!", 100, 350, font, 12)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("wrong.wav")     % Dissapointed audience to show the user the answer is wrong

    wrong := wrong + 1     % Adds 1 point to the wrong answers so they can be put out in the end

    cls     % Clears the screen

    bioQ2     % This will take the user to the next procedure

end biowrongQ1     % End of the procedure biowrongQ1


procedure biorightQ1     % If the answer is right the following code will be displayed

    cls     % Clears the screen

    var myPic1 : int := Pic.FileNew ("rwtemp.jpg")     % Image for biology right
    Pic.Draw (myPic1, 0, -50, picMerge)



    var font : int
    font := Font.New ("serif:45")     % The font size of the text
    Draw.Text ("You are Right!!!", 30, 30, font, 0)     % Text written inside the speech bubble
    Font.Free (font)

    Music.PlayFile ("right.mp3")     % Round of applause to demonstrate to the user that the answer is right

    answers := answers + 1     % Adds 1 point to the correct answers so they can be put out in the end

    cls     %   Clears the screen

    bioQ2     % This will take the user to the next procedure

end biorightQ1     % End of the procedure biorightQ1



procedure bioQ1
    cls
    GUI.Disable (bio)
    GUI.Disable (chem)
    GUI.Disable (phys)

    cls

    var background : int := Pic.FileNew ("biology template.jpg")     % Background image/template for the biology category
    Pic.Draw (background, 0, 0, picMerge)


    colour (black)

    var font : int

    font := Font.New ("serif:13")     % The font size of the text

    Draw.Text ("1) These cells are sex cells that produce sperms and eggs.", 320, 420, font, black)     % Writes the question

    Font.Free (font)



    bioans1Q1 := GUI.CreateButtonFull (320, 342, 50, "Germ", biorightQ1, 10, '^D', true)     % Creates first answer button and leads user to right image
    bioans2Q1 := GUI.CreateButtonFull (320, 275, 50, "Asexual", biowrongQ1, 10, '^D', true)     % Creates second answer button and leads user to wrong image
    bioans3Q1 := GUI.CreateButtonFull (320, 205, 50, "Somatic", biowrongQ1, 10, '^D', true)     % Creates third answer button and leads user to wrong image


    var pic : int := Pic.FileNew ("bioQ1.jpg")     % Visual aid for this question
    Pic.Draw (pic, 10, 185, picMerge)


end bioQ1     % End of bioQ1 procedure


%==============================================================intro========================================================================================

procedure introduction

    cls
    GUI.Disable (start)     % Disables the previous START button (so it doesn't show up on the screen)
    GUI.Disable (ins)     % Disables the previous INSTRUCTIONS button (so it doesn't show up on the screen)

    var myPic2 : int := Pic.FileNew ("categories.jpg")     %  Categories background image
    Pic.Draw (myPic2, 0, 0, picMerge)


    font := Font.New ("serif:40")     % The font size of the text

    Draw.Text ("Welcome! Choose a category!!", 55, 500, font, 0)

    Font.Free (font)

    bio := GUI.CreateButtonFull (150, 270, 500, "BIOLOGY", bioQ1, 50, '^D', true)     % Creates biology button and leads user to biology question 1
    chem := GUI.CreateButtonFull (150, 200, 500, "CHEMISTRY", chemQ1, 50, '^D', true)     % Creates biology button and leads user to chemistry question 1
    phys := GUI.CreateButtonFull (150, 130, 500, "PHYSICS", warning, 50, '^D', true)     % Creates biology button and leads user to Warning


end introduction


%=================================================================INTSRUCTIONS===============================================================================
procedure instruction

    cls
    GUI.Disable (start)     % Disables the previous START button (so it doesn't show up on the screen)
    GUI.Disable (ins)     % Disables the previous INSTRUCTIONS button (so it doesn't show up on the screen)
    var myPic2 : int := Pic.FileNew ("ins.jpg")     % Instructions background image
    Pic.Draw (myPic2, -100, -50, picMerge)

    font := Font.New ("serif:40")     % The font size of the text
    Draw.Text ("INSTRUCTIONS", 200, 450, font, 0)
    Font.Free (font)

    % Intstruction text

    var font1 : int     % Declaring the variable for the font

    font1 := Font.New ("serif:16")     % Declaring the variable for the font

    Draw.Text ("Welcome ! This is a simple quiz containing 10 questions in each category.", 80, 400, font1, 92)     % first line of the text

    Font.Free (font1)

    delay (2000)



    var font2 : int     % Declaring the variable for the font

    font2 := Font.New ("serif:16")     % The font size of the text

    Draw.Text ("In this game you will read the question and click on the answer you think is right.", 75, 350, font2, 76)     % second line of the text

    Font.Free (font2)

    delay (2000)



    var font3 : int     % Declaring the variable for the font

    font3 := Font.New ("serif:16")     % The font size of the text

    Draw.Text ("If you get it right, you get 1 point, and if you get it wrong, you don't gain any points.", 70, 300, font3, yellow)     % third line of the text

    Font.Free (font3)

    delay (2000)



    var font4 : int     % Declaring the variable for the font

    font4 := Font.New ("serif:16")     % The font size of the text

    Draw.Text ("You are done the game when you answer 10 questions.", 65, 250, font4, 90)     % fourth line of the text

    Font.Free (font4)

    delay (2000)



    var font5 : int     % Declaring the variable for the font

    font5 := Font.New ("serif:16")     % The font size of the text

    Draw.Text ("We hope you understood the rules. Now lets start!!!", 70, 200, font5, 9)     % fifth line of the text

    Font.Free (font5)

    delay (2000)



    var font6 : int     % Declaring the variable for the font

    font6 := Font.New ("serif:30")     % The font size of the text

    Draw.Text ("GOOD LUCK!! and HAVE FUN!!", 100, 100, font6, white)     % last line of the text

    Font.Free (font6)
    back := GUI.CreateButton (739, 525, 50, "Exit", GUI.Quit)




end instruction     % Ends the procedure
%================================================================START and INSTRUCTION========================================================================

procedure startandins
    var myPic : int := Pic.FileNew ("background.jpg")     % Introduction background image
    Pic.Draw (myPic, -700, -400, picMerge)
    start := GUI.CreateButtonFull (202, 270, 100, "START", introduction, 50, '^D', true)     % Creates the button for START and leads the user to the introduction
    ins := GUI.CreateButtonFull (196, 200, 100, "INSTRUCTIONS", instruction, 50, '^D', true)     % Creates the button for INSTRUCTION and leads the user to the instructions

    font := Font.New ("serif:45")     % The font size of the text

    Draw.Text ("Science Quiz", 100, 450, font, 0)     % This will show the text "Science Quiz" on the screen

    Font.Free (font)


end startandins

startandins


%===========================================================================================================================================================

loop
    loop

	exit when GUI.ProcessEvent
    end loop
    GUI.ResetQuit
    startandins     % It will have an EXIT button on the intructions page ONLY
end loop
