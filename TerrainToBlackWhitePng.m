function [] = TerrainToBlackWhitePng (terrain, output_name)
terrain = (terrain - min(min(terrain))) / ( max(max(terrain)) - min(min(terrain)));
imwrite(terrain,output_name);
end