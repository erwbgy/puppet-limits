# puppet-limits

Puppet module to set entries in /etc/security/limits.conf

## limits

The recommended usage is to place the configuration under a limits hash in hiera and
just include the limits module in your puppet configuration:

    include limits

Example hiera config:

    limits:
      '*':
        item: 'nofile'
        soft: '2048'
        hard: '8192'
      '@mygroup':
        item: 'nproc'
        soft: '20'
        hard: '50'
      
This example creates the following entries in /etc/security/limits.conf:

    * nofile soft 2048
    * nofile hard 8192
    @mygroup nproc soft 20
    @mygroup nproc hard 50

replacing any existing items in the same domain.

### Parameters

Each entry title is the domain name - for example '*' for all users, '@wheel'
for members of the wheel group, 'root' for the root user etc.

*item*: one of: 'core', 'data', 'fsize', 'memlock', 'nofile', 'rss', 'stack',
'cpu', 'nproc', 'as', 'maxlogins', 'maxsyslogins', 'priority', 'locks',
'sigpending', 'msqqueue', 'nice', 'rtprio'. Other items are accepted but will
generate warnings to avoid unhelpful augeas errors with typos - for example
'nofiles' instead of 'nofile'.

*soft*: the item's soft limit. Optional.

*hard*: the item's hard limit. Optional.

See the limits.conf(5) man page for more information.

Implementation based on https://projects.puppetlabs.com/projects/puppet/wiki/Puppet_Augeas

