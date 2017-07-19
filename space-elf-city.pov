#include "textures.inc"
#include "stars.inc"
#include "colors.inc"
#include "glass.inc"

camera {
    angle 45
    location <10, 15, 50>
    look_at <0, 0, 0>
}


#declare Main_Disk =
sor {
    21
    <0.0, 0.5>,
    <10, 0.0>,
    <4, 2.0>,
    <2.5, 2.25>,
    <2, 2.5>,
    <1.5, 3.0>,
    <1.25, 3.5>,
    <1.125, 4.0>,
    <1, 4.5>,
    <0.75, 5.0>,
    <0.5, 5.5>,
    <0.45, 6.0>,
    <0.40, 6.5>,
    <0.35, 7.0>,
    <0.30, 7.5>,
    <0.25, 8.0>,
    <0.20, 8.5>,
    <0.15, 9.0>,
    <0.10, 9.5>,
    <0.05, 10.0>,
    <0.0, 10.5>
    texture { PinkAlabaster }
    rotate <0, 0, 180>
    scale <1.5, 1.5, 1.5>
}

object { Main_Disk }

sky_sphere {
    pigment {
        gradient y
        color_map {
            [0.000 0.002 color rgb <0.0, 0.2, 0.0> color rgb <0.1, 0.2, 0.0>]
            [0.002 0.200 color rgb <0.20, 0.20, 0.30> color rgb <0.30, 0.30, 0.40>]            
        }
        scale 2
        translate -1
    }
    pigment {
        bozo
        turbulence 1
        octaves 10
        omega 0.7
        lambda 2
        color_map {
            [0.0 0.1 color rgb <0.05, 0.00, 0.00> color rgb <0.00, 0.00, 0.00>]
            [0.1 0.5 color rgb <0.15, 0.05, 0.05> color rgbt <0, 0, 0, 0>]
            [0.5 1.0 color rgbt <0, 0, 0, 0> color rgbt < 0, 0, 0, 0>]
        }
        scale <0.2, 0.5, 0.2>
    }
    rotate -135*x
}

blob {
    threshold .55
    sphere { <6.5, 0, 0>, 5, 1 texture { Starfield } }
    sphere {
        <0, 0, 0>, 2, 1
        texture { PinkAlabaster finish {ambient .8 diffuse .6} }
        scale<3, 0.5, 0>
    }
    rotate<0, 0, 90>
}


sphere{
        <0, 0, 0> 15
        texture { Glass }
        hollow
}    


blob {
    threshold .55
    sphere { <6.5, 0, 0>, 5, 1 texture { White_Marble } }
    sphere {
        <0, 0, 0>, 2, 1
        texture { PinkAlabaster finish {ambient .8 diffuse .6} }
        scale<3, 0.5, 0>
    }
    rotate<0, 0, 90>
    scale<.5, .5, .5>
    translate<7.5,0,5>
}


blob {
    threshold .55
    sphere { <6.5, 0, 0>, 5, 1 texture { Blue_Agate } }
    sphere {
        <0, 0, 0>, 2, 1
        texture { PinkAlabaster finish {ambient .8 diffuse .6} }
        scale<3, 0.5, 0>
    }
    rotate<0, 0, 90>
    scale<.25, .25, .25>
    translate<3,0,7>
}

blob {
    threshold .55
    sphere { <6.5, 0, 0>, 5, 1 texture { PinkAlabaster } }
    sphere {
        <0, 0, 0>, 2, 1
        texture { PinkAlabaster finish {ambient .8 diffuse .6} }
        scale<3, 0.5, 0>
    }
    rotate<0, 0, 90>
    scale<.25, .25, .25>
    translate<9,0,5.5>
}

blob {
    threshold .55
    sphere { <6.5, 0, 0>, 5, 1 texture { White_Marble } }
    sphere {
        <0, 0, 0>, 2, 1
        texture { PinkAlabaster finish {ambient .8 diffuse .6} }
        scale<3, 0.5, 0>
    }
    rotate<0, 0, 90>
    scale<.15, .15, .15>
    translate<7,0,10>
}

