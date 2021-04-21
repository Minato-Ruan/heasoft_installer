# This is the Caldb initilization file for UNIX systems.  It sets up the
# 'CALDB' and 'CALDBCONFIG' environment variables.  The CALDB environment 
# variable should point at the top level directory of the Caldb and the 
# CALDBCONFIG environment variable should point at the file containing 
# paths to the index files.
# 
# This file is site dependent.  The directory paths may need to be
# edited when installing a Caldb.
#
#-----------------------------------------------------------------------

#CALDB=/FTP/caldb; export CALDB
CALDBCONFIG=$CALDB/software/tools/caldb.config; export CALDBCONFIG
CALDBALIAS=$CALDB/software/tools/alias_config.fits; export CALDBALIAS

#
# MFC changed 20140623
#     if $CALDB* environment variables exist, then preserve them
#     
# NOTE TO USERS: YOU MAY NEED TO CHANGE THE DEFINITION
#      OF $CALDB, $CALDBCONFIG AND $CALDBALIAS TO MATCH 
#      YOUR LOCAL INSTALLATION

if [ -z "$CALDB" ]; then
    CALDB=/FTP/caldb; export CALDB
fi  

if [ -z "$CALDBCONFIG" ]; then
    CALDBCONFIG=$CALDB/software/tools/caldb.config; export CALDBCONFIG
fi  

if [ -z "$CALDBALIAS" ]; then
    CALDBALIAS=$CALDB/software/tools/alias_config.fits; export CALDBALIAS
fi  


