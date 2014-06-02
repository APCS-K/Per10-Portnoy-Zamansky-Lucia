class Role{
 
 ArrayList<Object>inventory;
 String name;
 Room activeRoom;

  public Role(String name,Room start){
    inventory=new ArrayList<Object>();
   this.name=name;
   activeRoom=start;
   start.enter(this);
  } 
  
  public String toString(){
   return name; 
  }
 public String inventory(){
   String inv="";
   for (Object o:inventory){
     inv+=o.toString()+"\n";
   }
   return inv;
 }
 
  public void pick(Object o){
    inventory.add(o);
  }
  public Object drop(int index){
    return inventory.remove(index);
  }
  
  public void goNorth(){
    activeRoom.exit(this);
    activeRoom=activeRoom.getNorth();
    activeRoom.enter(this);
  }
  public void goEast(){
    activeRoom.exit(this);
    activeRoom=activeRoom.getEast();
    activeRoom.enter(this);
  }
  public void goSouth(){
    activeRoom.exit(this);
    activeRoom=activeRoom.getSouth();
    activeRoom.enter(this);
  }
  public void goWest(){
    activeRoom.exit(this);
    activeRoom=activeRoom.getWest();
    activeRoom.enter(this);
  }
  public Room getRoom(){
   return activeRoom; 
  }
}
