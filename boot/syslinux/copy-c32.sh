dst_dir=$(dirname "$0")
script=$(basename "$0")
type="$1"
src_dir="$2"
dst_dir="$3"

echo "type	= $type"
echo "src_dir	= $src_dir"
echo "dst_dir	= $dst_dir"

return

usage ()
{
	echo "$0 <bios|efi32|efi64> <syslinux 源文件夹> <目的文件夹>"
	#echo "	目的文件夹是脚本所在目录"	# 由于 FAT32 分区不支持可执行脚本，所以，必须通过参数传入目的文件夹
}

if [[ "$type" == "" || "$src_dir" == "" || "$dst_dir" == "" ]]
then
	usage
	exit 1
fi

cd "$src_dir"
find -name "*.c32" -exec cp --preserve -f --parents {} "$dst_dir" \;

for f in chain.c32 gfxboot.c32 hdt.c32 ifcpu64.c32 libcom32.c32 libgpl.c32 liblua.c32 libmenu.c32 libutil.c32 linux.c32 menu.c32 reboot.c32 vesamenu.c32 memdisk
do
	find "$src_dir/$type" -type f -name $f -exec cp --preserve -f {} "$dst_dir" \;
done
