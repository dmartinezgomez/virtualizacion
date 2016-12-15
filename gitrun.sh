#! /bin/bash

echo "Comentario para el commit: "
read comentario
echo "Copiando ficheros al repositorio"
cp /etc/xen/* /git/etc/xen/
cp /etc/default/grub /git/etc/default/

# SPECweb
cp /home/SPECweb2005/wafgen/unix/support_image_props.rc /git/ /git/SPECweb/wafgen/unix/
cp /home/SPECweb2005/wafgen/unix/support_downloads_props.rc /git/SPECweb/wafgen/unix/
cp /home/SPECweb2005/Test.* /git/SPECweb/
#cp ./gitrun.sh /git/

cd /git
git init
git add *
git commit -a -m "$comentario"
git push
