void init(){
  started = false;
  barLength = rwidth/1.5;
  barHeight = rheight/15;
  wave1H = rheight/1.5;
  wave2H = rheight/1.15;
  rowLoc = int(rheight / 8.5);
  butt = new Button[2];
  c1 = color(0,175,0);
  c2 = color(0,255,0);
  butt[0] = new Button("image", false, "Select", rwidth/8, rowLoc, rwidth/6, rheight/9, c1, c2);
  c1 = color(0,200,200);
  c2 = color(0,255,200);
  butt[1] = new Button("rect", false, "Next", rwidth/3, rowLoc, rwidth/8, rheight/12, c1, c2);
}
