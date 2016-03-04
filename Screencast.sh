#!/bin/sh
## Author: Matthew Allan <info@matthew-allan.co.uk>
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.

## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
## GNU General Public License for more details.

## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

ffmpeg -f alsa -ac 2 -i hw:2,0 -f x11grab -r 60 -s 1920x1080 -i :0.0 -acodec pcm_s16le -vcodec libx264 -preset ultrafast -crf 0 -y Screencast.mkv
#mplayer -tv driver=v4l2:width=320:height=240:device=­/dev/video1 -vo xv tv:// -geometry "99%:90%" -noborder -ontop
#mplayer -tv driver=v4l2:width=320:height=240: -vo xv tv:// -geometry "99%:90%" -noborder -ontop
