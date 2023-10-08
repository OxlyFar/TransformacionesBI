float angulo = 0;
float intensidad = 0;
boolean aumentar = true;
void setup(){
  size(400, 400);
}

void draw(){
  float rojo = random(0, 200);
  float verde = random(0, 0);
  float azul = random(0, 200);
  background(intensidad, 255, 255);
  stroke(intensidad, 5,0);
  fill(rojo, verde, azul);
  translate(170, 150);
  rotate(PI/1.5);
  scale(2);
  rect(-50, -50, 150 , 50);
  
  if (intensidad == 255){
    aumentar = false;
  }else if (intensidad == 0 ){
    aumentar = true;
  }
  
  if (aumentar ){
      intensidad += 1;
  }else {
    intensidad -= 1;
  }
}

void keyPressed()   {
  
  if (key == '1'){
      angulo += 0.01;
  }
}
