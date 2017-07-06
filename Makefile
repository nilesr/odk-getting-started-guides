folders := odk1_setup odk2_setup
all:
	fish -c "kopen"
	fish -c "ssh niles@niles.xyz sudo rm -rf odk1_setup /var/www/niles.xyz/odk1_setup"
	fish -c "ssh niles@niles.xyz mkdir odk1_setup"
	fish -c "echo put -r odk1_setup | sftp niles@niles.xyz"
	fish -c "ssh niles@niles.xyz sudo mv odk1_setup /var/www/niles.xyz"
	#
	fish -c "ssh niles@niles.xyz sudo rm -rf odk2_setup /var/www/niles.xyz/odk2_setup"
	fish -c "ssh niles@niles.xyz mkdir odk2_setup"
	fish -c "echo put -r odk2_setup | sftp niles@niles.xyz"
	fish -c "ssh niles@niles.xyz sudo mv odk2_setup /var/www/niles.xyz"
