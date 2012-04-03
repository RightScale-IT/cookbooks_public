maintainer       "Chris Fordham"
maintainer_email "chris.fordham@rightscale.com"
license          "Apache 2.0"
description      "Installs/Configures freeswitch"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"

supports "ubuntu"

depends "apt"
depends "build-essential"

recipe "freeswitch:default", "Installs and configures Freeswitch from Apt."
recipe "freeswitch::install", "Installs Freeswitch from Apt."
recipe "freeswitch::configure", "Configures Freeswitch."
recipe "freeswitch::install_drivers_ppa_apt", "Installs the PPA Apt repository for ppa:freeswitch-drivers/freeswitch-nightly-drivers."
recipe "freeswitch::install_from_package", "Installs Freeswitch by package from Apt."
recipe "freeswitch::install_from_source", "Installs Freeswitch from source."