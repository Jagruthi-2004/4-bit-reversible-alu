OPENQASM 2.0;
include "qelib1.inc";

qreg q[29];
creg c[8];
// input 

x q[0];
x q[1];
x q[3];
x q[5];
x q[7];
reset q[8];
reset q[9];
reset q[10];
reset q[11];
reset q[12];
reset q[13];
reset q[14];
reset q[15];

// AND GATE
x q[16];
x q[17];
x q[18];
x q[19];
ccx q[16], q[17], q[20];
ccx q[18], q[19], q[21];
ccx q[20], q[21], q[22];
ccx q[0], q[4], q[23];
ccx q[1], q[5], q[24];
ccx q[2], q[6], q[25];
ccx q[3], q[7], q[26];
ccx q[22], q[23], q[8];
ccx q[22], q[24], q[9];
ccx q[22], q[25], q[10];
ccx q[22], q[26], q[11];
x q[16];x q[17]; x q[18]; x q[19];
reset q[20]; reset q[21]; reset q[22]; reset q[23]; reset q[24]; reset q[25]; reset q[26];

// OR GATE
x q[0];
x q[1];
x q[2];
x q[3];
x q[4];
x q[5];
x q[6];
x q[7];
x q[16];
x q[17];
x q[18];
ccx q[16], q[17], q[20];
ccx q[18], q[19], q[21];
ccx q[20], q[21], q[22];
ccx q[0], q[4], q[23];
x q[23];
ccx q[1], q[5], q[24];
x q[24];
ccx q[2], q[6], q[25];
x q[25];
ccx q[3], q[7], q[26];
x q[26];
ccx q[22], q[23], q[8];
ccx q[22], q[24], q[9];
ccx q[22], q[25], q[10];
ccx q[22], q[26], q[11];
x q[0];
x q[1];
x q[2];
x q[3];
x q[4];
x q[5];
x q[6];
x q[7];
x q[16];
x q[17];
x q[18];
reset q[20]; reset q[21]; reset q[22]; reset q[23]; reset q[24]; reset q[25]; reset q[26];

// NOT GATE
x q[16]; x q[17]; x q[19];
x q[0]; x q[1];x q[2]; x q[3];
ccx q[16], q[17], q[20];
ccx q[18], q[19], q[21];
ccx q[20], q[21], q[22];
ccx q[22], q[0], q[8];
ccx q[22], q[1], q[9];
ccx q[22], q[2], q[10];
ccx q[22], q[3], q[11];
x q[0]; x q[1];x q[2]; x q[3];
x q[16]; x q[17]; x q[19];
reset q[20]; reset q[21]; reset q[22]; reset q[23]; reset q[24]; reset q[25]; reset q[26];

// NAND GATE
x q[16]; x q[17];
ccx q[16], q[17], q[20];
ccx q[18], q[19], q[21];
ccx q[20], q[21], q[22];
ccx q[0], q[4], q[23];x q[23];
ccx q[1], q[5], q[24];x q[24];
ccx q[2], q[6], q[25];x q[25];
ccx q[3], q[7], q[26];x q[26];
ccx q[22], q[23], q[8];
ccx q[22], q[24], q[9];
ccx q[22], q[25], q[10];
ccx q[22], q[26], q[11];
reset q[20]; reset q[21]; reset q[22]; reset q[23]; reset q[24]; reset q[25]; reset q[26];
x q[16]; x q[17];

// NOR GATE
x q[16]; x q[18]; x q[19];
x q[0];x q[1];x q[2];x q[3];x q[4];x q[5];x q[6];x q[7];
ccx q[16], q[17], q[20];
ccx q[18], q[19], q[21];
ccx q[20], q[21], q[22];
ccx q[0], q[4], q[23];
ccx q[1], q[5], q[24];
ccx q[2], q[6], q[25];
ccx q[3], q[7], q[26];
ccx q[22], q[23], q[8];
ccx q[22], q[24], q[9];
ccx q[22], q[25], q[10];
ccx q[22], q[26], q[11];
reset q[20]; reset q[21]; reset q[22]; reset q[23]; reset q[24]; reset q[25]; reset q[26];
x q[16]; x q[18]; x q[19];
x q[0];x q[1];x q[2];x q[3];x q[4];x q[5];x q[6];x q[7];

