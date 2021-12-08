# Credit for StanH

# On Init
base_dir=$(dirname "$(readlink -f "$0")")
Compile_Folder="$base_dir/EngineHacks/CoreHacks" 
main_event="$base_dir/Buildfile.event"
source_rom="$base_dir/FE8U.gba"
target_rom="$base_dir/FE16RE-DEMO.gba"
ea_exe="$base_dir/EventAssembler/ColorzCore.exe"


# Compile C
# echo "On Compiling"
# cd "$Compile_Folder"
# rm _include/_Definitions.h.o
# make _include/_Definitions.h.o
# make clean
# make lyn


# Assembling Tables
echo "Make C2EA"
cd "$base_dir/Tables"
rm *.event
python3 c2ea.py ../FE8U.gba


# Assembling Text
echo "Make Text"
cd "$base_dir/Texts"
python3 text-process-cn.py text_buildfile.txt InstallTextData.event TextDefinition.txt


# Make Hack
cd "$base_dir"
echo "Preparing ROM"
cp -f "$source_rom" "$target_rom"
echo "Assembling"
"$ea_exe" A FE8 "-output:$target_rom" "-input:$main_event"
echo "Done!"

