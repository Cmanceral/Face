void setup(){
  size (600, 600);
};

void draw(){
  
  background(255);
  
  face( mouseX, mouseY, 100, 1, 4, 2);
  
};

void face(float x, float noseY, float widthFace, float dir,float eyes,  float mouth){
  
  //CARA
  widthFace = widthFace * dir;
  line( x, 0, x, noseY);
  line(x, noseY, x - widthFace, noseY);
  line( x - widthFace, noseY, x - widthFace, height);
  
  //OJOS
  
  if ( eyes == 1){
    fill(0);
    ellipse(x + (widthFace * 0.5), noseY * 0.5, 5, 5);
    ellipse(x - (widthFace * 0.5), noseY * 0.5, 5, 5);
  };
  
  if (eyes == 2){
    fill(255);
    ellipse(x + (widthFace * 0.5), noseY * 0.5, 45, 45);
    ellipse(x - (widthFace * 0.5), noseY * 0.5, 45, 45);
    fill(0);
    ellipse(x + (widthFace * 0.5), noseY * 0.5, 15, 15);
    ellipse(x - (widthFace * 0.5), noseY * 0.5, 15, 15);
  };
  
  if(eyes == 3){
    line(x - widthFace , noseY/2, x - widthFace/3, noseY/2);
    line( x + widthFace, noseY/2, x + widthFace/3, noseY/2);
  }
  
    if(eyes == 4){
    line(x - widthFace , noseY/2, x - widthFace/3, noseY/2);
    line( x + widthFace, noseY/2, x + widthFace/3, noseY/2);
    fill(0);
    ellipse(x + (widthFace * 0.5), noseY * 0.6, 15, 15);
    ellipse(x - (widthFace * 0.5), noseY * 0.6, 15, 15);
  }
  
  
  //BOCAS
  
  float mouthHeight = (height - noseY) * 0.5;
  float mouthY = noseY + (mouthHeight * 0.5);
  
  if (mouth == 1){
    line ( x - widthFace, mouthY, x, mouthY);
  };
  if (mouth == 2){
    noFill();
    rect( x - widthFace, mouthY, mouthY/3, mouthY/3);
  };
  if (mouth == 3){
    rectMode(CORNER);
    noFill();
    ellipse (x , mouthY + mouthHeight/2, mouthY/3, 100);
  };
  
};

 
