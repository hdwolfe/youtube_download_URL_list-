# youtube_download_URL_list-
This downloads youtube video & audio files from a list of URLs you assemble. It uses youtube-dl and Perl.
These scripts will work to start downloading part way through your list of URLs.
However, I am still working on how to resume downloading of partially downloaded individual files.

'fetch youtube.pl' downloads formats either 251 or 22.
'fetch youtube resume.pl' resumes downloading performed by 'fetch youtube.pl' in case you close it before your entire list is downloaded.
'fetch html.pl' downloads the html file (here you can get metadata) for files downloaded in 'fetch youtube resume.pl'.
'fetch clean up.pl' downloads any videos in format 18 that were not available in format 22.
'fetch format 18.pl' downloads videos that you want in file format 18 as your first choice.
'webm2ogg.pl' converts files in a directory with only webm files in it to ogg files (this single script also used ffmpeg).
