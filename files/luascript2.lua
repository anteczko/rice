--this is a lua script for use in conky
require 'cairo'

function conky_main()
    if conky_window == nil then
        return
    end
    local cs = cairo_xlib_surface_create(conky_window.display,
                                         conky_window.drawable,
                                         conky_window.visual,
                                         conky_window.width,
                                         conky_window.height)
    cr = cairo_create(cs)
    local updates=tonumber(conky_parse('${updates}'))
    if updates>5 then
        print ("hello world")
    end
    
    line_width=32
line_cap=CAIRO_LINE_CAP_BUTT
red,green,blue,alpha=0,0,0,1
startx=0
starty=line_width/2
endx=1000
endy=starty
----------------------------
cairo_set_line_width (cr,line_width)
cairo_set_line_cap  (cr, line_cap)
cairo_set_source_rgba (cr,red,green,blue,alpha)
cairo_move_to (cr,startx,starty)
cairo_line_to (cr,endx,endy)
cairo_stroke (cr)

    cairo_destroy(cr)
    cairo_surface_destroy(cs)
    cr=nil
end
--font = 'DejaVu Sans Mono:size=12',
