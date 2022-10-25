############################################################
### variables
############################################################
##### parameters for database
## invariants
#inv='-r'			# cross ratio
inv='-a'			# Affine invariant
#inv='-s'			# similarity invariant
## n
n=7
## m
m=6
## quantization level
d=15

##### directories
out_dir='.'			# output directory of database files
pdf_dir='pdf'
jpg_dir='jpg'
thumbnail_dir='thumb'

############################################################
### sub routine
############################################################
##### initialization
print_fname_init () {
  echo -ne "\t"
  count=0
}

##### print a filename
print_fname () {
  count=$(($count + ${#1} + 1))
  if [ $count -ge 62 ]
  then
    echo -en "\n\t"
    count=0;
  fi
  echo -n "$1 "
}


############################################################
### main
############################################################
##### check whether convert is available
convert --version > /dev/null
if [ $? -ne 0 ]
then
  exit 10
fi

##### convert PDF to JPEG
echo 1. Converting PDF to JPEG...
print_fname_init
for fp in `cd $pdf_dir; echo *; cd ..`
do
  f=${fp%.*}		# basename
  fj=${f}.jpg		# jpg file name
  print_fname $f	# print filename
  convert -density 200x200 $pdf_dir\\$fp $jpg_dir\\$fj
done
echo

##### construct hash table
echo 2. Constructing hash table...
echo -ne "\t"
server.exe -c $jpg_dir jpg -h $out_dir $inv -n $n -m $m -d $d > /dev/null
echo done

##### create thumbnail images
echo 3. Creating thumbnail images...
print_fname_init
for fj in `cd $jpg_dir; echo *; cd ..`
do
  f=${fj%.*}		# basename
  print_fname $f	# print filename
  convert -geometry 25% $jpg_dir\\$fj $thumbnail_dir\\$fj
done
echo

### Finishing
echo
echo Finished.
echo ...Press ENTER key to close the window...
read	# waiting for the ENTER key to be pressed
exit
