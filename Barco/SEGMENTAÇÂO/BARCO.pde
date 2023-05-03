void setup(){
 size(640,480);
 noLoop();
}

void draw(){
 PImage img = loadImage("barcoFinalMED.jpg");
 PImage img2 = createImage(img.width, img.height, RGB);
 
 //Filtro de Escala de Cinza
 for(int y = 0; y < img.height; y++) {
   for (int x = 0; x < img.width; x++){
     int pos = y*img.width + x;
     int media = (int) (red(img.pixels[pos]) + green(img.pixels[pos]) + blue(img.pixels[pos])) / 3; //calcula uma média entre os três canais de cores da imagem.
     img2.pixels[pos] = color(red(img.pixels[pos])); //atribui a média na imagem 2. Por ser apenas um valor, ele será cinza.
   }
  }
  
  //Filtro de Brilho
   for(int y = 0; y < img.height; y++) {
     for (int x = 0; x < img.width; x++){
       int pos = y*img.width + x;
       int brilho = (int) red(img2.pixels[pos]) - 0;
       if (brilho > 255) brilho = 255;
       else if (brilho < 0) brilho = 0;
       img2.pixels[pos] = color(brilho);
     }
   }
   //Filtro de Limiarização
    for(int y = 0; y < img.height; y++) {
     for (int x = 0; x < img.width; x++){
       int pos = y*img.width + x;
       if (red(img2.pixels[pos]) > 20 && y > 100 && y < 380 && x > 10 && x < 520) img2.pixels[pos] = color(255);
       else img2.pixels[pos] = color(0);
       
     }
    }
    
   
  image(img2,0,0);
}