// XOR GATE
x q[16];
x q[18];
ccx q[16], q[17], q[20];
ccx q[18], q[19], q[21];
ccx q[20], q[21], q[22];
cx q[0], q[23];
cx q[4], q[23];
cx q[1], q[24];
cx q[5], q[24];
cx q[2], q[25];
cx q[6], q[25];
cx q[3], q[26];
cx q[7], q[26];
ccx q[22], q[23], q[8];
ccx q[22], q[24], q[9];
ccx q[22], q[25], q[10];
ccx q[22], q[26], q[11];
reset q[20]; reset q[21]; reset q[22]; reset q[23]; reset q[24]; reset q[25]; reset q[26];
x q[16];
x q[18];

// XNOR GATE
x q[16];
x q[19];
ccx q[16], q[17], q[20];
ccx q[18], q[19], q[21];
ccx q[20], q[21], q[22];
cx q[0], q[23];
cx q[4], q[23];
cx q[1], q[24];
cx q[5], q[24];
cx q[2], q[25];
cx q[6], q[25];
cx q[3], q[26];
cx q[7], q[26];
x q[23];x q[24];x q[25];x q[26];
ccx q[22], q[23], q[8];
ccx q[22], q[24], q[9];
ccx q[22], q[25], q[10];
ccx q[22], q[26], q[11];
reset q[20]; reset q[21]; reset q[22]; reset q[23]; reset q[24]; reset q[25]; reset q[26];
x q[16];
x q[19];


// ADDER
// RIPPLE CARRY ADDER
x q[16];
ccx q[16], q[17], q[20];
ccx q[18], q[19], q[21];
ccx q[20], q[21], q[22];
reset q[20];
reset q[21];
// BIT 0
cx q[0], q[23];
cx q[4], q[23];
cx q[27], q[23];
ccx q[0], q[4], q[13];
ccx q[0], q[27], q[13];
ccx q[4], q[27], q[13];
// BIT 1
cx q[1], q[24];
cx q[5], q[24];
cx q[13], q[24];
ccx q[1], q[5], q[14];
ccx q[1], q[13], q[14];
ccx q[5], q[13], q[14];
// BIT 2
cx q[2], q[25];
cx q[6], q[25];
cx q[14], q[25];
ccx q[2], q[6], q[15];
ccx q[2], q[14], q[15];
ccx q[6], q[14], q[15];
// BIT 3
cx q[3], q[26];
cx q[7], q[26];
cx q[15], q[26];
ccx q[3], q[7], q[20];
ccx q[3], q[15], q[20];
ccx q[7], q[15], q[20];
// OUTPUT 
ccx q[22], q[23], q[8];
ccx q[22], q[24], q[9];
ccx q[22], q[25], q[10];
ccx q[22], q[26], q[11];
ccx q[22], q[20], q[12];
reset q[13];
reset q[14];
reset q[15];
reset q[20];
reset q[21];
reset q[22];
reset q[23];
reset q[24];
reset q[25];
reset q[26];
reset q[27];
reset q[28];
x q[16];

