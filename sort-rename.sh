#recursively move files from IcloudPhotos directory into ./output/ directory if they have datetimeoriginal tag, being renamed accordingly
exiftool -r -d ./output/%y%m%d_%H%M%S%%-c.%%e -if "-filename<datetimeoriginal" IcloudPhotos

create directory for files to continue processing
mkdir ./process_further

mv remaining files to other directory
find IcloudPhotos -type f | xargs -I '{}' mv -n {} process_further

#determine number of remaining files
#find ./process_further -type f | wc -l

#Adding keywords to 
exiftool -overwrite-originals -keywords+=Bridge -keywords+=Colton 180513_001543.png
