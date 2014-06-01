Room activeRoom;
Room[]rooms;

void setup(){
 size(500,500);
 background(255);

 Room[]rooms={new Room("Main Hall"),new Room("Courtyard"),new Room("Fountain"),new Room("Graveyard"),new Room("Armory"), new Room("Ballroom"), new Room("Stairwell")};
 activeRoom=rooms[0];
 rooms[0].setDoors(rooms[5],null,rooms[1],rooms[4]);
 rooms[1].setDoors(rooms[0],rooms[3],null,rooms[2]);
 rooms[2].setDoors(null,rooms[1],null,null);
 rooms[3].setDoors(null,null,null,rooms[1]);
 rooms[4].setDoors(null,rooms[0],null,null);
 rooms[5].setDoors(null,null,rooms[0],rooms[6]);
 rooms[6].setDoors(null,rooms[5],null,null);
}

void mouseClicked(){
 background(255);
 
 if(activeRoom.getNorth()!=null && mouseX>50 && mouseX<100 && mouseY>height-150 && mouseY<height-100){
  activeRoom=activeRoom.getNorth(); 
 }
 if(activeRoom.getEast()!=null && mouseX>100 && mouseX<150 && mouseY>height-100 && mouseY<height-50){
  activeRoom=activeRoom.getEast(); 
 }
 if(activeRoom.getSouth()!=null && mouseX>50 && mouseX<100 && mouseY>height-50 && mouseY<height){
  activeRoom=activeRoom.getSouth(); 
 }
 if(activeRoom.getWest()!=null && mouseX>0 && mouseX<50 && mouseY>height-100 && mouseY<height-50){
  activeRoom=activeRoom.getWest(); 
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
 text(activeRoom.getName(),8,32);
 textSize(10);
 textMode(CENTER);
 if(activeRoom.getNorth()!=null){
   text(activeRoom.getNorth().getName(),75,height-125,50,50);
 }
 if(activeRoom.getEast()!=null){
  text(activeRoom.getEast().getName(),125,height-75,50,50); 
 }
 if(activeRoom.getSouth()!=null){
  text(activeRoom.getSouth().getName(),75,height-25,50,50); 
 }
 if(activeRoom.getWest()!=null){
  text(activeRoom.getWest().getName(),25,height-75,50,50); 
 }
}

void draw(){
}
