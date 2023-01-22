aria2c -i lists 
perl-rename -i "s/(.*)(\.txt)(\.[0-9]+)$/\1\3\2/" *
#xargs < resources -P 4 -L 1 wget -O
echo *.txt | xargs cat > merge-file
chmod +x ruleset_converter
./ruleset_converter --input_format=filter-list \
                    --output_format=unindexed-ruleset \
                    --input_files=merge-file \
                    --output_file=filters.dat                  
