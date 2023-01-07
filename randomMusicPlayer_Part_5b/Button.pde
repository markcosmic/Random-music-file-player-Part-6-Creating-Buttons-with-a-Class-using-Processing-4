class Button{
  int buttW, buttH, buttX, buttY;
  float bp = 1;
  String buttStyle, label;
  PImage button;
  color rgb1, rgb2, bc;
  boolean latch, trigger;
  Button(String _style, boolean _type, String _label, int _bx, int _by, int _bw, int _bh, color _c1, color _c2){
   buttStyle = _style;
   latch = _type;
   label = _label;
   buttX = _bx;
   buttY = _by;
   buttW = _bw;
   buttH = _bh;
   bc = rgb1 = _c1;
   rgb2 = _c2;
   button = loadImage("squareButton.jpg");
  }
  void update(int _i){
    if(mc && rmouseX > buttX - buttW/2 && rmouseX < buttX + buttW/2 &&
       rmouseY > buttY - buttH/2 && rmouseY < buttY + buttH/2){
         mc = false;
         trigger = !trigger;
         if(trigger){
          bc = rgb2;
          bp = .9;
         }else{
           bc = rgb1;
           bp = 1;           
         }
        ms = millis();
        buttCheck(_i);
    }
  }
  void display(int _i){
    if(millis() > ms + 250 && !latch){
     bc = rgb1;
     bp = 1;
     trigger = false;
    }
    if(buttStyle == "image"){
      tint(bc);
      image(button, buttX, buttY, buttW * bp, buttH * bp);
      textSize(rwidth/32);      
    }
    if(buttStyle == "rect"){
     stroke(150);
     strokeWeight(2);
     fill(bc);
     rect(buttX, buttY, buttW * bp, buttH * bp);
     textSize(rwidth/40);
    }
    fill(255);
    text(label, buttX, buttY);
    noStroke();
    noTint();
  }
}
void mouseClicked(){
 mc = true; 
}
