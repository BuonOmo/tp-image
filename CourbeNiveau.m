function texture = CourbeNiveau(terrain,inter)

texture = ones (size(terrain));
texture = (floor((mod(terrain,inter)+inter*0.05)/inter) +...
           floor((mod(terrain,inter)+inter*0.15)/inter) +...
           floor((inter -mod(terrain,inter) + inter*0.15)/inter) +...
           floor((inter -mod(terrain,inter) + inter*0.05)/inter)...
          )/4 ;
truetexture (:,:,1) = texture;
truetexture (:,:,2) = texture;
truetexture (:,:,3) = texture;
texture = floor(255*truetexture);

end