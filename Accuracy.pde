int cont =0;

void setup(){
size(640,480);
noLoop();
}

void draw(){
 
 PImage img2 = loadImage("c.jpg");
 PImage img1 = loadImage("3_09-59-53.png");
 
 for(int y=0; y<img1.height;y++){
   for(int x=0; x<img1.width;x++){
     int pos = y*img1.width + x;

        
       if(red(img1.pixels[pos]) != red(img2.pixels[pos])){
           cont++;
     }

     
   } 
 println(cont);
 
 }
}
