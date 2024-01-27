#!/usr/bin/perl
#webm to ogg for opus

#make file list of webm
system("ls > ls_webm");
open(input, "<ls_webm");
@webm=<input>;
chomp(@webm);


#parse by lines
@lines=<input>;
chomp(@lines);

#run turn from webm to ogg
foreach $x (@lines) {
system("ffmpeg -i "$x\n" -vn -c:a libvorbis -qscale:a 6 "$(basename "$x\n" .webm)".ogg");
}

#close youtube bookmarks
close(input);
