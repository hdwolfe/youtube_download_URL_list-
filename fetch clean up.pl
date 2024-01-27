#!/usr/bin/perl
#clean up any videos that are only available in 18


#open bkmrk files
open(input22, "<youtube_bkmrks_22.txt");

#parse lines into arrays
@lines22=<input22>;
chomp(@lines22);

#list files already downloaded
system("ls > ls_out");
open(input, "<ls_out");
@out=<input>;
chomp(@out);

#make arrays for each type of downloaded file
@out22=();

#group these files by type of download
foreach $i (@out){

  #sort 22
  if($i=~m/.mp4/){
  push @out22, $i;
  }
}

#make array file URLs that are not in the file index
@fetch18=();

#extract file URLs that are not in the file index under 22
foreach $x (@lines22){
$id=(split('=',$x))[1];

if(grep /$id/, @out22){
}else{
push @fetch18, $x;
}
}

close(input22);
close(input);

#remove file list index
system("rm ls_out");

foreach $i (@fetch18) {
system("youtube-dl -f 18 $i\n");
}