blob {
    threshold .55
    sphere { <6.5, 0, 0>, 5, 1 texture { Red_Marble } }
    sphere {
        <0, 0, 0>, 2, 1
        texture { PinkAlabaster finish {ambient .8 diffuse .6} }
        scale<3, 0.5, 0>
    }
    rotate<0, 0, 90>
    scale<.15, .15, .15>
    translate<-9,0,7>
}

blob {
    threshold .55
    sphere { <6.5, 0, 0>, 5, 1 texture { White_Marble } }
    sphere {
        <0, 0, 0>, 2, 1
        texture { PinkAlabaster finish {ambient .8 diffuse .6} }
        scale<3, 0.5, 0>
    }
    rotate<0, 0, 90>
    scale<.45, .45, .45>
    translate<-8,0,7>
}

blob {
    threshold .55
    sphere { <6.5, 0, 0>, 5, 1 texture { PinkAlabaster } }
    sphere {
        <0, 0, 0>, 2, 1
        texture { PinkAlabaster finish {ambient .8 diffuse .6} }
        scale<3, 0.5, 0>
    }
    rotate<0, 0, 90>
    scale<.75, .75, .75>
    translate<7,0,-5>
}

blob {
    threshold .55
    sphere { <6.5, 0, 0>, 5, 1 texture { Blue_Agate } }
    sphere {
        <0, 0, 0>, 2, 1
        texture { PinkAlabaster finish {ambient .8 diffuse .6} }
        scale<3, 0.5, 0>
    }
    rotate<0, 0, 90>
    scale<.65, .65, .65>
    translate<-4,0,-5>
}

blob {
    threshold .55
    sphere { <6.5, 0, 0>, 5, 1 texture { White_Marble } }
    sphere {
        <0, 0, 0>, 2, 1
        texture { PinkAlabaster finish {ambient .8 diffuse .6} }
        scale<3, 0.5, 0>
    }
    rotate<0, 0, 90>
    scale<.35, .35, .35>
    translate<-8,0,-5>
}

blob {
    threshold .55
    sphere { <6.5, 0, 0>, 5, 1 texture { PinkAlabaster } }
    sphere {
        <0, 0, 0>, 2, 1
        texture { PinkAlabaster finish {ambient .8 diffuse .6} }
        scale<3, 0.5, 0>
    }
    rotate<0, 0, 90>
    scale<.45, .45, .45>
    translate<3,0,-6>
}

blob {
    threshold .55
    sphere { <6.5, 0, 0>, 5, 1 texture { White_Marble } }
    sphere {
        <0, 0, 0>, 2, 1
        texture { PinkAlabaster finish {ambient .8 diffuse .6} }
        scale<3, 0.5, 0>
    }
    rotate<0, 0, 90>
    scale<.15, .15, .15>
    translate<9,0,-10>
}

blob {
    threshold .55
    sphere { <6.5, 0, 0>, 5, 1 texture { Blue_Agate } }
    sphere {
        <0, 0, 0>, 2, 1
        texture { PinkAlabaster finish {ambient .8 diffuse .6} }
        scale<3, 0.5, 0>
    }
    rotate<0, 0, 90>
    scale<.35, .35, .35>
    translate<10,0,3>
}

blob {
    threshold .55
    sphere { <6.5, 0, 0>, 5, 1 texture { Red_Marble } }
    sphere {
        <0, 0, 0>, 2, 1
        texture { PinkAlabaster finish {ambient .8 diffuse .6} }
        scale<3, 0.5, 0>
    }
    rotate<0, 0, 90>
    scale<.55, .55, .55>
    translate<-1,0,10>
}

blob {
    threshold .55
    sphere { <6.5, 0, 0>, 5, 1 texture { Blue_Agate } }
    sphere {
        <0, 0, 0>, 2, 1
        texture { PinkAlabaster finish {ambient .8 diffuse .6} }
        scale<3, 0.5, 0>
    }
    rotate<0, 0, 90>
    scale<.25, .25, .25>
    translate<-6,0,10>
}

#declare Street_Lamp_Shape = blob {
    threshold .55
    sphere { <6.5, 0, 0>, 5, 1 texture { Lightning2 } }
    sphere {
        <0, 0, 0>, 2, 1
        texture { PinkAlabaster }
        scale<3, 0.5, 0>
    }
    rotate<0, 0, 90>
    scale<.05, .05, .05>
    finish {ambient .8 diffuse .6} 
}
#declare Street_Lamp =
light_source {
    <0, 0, 0>
    color White
    area_light
    <0, 0, 0><0, 1, 0>
    1, 10
    looks_like { Street_Lamp_Shape }
    jitter
}

