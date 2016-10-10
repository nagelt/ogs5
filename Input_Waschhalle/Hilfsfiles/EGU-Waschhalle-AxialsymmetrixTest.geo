//Achsialsymmetrietest
zementKern=0.01;
aussen=0.01;
//innen=0.002;
innen=0.01;
//InnererKonstrukt
Point(1) = {0.016, 0, 0, innen};
Point(2) = {0.016, 0, 2, innen};
Point(3) = {0.051, 0, 2, innen};
Point(4) = {0.051, 0, 0, innen};
Line(1) = {1, 4};
Line(2) = {4, 3};
Line(3) = {3, 2};
Line(4) = {2, 1};
//Achse)
Point(5) = {0.0, 0, 0, innen};
Point(6) = {0.0, 0, 2, innen};
Line(5) = {5, 6};
Line Loop(6) = {4, 1, 2, 3};
Plane Surface(7) = {6};
Coherence;
Physical Surface(8) = {7};
