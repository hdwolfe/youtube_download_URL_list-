#!/usr/bin/perl
#fetch youtube

#open youtube bookmarks for 251
open(input, "<youtube_bkmrks_251.txt");

#parse by lines
@lines=<input>;
chomp(@lines);

foreach $i (@lines) {
system("youtube-dl -f 251 $i\n");
}

#close youtube bookmarks
close(input);

#open youtube bookmarks for 22
open(input, "<youtube_bkmrks_22.txt");

#parse by lines
@lines=<input>;
chomp(@lines);

foreach $i (@lines) {
system("youtube-dl -f 22 $i\n");
}

#close youtube bookmarks
close(input);
