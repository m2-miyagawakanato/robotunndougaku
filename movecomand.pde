boolean keyWasPressed = false;

void keyPressed() {
  keyWasPressed = true;
}

void keyReleased() {
  keyWasPressed = false;
}
void movecomand(){
  if(keyWasPressed){
    
    //rotate base
    if(key == 'a'){
      angle0 = angle0 + dif0;
    }
    if(key == 'A'){
      angle0 = angle0 - dif0;
    }
    
    //rotate arm1
    if(key == 'b'){
      
      if(angle1 <= 90){
        angle1 = angle1 + dif1;
      }
    }
     
    if(key == 'B'){
      if(angle1 >= -70){
        angle1 = angle1 - dif1;
      }
    }
    
    //rotate arm2
    if(key == 'c'){
      if(angle2 >= -180 ){
      angle2 = angle2 - dif2;
      }
    }
       
    if(key == 'C'){
      if(angle2 <= 32 ){
      angle2 = angle2 + dif2;
      }
    }
    
     //rotate arm3
    if(key == 'd'){
      if(angle3 <= 45 ){
        angle3 = angle3 + dif3;
    }
    }
    
    if(key == 'D'){
       if(angle3 >= -90){
      angle3 = angle3 - dif3;
    }
    }
    //rotate hand
    if (key=='e'){
      angle4=angle4+dif4;
    }
    if (key=='E'){
      angle4=angle4-dif4;
    }
  }
    //return to initial point
    if(keyPressed) {
    if (key == 'f'){
     
      

if (abs(angle0) < epsilon) {
  // angle0 が 0 に十分近い場合の処理
} else if (angle0 > 0) {
  angle0 -= dif5;
} else {
  angle0 += dif5;
}
      
   

if (abs(angle1) < epsilon) {
  // angle1 が 0 に十分近い場合の処理
} else if (angle1 > 0) {
  angle1 -= dif5;
} else {
  angle1 += dif5;
}   

if (abs(angle2) < epsilon) {
  // angle2 が 0 に十分近い場合の処理
} else if (angle2 > 0) {
  angle2 -= dif5;
} else {
  angle2 += dif5;
}     
if (abs(angle3) < epsilon) {
  // angle3 が 0 に十分近い場合の処理
} else if (angle3 > 0) {
  angle3 -= dif5;
} else {
  angle3 += dif5;
}     
      
if (abs(angle4) < epsilon) {
  // angle4 が 0 に十分近い場合の処理
} else if (angle4 > 0) {
  angle4 -= dif5;
} else {
  angle4 += dif5;
}     

  }
  }
}
