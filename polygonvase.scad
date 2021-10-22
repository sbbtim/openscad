cylinder(d=51,h=1.2,$fn=12);

for (i = [0:5:100]){
    echo(i);
    a=sin(3.5*(i-5))*30;
    b=sin(3.5*i)*30;
    translate([0,0,i])rotate([0,0,3*i])polylayer(60+a,60+b,h=5);
    }
    

module polylayer(d=10,d2=12,h=2,fn=12){
        linear_extrude(h,twist=15,scale=d2/d){
                difference(){
                    circle(d=d+1,$fn=fn);
                    circle(d=d,$fn=fn);
                }
            }
    }
    
