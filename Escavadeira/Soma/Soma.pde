void setup() {
  size(650, 490);
  noLoop();
}

void draw() {
  PImage[] images = new PImage[8];
  images[0] = loadImage("Escav.jpg");
  images[1] = loadImage("Pneu1.jpg");
  images[2] = loadImage("Pneu2.jpg");
  images[3] = loadImage("Pa.jpg");
  images[4] = loadImage("Preto_Esca2.jpg");
  images[5] = loadImage("b2.jpg");
  images[6] = loadImage("wer.jpg");
  images[7] = loadImage("pow.jpg");
  float[][] img = new float [images[0].width][images[0].height];
  PImage aux = createImage(images[0].width, images[0].height, RGB);
//PImage não deixa passar de 255, por isso a matriz de float - as imagens são iguais

  for (int y = 0; y < aux.height; y++) {
    for (int x = 0; x < aux.width; x++) {
      int pos = y*aux.width + x;

      img[x][y] = (red(images[0].pixels[pos]) + 
      red(images[1].pixels[pos]) + 
      red(images[2].pixels[pos]) + 
      red(images[3].pixels[pos]) + 
      red(images[4].pixels[pos]) + 
      red(images[5].pixels[pos]) + 
      red(images[6].pixels[pos]) + 
      red(images[7].pixels[pos]));
    }
  }

  float maior = img[0][0];
  float menor = img[0][0];

  // Encontrar o maior e menor valor da imagem.
  for (int y = 0; y < aux.height; y++) {
    for (int x = 0; x < aux.width; x++) {
      if (img[x][y] > maior) {
        maior = img[x][y];
      } else if (img[x][y] < menor) {
        menor = img[x][y];
      }
    }
  }
  
  // Reescalonamento dos valores para [0,255].
  for (int y = 0; y < aux.height; y++) {
    for (int x = 0; x < aux.width; x++) {
      int pos = y*aux.width + x;
      int valor = (int) map(img[x][y],menor,maior,0,255);
      aux.pixels[pos] = color(valor);
      
    }

  }  
  image(aux, 0, 0);
  save("TEST.jpg");
}
