#!/bin/csh -f

cd /tools/C/eegr-463/idris.somoye/cva6/work-vcs

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/tools/synopsys/vcs/S-2021.09-SP1/linux64/bin/vcselab $* \
    -o \
    simv \
    -nobanner \

cd -

