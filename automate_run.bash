# define variables
 # creating results var as the current wd
RESULTS_DIR=/home/hk/PhD/02_Courses/software_carpentry/bash/data-shell/results
 # input directory
INPUT_DIR=/home/hk/PhD/02_Courses/software_carpentry/bash/data-shell/molecules


# dont change from here execpt you know what you are doing!

rm -rf $RESULTS_DIR
mkdir $RESULTS_DIR

touch $RESULTS_DIR/length.txt

for filename in $INPUT_DIR/*.pdb
  do 
    wc -l $filename | sort -n | head -n 1 >> $RESULTS_DIR/length.txt  # use echo for 'dry runs'
done

cat $RESULTS_DIR/length.txt

# end of script
