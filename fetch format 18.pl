#!/usr/bin/perl
#clean up any videos that are only available in 18


#open bkmrk files
open(input18, "<youtube_bkmrks_18.txt");

#parse lines into arrays
@lines18=<input18>;
chomp(@lines18);

#list files already downloaded
system("ls > ls_out");
open(input, "<ls_out");
@out=<input>;
chomp(@out);

#make arrays for each type of downloaded file
@out18=();

#group these files by type of download
foreach $i (@out){

  #sort 22
  if($i=~m/.mp4/){
  push @out18, $i;
  }
}

#make array file URLs that are not in the file index
@fetch18=();

#extract file URLs that are not in the file index under 18
foreach $x (@lines18){
$id=(split('=',$x))[1];

if(grep /$id/, @out18){
}else{
push @fetch18, $x;
}
}

close(input18);
close(input);

#remove file list index
system("rm ls_out");

foreach $i (@fetch18) {
system("youtube-dl -f 18 $i\n");
}