// SUBTRACTOR
x q[17];x q[18]; x q[19];
x q[4];x q[5];x q[6];x q[7];
ccx q[16], q[17], q[20];
ccx q[18], q[19], q[21];
ccx q[20], q[21], q[22];
reset q[20]; reset q[21];
// BIT 0
cx q[0], q[23];
cx q[4], q[23];
cx q[16], q[23];
ccx q[0], q[4], q[13];
ccx q[0], q[16], q[13];
ccx q[4], q[16], q[13];
// BIT 1
cx q[1], q[24];
cx q[5], q[24];
cx q[13], q[24];
ccx q[1], q[5], q[14];
ccx q[1], q[13], q[14];
ccx q[5], q[13], q[14];
// BIT 2
cx q[2], q[25];
cx q[6], q[25];
cx q[14], q[25];
ccx q[2], q[6], q[15];
ccx q[2], q[14], q[15];
ccx q[6], q[14], q[15];
// BIT 3
cx q[3], q[26];
cx q[7], q[26];
cx q[15], q[26];
ccx q[3], q[7], q[20];
ccx q[3], q[15], q[20];
ccx q[7], q[15], q[20];
// OUTPUT 
ccx q[22], q[23], q[8];
ccx q[22], q[24], q[9];
ccx q[22], q[25], q[10];
ccx q[22], q[26], q[11];
ccx q[22], q[20], q[12];
reset q[13];
reset q[14];
reset q[15];
reset q[20];
reset q[21];
reset q[22];
reset q[23];
reset q[24];
reset q[25];
reset q[26];
reset q[27];
reset q[28];
x q[17];x q[18]; x q[19];
x q[4];x q[5];x q[6];x q[7];

// Increment
x q[17];x q[18];
x q[4];
ccx q[16], q[17], q[20];
ccx q[18], q[19], q[21];
ccx q[20], q[21], q[22];
reset q[20];
// BIT 0
cx q[0], q[23];
cx q[4], q[23];
cx q[27], q[23];
ccx q[0], q[4], q[13];
ccx q[0], q[27], q[13];
ccx q[4], q[27], q[13];
// BIT 1
cx q[1], q[24];
cx q[5], q[24];
cx q[13], q[24];
ccx q[1], q[5], q[14];
ccx q[1], q[13], q[14];
ccx q[5], q[13], q[14];
// BIT 2
cx q[2], q[25];
cx q[6], q[25];
cx q[14], q[25];
ccx q[2], q[6], q[15];
ccx q[2], q[14], q[15];
ccx q[6], q[14], q[15];
// BIT 3
cx q[3], q[26];
cx q[7], q[26];
cx q[15], q[26];
ccx q[3], q[7], q[20];
ccx q[3], q[15], q[20];
ccx q[7], q[15], q[20];
// OUTPUT 
ccx q[22], q[23], q[8];
ccx q[22], q[24], q[9];
ccx q[22], q[25], q[10];
ccx q[22], q[26], q[11];
ccx q[22], q[20], q[12];
reset q[13];
reset q[14];
reset q[15];
reset q[20];
reset q[21];
reset q[22];
reset q[23];
reset q[24];
reset q[25];
reset q[26];
reset q[27];
reset q[28];
x q[17];x q[18];
x q[4];


//DECREMENT
// SUBTRACTOR
x q[17]; x q[19];
x q[4];
x q[4];x q[5];x q[6];x q[7];
ccx q[16], q[17], q[20];
ccx q[18], q[19], q[21];
ccx q[20], q[21], q[22];
reset q[20]; reset q[21];
// BIT 0
cx q[0], q[23];
cx q[4], q[23];
cx q[16], q[23];
ccx q[0], q[4], q[13];
ccx q[0], q[16], q[13];
ccx q[4], q[16], q[13];
// BIT 1
cx q[1], q[24];
cx q[5], q[24];
cx q[13], q[24];
ccx q[1], q[5], q[14];
ccx q[1], q[13], q[14];
ccx q[5], q[13], q[14];
// BIT 2
cx q[2], q[25];
cx q[6], q[25];
cx q[14], q[25];
ccx q[2], q[6], q[15];
ccx q[2], q[14], q[15];
ccx q[6], q[14], q[15];
// BIT 3
cx q[3], q[26];
cx q[7], q[26];
cx q[15], q[26];
ccx q[3], q[7], q[20];
ccx q[3], q[15], q[20];
ccx q[7], q[15], q[20];
// OUTPUT 
ccx q[22], q[23], q[8];
ccx q[22], q[24], q[9];
ccx q[22], q[25], q[10];
ccx q[22], q[26], q[11];
ccx q[22], q[20], q[12];
reset q[13];
reset q[14];
reset q[15];
reset q[20];
reset q[21];
reset q[22];
reset q[23];
reset q[24];
reset q[25];
reset q[26];
x q[17]; x q[19];x q[4];
x q[4];x q[5];x q[6];x q[7];



