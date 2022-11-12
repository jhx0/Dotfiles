#!/usr/bin/env bash

PROJECTS=(
    'jhx0/debian-desktop-playbook.git'
    'jhx0/archbox.git'
    'jhx0/docker-slackware-apache.git'
    'jhx0/docker-centos-tor.git'
    'jhx0/deb-mkdesk.git'
    'jhx0/jhx0.github.com.git'
    'jhx0/sdm.git'
    'jhx0/openbsd-changelog.git'
    'jhx0/slackdep.git'
    'jhx0/Slackware64-Minimal.git'
    'jhx0/portupdate.git'
    'jhx0/wpversion'
    'jhx0/statusd.git'
    'jhx0/indexd.git'
    'jhx0/kernel.git'
    'jhx0/pkgsearch.git'
    'jhx0/playbook-collection.git'
    'jhx0/docker-archlinux-squid.git'
    'jhx0/startpage.git'
	'jhx0/debian-base-server-playbook.git'
	'jhx0/shell-scripts.git'
	'jhx0/wakeonlan.git'
	'jhx0/bsdfetch.git'
	'jhx0/booky.git'
	'jhx0/Dotfiles.git'
	'jhx0/docker-public-ip.git'
	'jhx0/openbsd-desktop-playbook'
)


projects_dir="$HOME/projects"

if ! [ -x "$(command -v git)" ]; then
    echo "Git not installed, exiting."
    exit 1
fi

mkdir -p $projects_dir; cd $projects_dir

echo "-- [START]: Cloning projects to $projects_dir"

for p in ${PROJECTS[@]}; do
    git clone "git@github.com:${p}"
done

echo "-- [OK]: Have a nice day!"

exit 0
