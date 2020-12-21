# mcpath-freebsd Mojang wants delete mojang account, launcher still sin't updated and creates '.minecraft' dir instead of 'minecraft' dir which is better for FreeBSD.


# Download
type as root: 'curl -L -o /tmp/install-path.sh https://raw.githubusercontent.com/glowiak/mcpath-freebsd/master/path.sh | sh'

# Removing
Remove minecraft-client package

# Restoring orginal package:
Type as root: "pkg remove minecraft-client && pkg install minecraft-client" - reinstall package.
Why reinstall? pkgng will delete pathed package and install standard.