gate cxx a, b, c
{
  cx c, a;
  cx c, b;
}

gate l12 a, b, c
{
  h a;
  cx a, b;
  t a;
  t b;
  cx c, a;
  tdg a;
  cx c, b;
  tdg b;
  t c;
  cx a, b;
  cx c, a;
  h a;
  cx b, c;
  tdg b;
  t c;
}

gate li1 a, b, c
{
  h a;
  cx b, a;
  cx a, c;
  t a;
  tdg b;
  t c;
  cx b, c;
  cx b, a;
  tdg c;
  cx a, c;
  tdg a;
  cx c, b;
  h a;
  tdg b;
  t c;
}

gate cx3 a, b, c, d
{
  cx a, b;
  cx a, c;
  cx a, d;
}

gate li2 a, b, c
{
  h b;
  cx b, a;
  t a;
  t b;
  cxx a, b, c;
  tdg a;
  tdg b;
  t c;
  cx b, a;
  cx c, b;
  cx a, c;
  tdg a;
  h b;
  t c;
}

// DIVISION

x q[17];
reset q[23];
ccx q[16], q[17], q[20];
ccx q[18], q[19], q[21];
ccx q[20], q[21], q[14];
reset q[20];
reset q[21];
cx q[0], q[28];
cx q[1], q[27];
cx q[2], q[25];
cx q[4], q[26];
cx q[5], q[24];
cx q[6], q[22];
x q[17];
cx q[22], q[21];
cxx q[22], q[23], q[24];
l12 q[24], q[25], q[26];
l12 q[22], q[23], q[24];
li1 q[20], q[21], q[22];
l12 q[22], q[23], q[24];
cx q[24], q[23];
l12 q[24], q[25], q[26];
cxx q[22], q[23], q[24];
cx q[26], q[25];
cx q[22], q[21];
swap q[24], q[25];
swap q[26], q[27];
cx q[21], q[20];
swap q[22], q[23];
x q[20];
cx3 q[20], q[22], q[24], q[26];
cx q[22], q[21];
cx q[27], q[26];
cx q[23], q[22];
cxx q[23], q[24], q[25];
l12 q[25], q[26], q[27];
cx q[25], q[24];
l12 q[23], q[24], q[25];
li1 q[21], q[22], q[23];
l12 q[23], q[24], q[25];
l12 q[25], q[26], q[27];
cxx q[23], q[24], q[25];
swap q[27], q[28];
cx q[23], q[22];
cx3 q[20], q[22], q[24], q[26];
x q[21];
swap q[23], q[24];
swap q[25], q[26];
cx3 q[21], q[23], q[25], q[27];
cx q[23], q[22];
cx q[28], q[27];
cx q[24], q[23];
cxx q[24], q[25], q[26];
l12 q[26], q[27], q[28];
cx q[26], q[25];
l12 q[24], q[25], q[26];
li1 q[22], q[23], q[24];
l12 q[24], q[25], q[26];
l12 q[26], q[27], q[28];
cxx q[24], q[25], q[26];
cx q[24], q[23];
cx3 q[21], q[23], q[25], q[27];
x q[22];
cx q[24], q[23];
cx q[26], q[25];
cx q[22], q[26];
cx q[22], q[28];
cx q[26], q[24];
li2 q[22], q[27], q[28];
l12 q[26], q[27], q[28];
li2 q[22], q[25], q[26];
l12 q[24], q[25], q[26];
li2 q[22], q[23], q[24];
ccx q[14], q[22], q[8];
l12 q[24], q[25], q[26];
ccx q[14], q[21], q[9];
l12 q[26], q[27], q[28];
ccx q[14], q[20], q[10];
cxx q[24], q[25], q[26];
reset q[28];
cx q[24], q[23];
ccx q[14], q[27], q[11];
ccx q[14], q[25], q[12];
ccx q[14], q[23], q[13];
reset q[26];
reset q[27];
reset q[24];
reset q[25];
reset q[14];
reset q[28];
reset q[20];
reset q[21];
reset q[22];
reset q[23];