object{ Street_Lamp translate<1, 0, 0> }

object{ Street_Lamp translate<2, 0, 1> }

object{ Street_Lamp translate<3, 0, 2> }

object{ Street_Lamp translate<4, 0, 3> }    

object{ Street_Lamp translate<5, 0, 4> }

object{ Street_Lamp translate<6, 0, 5> }

object{ Street_Lamp translate<7, 0, 6> }

object{ Street_Lamp translate<8, 0, 7> }

object{ Street_Lamp translate<9, 0, 8> }
 

sphere{
    <11, -0.5, 10>, 1
    texture { Red_Marble }
}

cylinder{
    <11, -0.5, 10>,
    <15, -0.5, 15>, 0.25
    open
    texture { Lightning2 }
}

sphere{
    <15, -0.5, 15>, 1.5
    texture { Lightning1 }
    interior { ior 1.5 }
    hollow
    finish { ambient 0 diffuse 0}
}    
#declare Sun_Sphere = sphere{
    <0, 0, 0>, 1.25
    pigment { rgbt 1 }    
    hollow
    finish { ambient 0 diffuse 0 }
    interior
    { media
        { emission color rgb<1.0, 0.75, 0.1> * 1.75
          intervals 9
          samples 1, 20
          confidence 0.9999
          variance 1/100
          density
          { crackle
            ramp_wave
            turbulence 0.15
            color_map
            {
            [0 rgb 0]
            [0.4 rgb<1, 0, 0>]
            [0.8 rgb<1, 1, 0>]
            [1 rgb 1]
            }
          }
          scale<1, 2.5, 1>
        }
    }
      
}

object{ Sun_Sphere translate<15, -0.5, 15>}

light_source{
    <0, 0, 0>
    color rgb <0.8, 0.5, 0.2> * 10
    adaptive 3
    jitter
    translate<15, -0.5, 15>
}

cylinder{
    <0, -0.5, 0><11, -0.5, 10>, 0.75
    texture { Red_Marble }
}

#declare Pond_Sphere =
sphere{
    <0, 0, 0>, 2
    texture { Glass }
    hollow
}    

#declare Pond =
    intersection{
    object{ Pond_Sphere }
    box{<-2, 0, -2>,<2, 0.1, 2>}
}


#declare Hydro_Sphere = union{
object {Pond_Sphere}
object {Pond texture{ Water } scale .999}
}

object {Hydro_Sphere translate<-4, 0, 4> scale<1.25, 1, 1.25>}

sphere{
    <-5, -0.5, 14>, 1
    texture {PinkAlabaster}
}    
cylinder{
    <-5, -0.5, 14>,<-5, -0.5, 24>, 0.25
    texture { White_Marble }
}

sphere{
    <-5, -0.5, 24>, 1.5
    texture { Polished_Chrome }
}

cylinder{
    <-5, -0.5, 24>,<-5, -0.5, 26>, 0.25
    texture { Polished_Chrome }
}

cylinder{
    <-5, -0.5, 24>,<-3, -0.5, 24>, 0.25
    texture { Polished_Chrome }
}            

object{Street_Lamp translate<-5,-.25, 25.75>}
object{Street_Lamp rotate<0, 0, 180> translate<-5,-.75, 25.75> }

object{Street_Lamp translate<-3, -.25, 24>}
object{Street_Lamp rotate<0, 0, 180> translate<-3, -.75, 24>}

object{Street_Lamp rotate<0, 0, 180> translate<-5, 2, 5>}

cylinder{
    <0, -0.5, 0>,
    <-5, -0.5, 14>, 0.70
    texture{ White_Marble }
}

cylinder{
    <0, -0.5, 0>,
    <4, -0.5, 4>, 0.75
    texture{ Red_Marble }
    translate<0, 0, -11>
}

cylinder{
    <0, -0.5, 0>,
    <4, -0.5, 1>, 0.75
    texture{ White_Marble }
    translate<1, 0, 11>
}                          