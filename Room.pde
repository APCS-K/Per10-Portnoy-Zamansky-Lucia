class Room{
 Room[]doors;
 String name;
 
 public Room(String name){
   this.name=name;
  doors=new Room[4]; 
 }
 public Room(String name,Room[]doors){
   this.name=name;
  this.doors=new Room[4];
  setDoors(doors); 
 }
 
 public void setDoors(Room[]doors){
   for(int i=0; i<4; i++){
    this.doors[i]=doors[i]; 
   }
 }public void setDoors(Room north, Room east, Room south, Room west){
  doors[0]=north;
  doors[1]=east;
  doors[2]=south;
  doors[3]=west; 
 }
 public void setNorth(Room north){
  doors[0]=north;
 }public void setEast(Room north){
  doors[1]=north;
 }public void setSouth(Room north){
  doors[2]=north;
 }public void setWest(Room north){
  doors[3]=north;
 }
 
 public Room[] getDoors(){
  return doors; 
 }
 public Room getNorth(){
  return doors[0];
 }public Room getEast(){
  return doors[1]; 
 }public Room getSouth(){
   return doors[2];
 }public Room getWest(){
  return doors[3]; 
 }
 
 public String getName(){
  return name; 
 }
 public void setName(String name){
  this.name=name; 
 }
 
}
