# Remarkable Streaming

## 1. Install deps

The version of rMview made to work with a VNC server can be found at the `vnc` branch of this repository.

1.  Install the project

    ```bash
    ./install.sh
    ```

2.  Install [rM-vnc-server](https://github.com/peter-sa/rM-vnc-server) on the remarkable

    - download the prebuilt binaries of [rM-vnc-server](https://github.com/peter-sa/rM-vnc-server/releases/download/v0.0.1/rM-vnc-server) and [mxc_epdc_fb_damage](https://github.com/peter-sa/mxc_epdc_fb_damage/releases/download/v0.0.1/mxc_epdc_fb_damage.ko)
    - copy them on the remarkable

          scp rM-vnc-server remarkable:.
          scp mxc_epdc_fb_damage.ko remarkable:.
          ssh remarkable chmod +x rM-vnc-server

## 2. Run

1. Configure by tweaking the `rmview.json` config

   ```js
   {
     // all settings are optional, comments not allowed
     "ssh": {
       "address": "10.11.99.1", // works over WiFi too!
       "username": "root",
       "key": "~/.ssh/id_rsa_remarkable",
       // alternatively to key, "password": "****" is supported
       "timeout": 1 // in seconds
     },
     "orientation": "portrait", // auto for auto-detect, default: landscape
     "pen_size": 10, // set to 0 to disable
     "pen_color": "red",
     "pen_trail": 1000, // set to 0 to disable, default: 200
     "background_color": "black", // default: white
     "fetch_frame_delay": 0.03, // sleep 0.03s on remarkable before fetching new frame (default is no delay)
     "lz4_path_on_remarkable": "/usr/opt/lz4", // default: $HOME/lz4
     "hide_pen_on_press": false // hides pointer when pen touches display, default: true
   }
   ```

2. Start streaming

   ```bash
   ./start.sh
   ```
