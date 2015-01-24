# inhumantsar/www

This is a basic EL7/Apache/PHP-FPM Docker image. It could be used on its own by 
mounting a host volume at /var/www but it's meant to be a model for more 
complex setups.

## Notable Changes

### Apache                                                                    
  - "userdir" and "welcome" configurations are removed                    
  - worker mpm has been enabled, had problems with event. YMMV.           
  - Set it up with mod_fcgid
                                                                          
### PHP-FPM                                                                   
  - Upped log level to warning
  - Set daemonize to no (duh)
  - Set listen to socket path
  - Set user/group to apache
  - Enabled ping page (/ping)
                                                                          
### Supervisord
  - Disabled all supervisorctl bits and bobs including HTTP listeners.    
  - Set to drop privs to user 'apache'                                    
  - nodaemon is enabled (duh)                                             
  - log, pid paths configured sanely: /var/log and /run/supervisord.pid   


