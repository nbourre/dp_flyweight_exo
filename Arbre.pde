class Arbre {
  PImage texture;
  PVector position;
  PVector dimension;
  
  Arbre (String cheminImage) {
    texture = loadImage(cheminImage);
    position = new PVector();
    dimension = new PVector(texture.width, texture.height);
  }
  
  void setPosition (int x, int y) {
    if (position == null) {
      position = new PVector();
    }
    
    position.x = x;
    position.y = y;
  }
  
  void setDimension (int w, int h) {
    if (dimension == null) {
      dimension = new PVector();
    }
    
    dimension.x = w;
    dimension.y = h;
  }
  
  void update(float deltaTime) {
  }
  
  void display() {
    image(texture, 
      position.x, position.y, 
      dimension.x, dimension.y);
    
  }
}