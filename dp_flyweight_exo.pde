ArrayList<Arbre> foret;
int nbArbres = 1000;

void setup() {
  size (800, 600);
  
  foret = new ArrayList<Arbre>();
  
  for (int i = 0; i < nbArbres; i++) {
    Arbre current = new Arbre("tree.png");
    current.setPosition((int)random (width), (int)random (height));
    int randomDim = (int)random(16, 48);
    current.setDimension(randomDim, randomDim);
    foret.add(current);
  }
}

void draw() {
  for (Arbre arbre : foret) {
    arbre.display();
  }
  
}
