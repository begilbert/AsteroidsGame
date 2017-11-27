class Spaceship extends Floater {
  public Spaceship() {
    /* Coordinates:
(0, 8)
(0, 16)
(1, 16)
(1, 15)
(2, 15)
(2, 14)
(3, 14)
(3, 13)
(4, 13)
(4, 15)
(6, 15)
(6, 14)
(7, 14)
(7, 16)
(8, 16)
(8, 0)
(7, 0)
(7, 3)
(6, 3)
(6, 7)
(5, 7)
(5, 8)
(4, 8)
(4, 6)
(3, 6)
(3, 11)
(2, 11)
(2, 12)
(1, 12)
(1, 8)
*/

super.addCoords(0, 8);
super.addCoords(0, 16);
super.addCoords(1, 16);
super.addCoords(1, 15);
super.addCoords(2, 15);
super.addCoords(2, 14);
super.addCoords(3, 14);
super.addCoords(3, 13);
super.addCoords(4, 13);
super.addCoords(4, 15);
super.addCoords(6, 15);
super.addCoords(6, 14);
super.addCoords(7, 14);
super.addCoords(7, 16);
super.addCoords(8, 16);
super.addCoords(8, 0);
super.addCoords(7, 0);
super.addCoords(7, 3);
super.addCoords(6, 3);
super.addCoords(6, 7);
super.addCoords(5, 7);
super.addCoords(5, 8);
super.addCoords(4, 8);
super.addCoords(4, 6);
super.addCoords(3, 6);
super.addCoords(3, 11);
super.addCoords(2, 11);
super.addCoords(2, 12);
super.addCoords(1, 12);
super.addCoords(1, 8);



    //
    xCoords = yCoords = 250;
    xDirection = yDirection = 0;
    theta = 0;
  }
  public void show (boolean jets) {
    super.show();
  }
}
