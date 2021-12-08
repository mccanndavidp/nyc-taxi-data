cat setup_files/raw_data_urls.txt | head $NUMFILES | xargs -n 1 --max-procs 10 -i sh -c 'infile="{}"; outfile=$(echo "$infile" | cut -d "/" -f 6) ; echo $outfile ;  wget -qO- $infile | aws s3 cp -  s3://alnopd-041800001m1p-eddp-data-processing/d3dae/input/dmce6/taxidata/$outfile'
aws s3 ls s3://alnopd-041800001m1p-eddp-data-processing/d3dae/input/dmce6/taxidata/
