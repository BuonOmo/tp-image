function [  ] = RenderTerrain ( terrain, texture, outfile, origin, target )

repertoire = 'wine ~/.mitsuba/mitsuba.exe';
cmd = strcat(repertoire,' -Dhfile=',terrain,' -Dtfile=',texture,' -Dorigin="',sprintf('%f ',origin), '" -Dtarget="',sprintf('%f ',target), '" -o ',outfile,' /home/ulysse/Documents/cours/TPs/image/texture-lookat.xml');
disp(cmd);
system(cmd);

end

