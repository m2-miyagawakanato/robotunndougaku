void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(100, 120, 200, 0, 0, 0, 0, 0, -1);
  
}

void draw(){
  
  background(255);
  movecomand();
  
  //base
 
  //go to center of base
  translate(0,0,baseH/2);
   rotateZ(radians(angle0-90));
  fill(#4D4E50);
  box(basew,basew,baseH);
  
  //1st link
  //go to 1st joint
  translate(0,0,baseH/2-armW1/2);
  rotateX(radians(angle1));
  //go to center of 1st joint
  translate(0,armL1/2-basew/2,-0.5);
  fill(#66686A);
  box(armW1,armL1,armW1);
  
  //2nd link
  //go to 2nd joint
  translate(0,armL1/2+basew/2-armW2,0);
  rotateX(radians(-angle2));
  //go to center of 2nd joint
  translate(0,0,-armL2/2+basew/2);
  fill(#7F8283);
  box(armW2,armW2,-armL2);
  
  //3rd link
   fill(#9A9C9D);
  translate(0,0,-armL2/2+armW3/2);
  rotateX(radians(angle3));
  //go to center of 1st joint
  translate(0,armL3/2-armW2/2,-0.5);
 
fill(#9A9C9D);
box(armW3, armL3,armW3 );
 
  //hand
  //go to hand joint
  translate(0,+armL3/2+handh/2,0);
  rotateY(radians(angle4));
  fill(#9A9C9D);
  box(handw1,handL1,handh);
  translate(0,handL1/2+handL2/2,0);
  box(handw2,handL2,handh);
  
  
}
