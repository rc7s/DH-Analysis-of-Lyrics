String[] lyrics;
String userWord;
int count = 0;

void setup(){
  //load .txt file - store each line into array
  lyrics = loadStrings("1996.txt");
  //check: print # of lines
  println("there are " + (lyrics.length - 11) + " words in the file");
  //var userWord - to query each line for a matching word
  userWord = "love";
  
  //GUI initialize
  size(1600,900);
  background(255);
  
  //stroking
  noFill();
  strokeWeight(1);
  stroke(0);

  //for each word
  for (int i = 2; i < lyrics.length; i++) {
     int ranX = width/2 + int(random(-count*2,count*2));
     int ranY = height/2 + int(random(-count*2,count*2));
     int posSize = int(random(-1-count,1+count));
     int posSize2 = int(random(-1-count,1+count));
     int negSize = 2;
     if (lyrics[i].equals(userWord) == true){
       //ellipse(ranX,ranY,posSize,posSize);
       noFill();
       triangle(width/2,height/2,ranX+posSize,ranY+posSize,ranX+posSize2,ranY+posSize2);
       fill(0);
       textSize(6);
       textAlign(LEFT);
       count += 1;
       text(count, ranX+posSize2, ranY+posSize2);
     } else {
       //ellipse(ranX,ranY,negSize,negSize);
       noFill();
       //triangle(ranX,ranY,ranX+1,ranY+1,ranX-1,ranY-1);
     };
  };
  
  fill(0);
  textSize(12);
  textAlign(RIGHT);
  text(userWord + " appears " + count + " times", width-30, height-30);
  
  println(count);
  
};