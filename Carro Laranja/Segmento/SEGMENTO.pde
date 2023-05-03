int cont =0;
int Fpositivo =0;
int Fnegativo =0;
int acerto =0;

void setup(){
size(640,480);
noLoop();
}

void draw(){
 
 PImage img2 = loadImage("FINALMED.jpg");
 PImage img1 = loadImage("FINALCORRETO.png");
 
 for(int y=0; y<img1.height;y++){
   for(int x=0; x<img1.width;x++){
     int pos = y*img1.width + x;

        
     //  if(red(img1.pixels[pos]) != red(img2.pixels[pos])){
     //      cont++;
     //}
      if(red(img1.pixels[pos]) == red(img2.pixels[pos])){
           acerto++;
     }else if(red(img1.pixels[pos]) == 0 && red(img2.pixels[pos])==255){
       Fpositivo++;
       } else if(red(img1.pixels[pos])==255 && red(img2.pixels[pos])==0){
       Fnegativo++;
       }
     
   } 
 }
 // println("pixels diferentes:",cont);
 println("Acertos:",acerto);
 println("Falso Positivo:",Fpositivo);
 println("Falso Negativo:",Fnegativo);
}
