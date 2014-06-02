Room[]rooms;
Role Edgardo,Raimondo;

void setup(){
 size(500,500);
 background(255);

 Room[]rooms={new Room("Main Hall"),new Room("Courtyard"),new Room("Fountain"),new Room("Graveyard"),new Room("Armory"), new Room("Ballroom"), new Room("Stairwell")};
 rooms[0].setDoors(rooms[5],null,rooms[1],rooms[4]);
 rooms[1].setDoors(rooms[0],rooms[3],null,rooms[2]);
 rooms[2].setDoors(null,rooms[1],null,null);
 rooms[3].setDoors(null,null,null,rooms[1]);
 rooms[4].setDoors(null,rooms[0],null,null);
 rooms[5].setDoors(null,null,rooms[0],rooms[6]);
 rooms[6].setDoors(null,rooms[5],null,null);
 
 rooms[1].add(new Object("Knife",20));
 rooms[1].add(new Object("Ring",5));

  
 
  Edgardo=new Role("Edgargo",rooms[0]);
  Raimondo=new Role("Raimondo",rooms[0]);

}

void mouseClicked(){
 background(255);
 
 if(Edgardo.getRoom().getNorth()!=null && mouseX>50 && mouseX<100 && mouseY>height-150 && mouseY<height-100){
  Edgardo.goNorth();
 }
 if(Edgardo.getRoom().getEast()!=null && mouseX>100 && mouseX<150 && mouseY>height-100 && mouseY<height-50){
  Edgardo.goEast();
 }
 if(Edgardo.getRoom().getSouth()!=null && mouseX>50 && mouseX<100 && mouseY>height-50 && mouseY<height){
  Edgardo.goSouth();
 }
 if(Edgardo.getRoom().getWest()!=null && mouseX>0 && mouseX<50 && mouseY>height-100 && mouseY<height-50){
  Edgardo.goWest(); 
 }
 
 fill(255);
 stroke(0);
 rectMode(CENTER);
 rect(75,height-125,50,50);
 rect(25,height-75,50,50);
 rect(125,height-75,50,50);
 rect(75,height-25,50,50);
 fill(0);
 textSize(32);
 text(Edgardo.getRoom().getName(),8,32);
 textSize(10);
 textMode(CENTER);
 if(Edgardo.getRoom().getNorth()!=null){
   text(Edgardo.getRoom().getNorth().getName(),75,height-125,50,50);
 }
 if(Edgardo.getRoom().getEast()!=null){
  text(Edgardo.getRoom().getEast().getName(),125,height-75,50,50); 
 }
 if(Edgardo.getRoom().getSouth()!=null){
  text(Edgardo.getRoom().getSouth().getName(),75,height-25,50,50); 
 }
 if(Edgardo.getRoom().getWest()!=null){
  text(Edgardo.getRoom().getWest().getName(),25,height-75,50,50); 
 }
 
 fill(0,125,0);
 text(Edgardo.getRoom().inventory(),width-100,20);
 fill(0,0,125);
 text(Edgardo.getRoom().company(),width-100,220,100,200);
}

void draw(){
}
