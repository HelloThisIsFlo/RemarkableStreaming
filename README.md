# Remarkable Streaming 

## 1. Install deps
The version of rMview made to work with a VNC server can be found at the `vnc` branch of this repository.
1. Install the Twisted dependency with pipenv
      
       pipenv install

2. Install [rM-vnc-server](https://github.com/peter-sa/rM-vnc-server) on the remarkable

    - download the prebuilt binaries of [rM-vnc-server](https://github.com/peter-sa/rM-vnc-server/releases/download/v0.0.1/rM-vnc-server) and [mxc_epdc_fb_damage](https://github.com/peter-sa/mxc_epdc_fb_damage/releases/download/v0.0.1/mxc_epdc_fb_damage.ko)
    - copy them on the remarkable

          scp rM-vnc-server remarkable:.
          scp mxc_epdc_fb_damage.ko remarkable:.
          ssh remarkable chmod +x rM-vnc-server

## 1. 
