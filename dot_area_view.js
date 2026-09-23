/* Top-down proxy. Clockwise light azimuth: x right, y front/up. */
autowatch=1;inlets=1;outlets=1;
mgraphics.init();mgraphics.relative_coords=0;mgraphics.autofill=0;
var data=[35,1.4,0.6,0.8,0,-0.65,0.4,0.3,4];
var positions=[[0,2,0],[0,2,0],[0,2,0],[0,2,0]];
var ink=[0.86,0.9,0.94,1],muted=[0.5,0.6,0.67,1],mint=[0.3,0.85,0.72,1],gold=[1,0.79,0.37,1],violet=[0.65,0.6,1,1];
function scene(){var a=arrayfromargs(arguments);data=a.slice(0,9);for(var i=0;i<4;i++)positions[i]=a.slice(9+i*3,12+i*3);mgraphics.redraw();}
function color(c){mgraphics.set_source_rgba(c);}
function line(x,y,u,v,c,w){color(c);mgraphics.set_line_width(w||1);mgraphics.move_to(x,y);mgraphics.line_to(u,v);mgraphics.stroke();}
function circle(x,y,r,c,fill){color(c);mgraphics.ellipse(x-r,y-r,r*2,r*2);if(fill)mgraphics.fill();else mgraphics.stroke();}
function text(t,x,y,c,size){color(c);mgraphics.select_font_face('Arial');mgraphics.set_font_size(size||11);mgraphics.move_to(x,y);mgraphics.show_text(t);}
function paint(){
    var w=box.rect[2]-box.rect[0],h=box.rect[3]-box.rect[1],cx=w*0.5,cy=h*0.52;
    color([0.075,0.105,0.13,1]);mgraphics.rectangle(0,0,w,h);mgraphics.fill();
    text('TOP VIEW  /  SCHEMATIC',18,24,muted,11);
    text('Drag the light anywhere in the diagram',18,h-15,ink,12);
    // Independent diagram scale: acoustic metres are compressed to fit.
    var r=Math.min(w*0.29,h*0.34),a=data[0]*Math.PI/180;
    var lr=r*(0.35+0.65*(data[1]-0.4)/2.6);
    for(var k=1;k<=3;k++)circle(cx,cy,r*k/3,[0.17,0.22,0.26,1],false);
    line(cx-r-8,cy,cx+r+8,cy,[0.2,0.25,0.29,1]);
    line(cx,cy-r-8,cx,cy+r+8,[0.2,0.25,0.29,1]);
    text('+Y / FRONT',cx-32,48,muted,10);
    // Core trapezoidal base and top, shape only (not a surveyed scale).
    color([0.35,0.61,0.69,0.7]);mgraphics.set_line_width(1.5);
    var base=[[-81,-40],[81,-40],[42,40],[-42,40]],top=[[-35,-16],[35,-16],[18,16],[-18,16]];
    for(var ring=0;ring<2;ring++){var polygon=ring?top:base;mgraphics.move_to(cx+polygon[0][0],cy+polygon[0][1]);for(var vertex=1;vertex<4;vertex++)mgraphics.line_to(cx+polygon[vertex][0],cy+polygon[vertex][1]);mgraphics.close_path();mgraphics.stroke();}
    for(var edge=0;edge<4;edge++)line(cx+base[edge][0],cy+base[edge][1],cx+top[edge][0],cy+top[edge][1],[0.35,0.61,0.69,0.7],1);
    text('ACRYLIC / TRAPEZOID',cx-82,cy-53,muted,10);
    var sx=-Math.sin(a)*r*0.83,sy=Math.cos(a)*r*0.83;
    var breadth=8+data[6]*26;
    color([0.65,0.6,1,0.10+data[7]*0.18]);
    mgraphics.move_to(cx,cy);mgraphics.line_to(cx+sx+Math.cos(a)*breadth,cy+sy+Math.sin(a)*breadth);
    mgraphics.line_to(cx+sx-Math.cos(a)*breadth,cy+sy-Math.sin(a)*breadth);mgraphics.close_path();mgraphics.fill();
    line(cx,cy,cx+sx,cy+sy,violet,2);
    circle(cx+sx,cy+sy,4,violet,true);
    // Irregular stone polygon.
    color([0.5,0.55,0.57,1]);mgraphics.move_to(cx-23,cy+6);
    mgraphics.line_to(cx-18,cy-13);mgraphics.line_to(cx-4,cy-20);mgraphics.line_to(cx+17,cy-12);
    mgraphics.line_to(cx+24,cy+7);mgraphics.line_to(cx+11,cy+16);mgraphics.line_to(cx-12,cy+17);mgraphics.close_path();mgraphics.fill();
    circle(cx,cy,3,ink,true);
    text('STONE',cx-18,cy+33,ink,10);
    var lx=cx+Math.sin(a)*lr,ly=cy-Math.cos(a)*lr;
    line(lx,ly,cx,cy,gold,1.5);circle(lx,ly,13,[1,0.79,0.37,0.12+data[3]*0.12],true);circle(lx,ly,6,gold,true);
    text('LIGHT / CH17 '+Math.round(data[0])+'°',lx+13,ly-10,gold,11);
    for(var i=0;i<data[8];i++){
        var p=positions[i],d=Math.sqrt(p[0]*p[0]+p[1]*p[1]),s=r*0.84/(Math.max(2.7,d));
        var px=cx+p[0]*s,py=cy-p[1]*s,c=i===2?gold:(i===3?violet:mint);
        circle(px,py,6,c,false);text(''+(i+1),px+8,py+4,c,10);
    }
    // Co-located upper/lower wall pairs are labelled together in top view.
    var speakers=[['CH5 / 7',cx-120,62],['CH6 / 8',cx+65,62],['CH1 / 3',cx-120,h-68],['CH2 / 4',cx+65,h-68],['CH13 / 15',40,105],['CH14 / 16',40,h-105],['CH9 / 11',w-135,105],['CH10 / 12',w-135,h-105]];
    for(i=0;i<speakers.length;i++){var v=speakers[i];circle(v[1]+4,v[2]+4,4,muted,false);text(v[0],v[1]+12,v[2]+7,muted,10);}
    text('SUB1',w-73,h-49,muted,10);
    text('17.1 Core proposal · diagram only',18,h-38,muted,10);
}
function move(x,y){var w=box.rect[2]-box.rect[0],h=box.rect[3]-box.rect[1];var dx=x-w*0.5,dy=h*0.52-y;var r=Math.min(w*0.29,h*0.34);var a=(Math.atan2(dx,dy)*180/Math.PI+360)%360;var d=Math.max(0.4,Math.min(3,0.4+2.6*(Math.sqrt(dx*dx+dy*dy)/r-0.35)/0.65));outlet(0,'lightxy',a,d);}
function onclick(x,y){move(x,y);}
function ondrag(x,y,button){if(button)move(x,y);}
function onresize(){mgraphics.redraw();}
