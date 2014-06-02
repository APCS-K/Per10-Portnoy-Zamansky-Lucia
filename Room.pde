class Room{
 Room[]doors;
 ArrayList<Object>inventory;
 ArrayList<Role>company;
 String name;
 
 public Room(String name){
   inventory=new ArrayList<Object>();
   company=new ArrayList<Role>();
   this.name=name;
  doors=new Room[4]; 
 }
 public Room(String name,Room[]doors){
   inventory=new ArrayList<Object>();
   company=new ArrayList<Role>();
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
 
 public String inventory(){
   String inv="";
   for (Object o:inventory){
     inv+=o.toString()+"\n";
   }
   return inv;
 }
 public String company(){
  String com=""; 
  for(Role r:company){
    com+=r.toString()+"\n";
  }
  return com;
 }
 
 public void add(Object o){
   inventory.add(o);
 }
 public Object remove(int index){
    return inventory.remove(index);
  }
 
 public void enter(Role r){
   company.add(r);
 }
 public void exit(Role r){
    company.remove(r);
  }
 
}
