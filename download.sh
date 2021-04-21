# Copy Mission File
cd ~/
mkdir software
cd software

if [ ! -d "/caldb" ]; then
    echo "Setting up the CALDB Environment..."
    mkdir caldb 
    cd caldb

    curl -O $STEUP_FILE
    tar -zxvf caldb_setup_files.tar.Z 
else
    cd caldb
fi

echo "Add this to Env Variables:" $(pwd)
# Set Env Variables CALDB (if you want to use this)
export CALDB=$(pwd)

# Filename Format : goodfiles_<mission>_<instrument>_tar.Z
for item in ${DOWNLOAD_PATH[@]};do
    echo "Download file:"$item
    curl -O $item
done

for file_name in ${FILE_NAME[@]};do
    echo "Unzip File:"$file_name
    tar zxvf ${file_name}
done
