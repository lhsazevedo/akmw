# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ::             WLA DX compiling batch file v3              ::
# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

# Set some default values:
REV=1

usage()
{
  echo "Usage: compile [ -rev0 ]"
  exit 2
}

PARSED_ARGUMENTS=$(getopt -a -n compile -o '' --long rev0 -- "$@")
VALID_ARGUMENTS=$?
if [ "$VALID_ARGUMENTS" != "0" ]; then
  usage
fi

eval set -- "$PARSED_ARGUMENTS"
while :
do
  echo $1 $2
  case "$1" in
    --rev0)   REV=0               ; shift   ;;
    # -- means the end of the arguments; drop this, and break out of the while loop
    --) shift; break ;;
    # If invalid options were passed, then getopt should have reported an error,
    # which we checked as VALID_ARGUMENTS when getopt was called...
    *) echo "Unexpected option: $1"
       usage ;;
  esac
done

mkdir -p tmp build

rm -f tmp/* 

echo Compiling
wla-z80 -i -Isrc/asm -D _REV0 -o tmp/baserom_rev0.o src/asm/baserom.asm 
wla-z80 -i -Isrc/asm -D _REV1 -o tmp/baserom_rev1.o src/asm/baserom.asm

echo Creating link files
# Make link file
echo [objects] > tmp/linkfile_rev0
echo baserom_rev0.o >> tmp/linkfile_rev0

echo [objects] > tmp/linkfile_rev1
echo baserom_rev1.o >> tmp/linkfile_rev1

rm -f build/*

echo Linking
cd tmp
wlalink -d -S -A -i -b linkfile_rev0 ../build/alex-kidd-in-miracle-world-usa-europe.sms
wlalink -d -S -A -i -b linkfile_rev1 ../build/alex-kidd-in-miracle-world-usa-europe-rev-1.sms
cd ..

if sha1sum --status -c <<<"8cecf8ed0f765163b2657be1b0a3ce2a9cb767f4 *build/alex-kidd-in-miracle-world-usa-europe.sms"; then
    echo "REV0 Ok!"
else
    echo "REV0 Diff :/"
fi

if sha1sum --status -c <<<"6d052e0cca3f2712434efd856f733c03011be41c *build/alex-kidd-in-miracle-world-usa-europe-rev-1.sms"; then
    echo "REV1 Ok!"
else
    echo "REV1 Diff :/"
fi