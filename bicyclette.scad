//cadre avant
translate([0,-68.5,50]) rotate([-95,0,0]) color("red") cylinder(r=2, h=69,$fn=20);
translate([0,-10,0])rotate([-13,0,0])  color("red") cylinder(r=2,h=52,$fn=100);
translate([0,-10,0])rotate([55,0,0])  color("red") cylinder(r=2,h=72.9,$fn=100);
translate([0,-72,33])rotate([-13,0,0])color("red") cylinder(r=2,h=25,$fn=100);

//cadre bas arrière
translate([0,-10,0]) rotate([-90,0,-20]) color("red") cylinder(r=1,h=15,$fn=100);
translate([0,-10,0]) rotate([-90,0,20]) color("red") cylinder(r=1,h=15,$fn=100);
translate([5,3.5,0])rotate([-90,0,0])color("red") cylinder(r=1,h=29,$fn=100);
translate([-5,3.5,0])rotate([-90,0,0])color("red") cylinder(r=1,h=29,$fn=100);

//cadre haut arrière
translate([5,10,30]) rotate([36,-17,0]) color("red") cylinder(r=1,h=18,$fn=100);
translate([-5.1,10,30]) rotate([36,17,0]) color("red") cylinder(r=1,h=18,$fn=100);
translate([-5,32,0])rotate([36,0,0])color("red") cylinder(r=1,h=38,$fn=100);
translate([5.1,32,0])rotate([36,0,0])color("red") cylinder(r=1,h=38,$fn=100);

//guidon fourse
translate([0,-66,58]) rotate([-13,0,0])  color("gray") cylinder(r=2);//blond
translate([0,-67,55])rotate([-13,0,0])color("gray") cylinder(r=1,h=10);
translate([0,-66,59])rotate([-13,0,0])color("gray") cylinder(r=2,h=5,$fn=50);
translate([0,-66.3,60.5])rotate([50,0,0])color("gray") cylinder(r=2,h=8,$fn=100);

//guidon
translate([-20,-71.8,65.1])rotate([0,90,0])color("gray")cylinder(r=2,h=40,$fn=100);

//style guidon
translate([-20,-71.8,65.1])rotate([0,90,0])color("Black")cylinder(r=2.3,h=6,$fn=10);
translate([17,-71.8,65.1])rotate([0,90,0])color("Black") cylinder(r=2.3,h=6,$fn=10);

//fourse 
translate([-0.1,-72,34]) rotate([-13,0,0])  color("gray") cylinder(r=2.5,h=2);//blond
translate([5.5,-74,27]) rotate([-13,-40,0])color("red") cylinder(r=2,h=8,$fn=100);
translate([-5.5,-74,27]) rotate([-13,40,0])color("red") cylinder(r=2,h=8,$fn=100);
translate([5,-80.5,-1]) rotate([-13,0,0]) color("red") cylinder(r=2,h=30,$fn=100);
translate([-5,-80.5,-1]) rotate([-13,0,0]) color("red") cylinder(r=2,h=30,$fn=100);

//pedale
translate([-2,-10,0])rotate([0,90,0])linear_extrude(height=4)color("gray")circle(r=1.8,$fn=100);
translate([2,-10,0]) rotate([0,90,0]) color("gray") circle(r=2);
translate([-2,-10,0]) rotate([0,90,0]) color("gray") circle(r=2);
translate([-6,-10,0]) rotate([0,90,0]) color("gray") cylinder(r=1,h=10);
translate([-4,-10,0]) rotate([0,90,0]) color("gray") cylinder(r=6,$fn=50);

translate([-6,-10.5,0])color("gray")cube([1,1,12]);
translate([3,-10.5,0-12])color("gray")cube([1,1,12]);
translate([3,-11.3,-12])color("gray")cube([3,2.5,1]);
translate([-8,-11.3,12])color("gray")cube([3,2.5,1]);

//Blond pneu arrière
    difference(){
translate([4.1,29,2])rotate([0,90,0]) color("gray")cylinder(r=2,h=2);
translate([4,29,2])rotate([0,90,0])color("gray") cylinder(r=0.7,h=5);}
    difference(){
  translate([-6,29,2])rotate([0,90,0])color("gray")cylinder(r=2,h=2);
   translate([-6.5,29,2])rotate([0,90,0])color("gray")cylinder(r=0.7,h=4);}



//Blond pneu avant
difference(){
translate([4.5,-80.5,-2])rotate([0,90,0])color("gray") cylinder(r=2);
translate([4,-80.5,-2])rotate([0,90,0])color("gray") cylinder(r=0.7,h=2);}
    difference(){
  translate([-5.5,-80.5,-2])rotate([0,90,0])color("gray")cylinder(r=2);
   translate([-6,-80.5,-2])rotate([0,90,0])color("gray")cylinder(r=0.7,h=2);}

//laselle
    translate([0,1.5,50.2])rotate([-13,0,0])color("gray")circle(r=2.5);
   translate([0,1.5,50])rotate([-13,0,0])color("gray") linear_extrude(height=7)circle(r=1.5);
    
   module selle(){
    scale([3, 1, 2]) color("Black") sphere(d=10,$fn=100);
}
   translate([0,1.5,60]) rotate([90
,0,90]) selle();
   
 
//pneu
module pneu(diametre=28, pneudiametre=4, rayon=30) {
    difference(){
        union(){// rayon
            for (angle = [0 : 360/rayon : 360])
                rotate([0,0,angle]) // rotation du rayon
                translate([0,diametre/2,0]) // translation au diamètre
                cube([0.1, diametre, 0.1], center=true); // construire le rayon
            // centre rayon
            circle(r = 3);
        }
        // creux au centre
        circle(r =2);
        }        
    // tire
    rotate_extrude()
    translate([diametre, 0, 0])
    circle(d=pneudiametre);
    }
  translate([0,29.2,2]) rotate([0,90,0]) color("Black") pneu();
  translate([0,-80.5,-2]) color("Black") rotate([0,90,0]) pneu();
    
    //rouleau
module rouleau(){
difference(){
        rotate([0,90,0]) color("gray")cylinder(r=2,h=8,$fn=100);
translate([-2,0,0]) rotate([0,90,0]) cylinder(r=1,h=12,$fn=100);}

difference(){
    rotate([0,90,0]) color("gray")circle(r=2.5);
    translate([-2,0,0]) rotate([0,90,0]) cylinder(r=1,h=9,$fn=100);
}

difference(){
 translate([8,0,0]) rotate([0,90,0]) color("gray") circle(r=2.5);
translate([-2,0,0]) rotate([0,90,0]) cylinder(r=1,h=12,$fn=100);}
}
translate([-4,29.2,2])rouleau();
translate([-4,-80,-2]) color("gray") rouleau();
translate([-2,30,2.2]) rotate([0,90,0]) color("gray")  cylinder(r=5);
translate([-3,30,2.2]) rotate([0,90,0]) color("gray") cylinder(r=4);
translate([-4,30,2.2]) rotate([0,90,0]) color("gray") cylinder(r=3);
  

//blond pneu 
module blond(){ 
rotate([0,90,0]) cylinder(r=1,h=13,$fn=100);
translate([0,0,0]) rotate([0,90,0]) color("gray") cylinder(r=2);
translate([13,0,0]) rotate([0,90,0]) color("gray") cylinder(r=2);}
translate([-7,-80,-2]) color("gray")  blond();
translate([-7,29.2,2]) color("gray") blond();

