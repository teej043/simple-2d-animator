var f;
f = argument0;
if (shape == 0){
    draw_primitive_begin(pr_trianglefan);
        draw_vertex_color(v1x[| f], v1y[| f], shapeFill, 1);
        draw_vertex_color(v2x[| f], v2y[| f], shapeFill, 1);
        draw_vertex_color(v3x[| f], v3y[| f], shapeFill, 1);
        draw_vertex_color(v4x[| f], v4y[| f], shapeFill, 1);
    draw_primitive_end() ;
}