// Multiplication

x q[18];x q[19];
ccx q[16], q[17], q[20];
ccx q[18], q[19], q[21];
ccx q[20], q[21], q[14];
reset q[20];reset q[21];
cx q[4],q[20];
cx q[5],q[21];
cx q[6],q[22];
reset q[23];
cx q[2],q[24];
reset q[25];
cx q[1],q[26];
reset q[27];
cx q[0],q[28];
cx q[24], q[23];
cxx q[24], q[25], q[26];
l12 q[26], q[27], q[28];
l12 q[24], q[25], q[26];
li2 q[22], q[23], q[24];
l12 q[24], q[25], q[26];
li2 q[22], q[25], q[26];
l12 q[26], q[27], q[28];
li2 q[22], q[27], q[28];
cx q[26], q[24];
cx q[22], q[26];
cx q[22], q[28];
x q[22];
cx q[24], q[23];
cx q[26], q[25];
cx3 q[21], q[23], q[25], q[27];
cx q[24], q[23];
cxx q[24], q[25], q[26];
l12 q[26], q[27], q[28];
l12 q[24], q[25], q[26];
li1 q[22], q[23], q[24];
l12 q[24], q[25], q[26];
cx q[26], q[25];
l12 q[26], q[27], q[28];
cxx q[24], q[25], q[26];
cx q[28], q[27];
cx q[24], q[23];
cx q[23], q[22];
cx3 q[21], q[23], q[25], q[27];
x q[21];
swap q[23], q[24];
swap q[25], q[26];
swap q[27], q[28];
cx3 q[20], q[22], q[24], q[26];
cx q[23], q[22];
cxx q[23], q[24], q[25];
l12 q[25], q[26], q[27];
l12 q[23], q[24], q[25];
li1 q[21], q[22], q[23];
l12 q[23], q[24], q[25];
cx q[25], q[24];
l12 q[25], q[26], q[27];
cxx q[23], q[24], q[25];
cx q[27], q[26];
cx q[23], q[22];
cx q[22], q[21];
cx3 q[20], q[22], q[24], q[26];
x q[20];
swap q[22], q[23];
swap q[24], q[25];
swap q[26], q[27];
cx q[21], q[20];
cx q[22], q[21];
cxx q[22], q[23], q[24];
cx q[26], q[25];
l12 q[24], q[25], q[26];
cx q[24], q[23];
l12 q[22], q[23], q[24];
li1 q[20], q[21], q[22];
l12 q[22], q[23], q[24];
l12 q[24], q[25], q[26];
cxx q[22], q[23], q[24];
cx q[22], q[21];
x q[18];x q[19];
ccx q[14],q[28],q[8];
ccx q[14],q[27],q[9];
ccx q[14],q[25],q[10];
ccx q[14],q[23],q[11];
ccx q[14],q[21],q[12];
ccx q[14],q[21],q[13];
reset q[26];
reset q[27];
reset q[24];
reset q[25];
reset q[14];
reset q[28];
reset q[20];
reset q[21];
reset q[22];
reset q[23];


measure q[8] -> c[0];
measure q[9] -> c[1];
measure q[10] -> c[2];
measure q[11] -> c[3];
measure q[12] -> c[4];
measure q[13] -> c[5];
measure q[14] -> c[6];
measure q[15] -> c[7];
