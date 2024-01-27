#!/usr/bin/perl
#fetch all html pairs for youtube files

#open bkmrk files
open(input251, "<youtube_bkmrks_251.txt");
open(input22, "<youtube_bkmrks_22.txt");

#parse lines into arrays
@lines251=<input251>;
chomp(@lines251);
@lines22=<input22>;
chomp(@lines22);

#combine arrays
@all=(@lines251,@lines22);

#get all html file
foreach $i (@all) {
system("wget $i\n");
}
