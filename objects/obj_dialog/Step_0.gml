var camera = view_camera[view_current];
var camera_x = camera_get_view_x(camera);
var camera_y = camera_get_view_y(camera);
var camera_height = camera_get_view_height(camera);

var cambutt = camera_y + camera_height;

x = camera_x;
y = cambutt;