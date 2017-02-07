PImage resim,resim1,resim2;
float tred,tgreen,tblue;
float kirmizitoplam,yesiltoplam,mavitoplam;
void setup(){
  size(1000,300);
  kirmizitoplam=color(0,0,0); 
  yesiltoplam=color(0,0,0); 
  mavitoplam=color(0,0,0);
  background(0);
  resim=loadImage("cc.jpg");
  resim1=loadImage("cc.jpg");
  resim2=loadImage("bb.jpg");
  cizim();
}
void cizim(){
  resim1.loadPixels();
  resim2.loadPixels();
  for(int i=0;i<resim1.width;i++){
    for(int j=0;j<resim1.height;j++){  
       float red1=red(resim1.pixels[koordinat(i,j,resim1.width)]);
       float green1=green(resim1.pixels[koordinat(i,j,resim1.width)]);
       float blue1=blue(resim1.pixels[koordinat(i,j,resim1.width)]);
      
       float red2=red(resim2.pixels[koordinat(i,j,resim2.width)]);
       float green2=green(resim2.pixels[koordinat(i,j,resim2.width)]);
       float blue2=blue(resim2.pixels[koordinat(i,j,resim2.width)]);
       
       tred=(red1+red2)/2;
       tgreen=(green1+green2)/2;
       tblue=(blue1+blue2)/2;
       
       resim.pixels[koordinat(i,j,resim1.width)]=color(tred,tgreen,tblue);
    }
  }
  resim1.updatePixels();
  resim2.updatePixels();
  textSize(35);
  text("-->",625,150);
  image(resim,700,0,300,300);
  image(resim1,0,0,300,300);
  image(resim2,310,0,300,300);
}
int koordinat(int x,int y,int en){
  return (y*en)+x;
}