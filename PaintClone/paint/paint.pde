int cursersizeX = 8;
int cursersizeY = 8;
color cursorcolor = 0;
//I changed these to 255 since it would start at it;s full color otherwise it starts at black and that can confuse the operator (me) ~Seth
int red = 255;
int blue = 255;
int green = 255;
int step = 1;

void setup() {
  size(600,400);
}

void draw() {
  noStroke();
  //green button
  fill(0,green,0);
  rect(0,0,50,50);
  
  if (mousePressed && mouseX < 50 && mouseY < 50) {
    green += step;
 //I changed the operators from "x = x + y" to "x += y" since it's the same thing. ~Seth  
  
}
 
//less green button
  fill(0,green,0);
  rect(50,0,50,50);
  if (mousePressed && mouseX > 50 && mouseX < 100 && mouseY < 50) {
     green -= step;//I changed the operators from "x = x - y" to "x -= y" since it's the same thing. ~Seth
  }
  
  
  
 //blue button
  fill(0,0,blue);
  rect(0,50,50,50);
  
  //You have to add "&& mouseY > 50" in order to account for the height of the previous button other wise any value under 100 will do ~Seth
  if (mousePressed && mouseX< 50 && mouseY < 100 && mouseY > 50) {
    blue += step;
   
 //copied buttons and changed colors to do the same things 
}

//less blue button
  fill(0,0,blue);
  rect(50,50,50,50);
  if (mousePressed && mouseX > 50 && mouseX < 100 && mouseY < 100 && mouseY > 50) {
     blue -= step;//I changed the operators from "x = x - y" to "x -= y" since it's the same thing. ~Seth
  }
  

  
 //red button
  fill(red,0,0);
  rect(0,100,50,50);
  //You have to add "&& mouseY > 100" in order to account for the height of the previous button other wise any value under 150 will do ~Seth
  if (mousePressed && mouseX < 50 && mouseY < 150 && mouseY > 100 ) {
    red += step;
   
  
}

//less red button
  fill(red,0,0);
  rect(50,100,50,50);
  //Same as the other red button ~Seth
  
  if (mousePressed && mouseX > 50 && mouseX < 100 && mouseY < 150 && mouseY > 100) {
     red -= step;
  }
  
  
  //ellipse smaller
  
  fill(#6C04D6);
  rect(0,150,50,50);
  fill(#00F5EF);
 
  
  
  if (mousePressed && mouseX > 0 && mouseX < 50 && mouseY < 200 && mouseY > 150) {
    cursersizeX -= step;
    cursersizeY -= step;
  }
  
    //ellipse bigger
  fill(#6C04D6);
  rect(50,150,50,50);
  fill(#00F5EF);
  square(0,150,33);
  square(55,155,10);
  
  fill(#F56200);
  text("MAKE",10,170);
  text("BIG",14,180);
  text("MAKE",65,170);
  text("SMALL",64,181);
 
  
  
  if (mousePressed && mouseX > 50 && mouseX < 100 && mouseY < 200 && mouseY > 150) {
    cursersizeX += step;
    cursersizeY += step;
  }
 
  
  
  
  
  
  
  
    fill(#8DD88A);
  square(57,8,33);
 fill(#DE2828);
  textSize(10);
  text("LESS",60,20);
  text("GREEN",59,34);
  stroke(0); 
  line(47,0,57,8);
  line(47,0,47,150);
  line(57,40,47,50);
  line(99,0,90,8);
  line(99,49,88,40);
  fill(#0A6A14);
  square(8,7,33);
  fill(#DE2828);
  textSize(10);
  text("MORE",9,20);
  text("GREEN",9,34);
  
   line(0,0,8,8);
  line(0,0,0,150);
  line(8,40,0,50);
  line(46,0,41,8);
  line(46,49,39,40);
  
 
  
  fill(#010881);
  square(7,58,33);
  
   fill(#00ED00);
  text("MORE",10,72);
  text("BLUE",12,86);
  
  line(0,51,7,58);
  line(0,100,7,90);
  line(39,58,46,50);
  line(39,90,48,100);
  
 fill(#797AFA);
 square(56,58,33);
 
 fill(#00ED00);
 text("LESS",59,72);
 text("BLUE",61,86);
 line(49,49,58,60);
 line(100,49,90,58);
 line(100,100,89,89);
 line(49,99,57,89);
 
 
 fill(#AF0C0C);
 square(7,107,33);
 
 fill(#00AF00);
 text("MORE",9,120);
 text("RED",12,133);
 line(0,101,9,109);
 line(47,100,40,109);
 line(0,150,7,141);
 line(41,141,47,150);
 
 fill(#EA5C5C);
 square(56,107,33);
 
 fill(#00AF00);
 text("LESS",61,120);
 text("RED",61,133);
 line(49,100,57,109);
 line(100,100,91,109);
 line(49,150,56,141);
 line(99,149,91,141);
 
 
 
 
 
 
  

 
  
   

 cursorcolor = color(red,green,blue);

//drwing part
    if (mousePressed) {
      fill(cursorcolor);
      ellipse(mouseX, mouseY, cursersizeX, cursersizeY);
 
  
   //You can remove the else part if you won't do anything with it ~Seth
} else  {
    
  
  }
  
}


// If Statements ad Buttons Assignment 4 , video including code, i mostly plagerized Joe , added color bars, 
// and got discord help from Joe and Seth
