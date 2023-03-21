//mogura
PImage mogura , michi ,usagi;
float moguraX, moguraY , usagiX, usagiY, usagiZ;
float r1,r2,r3;
int count= 0;


void setup(){
  mogura = loadImage("data/mogura.png");
  michi = loadImage("data/michi.png");
  usagi=loadImage("data/usagi2.png");
   usagiX=0;
   usagiY=200;
   usagiZ=5;
   r1 = 50;
   r2 = 3;
   r3 =150;
  size(400,400);
  frameRate(9);
}
void draw(){
  background(255);
   usagiX ++ ; //usagi
  image(michi,0,0);
  if (count == 0){
    moguraX =(int)random(0,5) * 50 + 25;
    moguraY =(int)random(0,5) *50 +25;
    usagiX =(int)random(0,5) * 50 + 25;
    usagiY =(int)random(0,5) *50 +25;
    
    
   
   usagiY = r1 * sin(radians(usagiX*r2))+ r3;
   image(usagi,usagiX,usagiY,
   100,100);
    usagiX= usagiX%400 ; 
     
   if (usagiX >= 400 );{
   usagiX = 0;
   r1 = random(20,80);
   r2 = random(1,4);
   r3 = random(50,250);
   
   
   }  
  }
  count++;
  if(count == 10) count = 0;
  image(mogura,moguraX,moguraY,
  mogura.width*0.5,mogura.height*0.5);

  }
     


void mouseClicked(){
  float d =dist(mouseX,mouseY,moguraX+50,moguraY+43);
  if(d <= 40){
    println("HIT!");
  }
  else {
    println(d);
  }

}