
/*  TRAIN MISSION DATA */
byte T0[14];
byte T1[14];
byte T2[14];
byte T3[14];
byte T4[14];
byte T5[14];
byte T6[14];
byte T7[14];

/* TRAIN PROGRESS DATA */
byte P0,P1,P2,P3,P4,P5,P6,P7;

/*  CONSTRAINTs DATA  FOR REGIONS A,B  */
byte RA; // occupancy of region A
byte RB; // occupancy of region B
byte RC; // occupancy of region C
byte RD; // occupancy of region D
byte LA; // limit of region A
byte LB; // limit if region B
byte LC; // limit of region C
byte LD; // limit if region D
short A0[14]; // Constraints of Train 0 for Region A
short A1[14]; // Constraints of Train 1 for Region A
short A2[14]; // Constraints of Train 2 for Region A
short A3[14]; //          ...
short A4[14];
short A5[14];
short A6[14];
short A7[14];
short B0[14]; // Constraints of Train 0 for Region B
short B1[14]; // Constraints of Train 1 for Region B
short B2[14]; // Constraints of Train 2 for Region B
short B3[14]; //          ...
short B4[14];
short B5[14];
short B6[14];
short B7[14];
short C0[14]; // ConstrCints of TrCin 0 for Region C
short C1[14]; // ConstrCints of TrCin 1 for Region C
short C2[14]; // ConstrCints of TrCin 2 for Region C
short C3[14]; //          ...
short C4[14];
short C5[14];
short C6[14];
short C7[14];
short D0[14]; // Constraints of Train 0 for Region D
short D1[14]; // Constraints of Train 1 for Region D
short D2[14]; // Constraints of Train 2 for Region D
short D3[14]; //          ...
short D4[14];
short D5[14];
short D6[14];
short D7[14];


/*  PROPERTIES */
// ltl p1 
// { <> ((P0==13) && (P1==13) && (P2==13) && (P3==0) &&
//       (P4==13) && (P5==13) && (P6==13) && (P7==0)) }

/*  INITIALIZATIONS */
init {
  atomic {


//--------------------------------------------------------------
// T0 := [ 1, 9,10,13,15,20,23,22,17,18,11, 9, 2, 1]; -- G1
// T1 := [ 3, 9,10,13,15,20,24,22,17,18,11, 9, 4, 3]; -- R1
// T2 := [ 5,27,11,13,16,20,25,22,17,18,12,27, 6, 5]; -- Y1
// T3 := [ 7,27,11,13,16,20,26,22,17,18,12,27, 8, 7]; -- B1
// T4 := [23,22,17,18,11, 9, 2, 1, 9,10,13,15,20,23]; -- G2
// T5 := [24,22,17,18,11, 9, 4, 3, 9,10,13,15,20,24]; -- R2
// T6 := [25,22,17,18,12,27, 6, 5,27,11,13,16,20,25]; -- Y2
// T7 := [26,22,17,18,12,27, 8, 7,27,11,13,16,20,26]; -- B2
//--------------------------------------------------------------
  T0[0]= 1; T0[1]= 9; T0[2]=10; T0[ 3]=13; T0[ 4]=15; T0[ 5]=20; T0[ 6]=23;
  T0[7]=22; T0[8]=17; T0[9]=18; T0[10]=11; T0[11]= 9; T0[12]= 2; T0[13]= 1;
  
  T1[0]= 3; T1[1]=9;  T1[2]=10; T1[ 3]=13; T1[ 4]=15; T1[ 5]=20; T1[ 6]=24;
  T1[7]=22; T1[8]=17; T1[9]=18; T1[10]=11; T1[11]= 9; T1[12]= 4; T1[13]= 3;
  
  T2[0]= 5; T2[1]=27; T2[2]=11; T2[ 3]=13; T2[ 4]=16; T2[ 5]=20; T2[ 6]=25;
  T2[7]=22; T2[8]=17; T2[9]=18; T2[10]=12; T2[11]=27; T2[12]= 6; T2[13]= 5;
  
  T3[0]= 7; T3[1]=27; T3[2]=11; T3[ 3]=13; T3[ 4]=16; T3[ 5]=20; T3[ 6]=26;
  T3[7]=22; T3[8]=17; T3[9]=18; T3[10]=12; T3[11]=27; T3[12]= 8; T3[13]= 7;
  
  T4[0]=23; T4[1]=22; T4[2]=17; T4[ 3]=18; T4[ 4]=11; T4[ 5]= 9; T4[ 6]= 2;
  T4[7]= 1; T4[8]= 9; T4[9]=10; T4[10]=13; T4[11]=15; T4[12]=20; T4[13]=23;
  
  T5[0]=24; T5[1]=22; T5[2]=17; T5[ 3]=18; T5[ 4]=11; T5[ 5]=9;  T5[ 6]= 4;
  T5[7]= 3; T5[8]= 9; T5[9]=10; T5[10]=13; T5[11]=15; T5[12]=20; T5[13]=24;
  
  T6[0]=25; T6[1]=22; T6[2]=17; T6[3]=18; T6[4]=12; T6[5]=27; T6[6]=6;
  T6[7]= 5; T6[8]=27; T6[9]=11; T6[10]=13; T6[11]=16; T6[12]=20; T6[13]=25;
  
  T7[0]=26; T7[1]=22; T7[2]=17; T7[ 3]=18; T7[ 4]=12; T7[ 5]=27; T7[ 6]= 8;
  T7[7]= 7; T7[8]=27; T7[9]=11; T7[10]=13; T7[11]=16; T7[12]=20; T7[13]=26;

//  
// ------ initial train positions   --------
//  Pi=0 as default value. no need of explicit initialization

// ------ region A: train constraints ------
//         0  1  2  3  4  5  6  7  8  9 10 11 12 13
// A0 := [ 0, 0, 0, 1, 0,-1, 0, 1, 0, 0,-1, 0, 0, 0]; -- G1
// A1 := [ 0, 0, 0, 1, 0,-1, 0, 1, 0, 0,-1, 0, 0, 0]; -- R1
// A2 := [ 0, 0, 1,-1, 0, 1, 0, 0, 0,-1, 0, 0, 0, 0]; -- Y1
// A3 := [ 0, 0, 1,-1, 0, 0, 0, 1, 0,-1, 0, 0, 0, 0]; -- B1
// A4 := [ 0, 1, 0, 0,-1, 0, 0, 0, 0, 0, 1, 0,-1, 0]; -- G2
// A5 := [ 0, 1, 0, 0,-1, 0, 0, 0, 0, 0, 1, 0,-1, 0]; -- R2
// A6 := [ 0, 0, 0,-1, 0, 0, 0, 0, 0, 1,-1, 0, 1, 0]; -- Y2
// A7 := [ 0, 1, 0,-1, 0, 0, 0, 0, 0, 1,-1, 0, 0, 0]; -- B2
// ------------------------------------------
   A0[3] = 1; A0[5] = -1; A0[ 7]=  1; A0[10] = -1;
   A1[3] = 1; A1[5] = -1; A1[ 7]=  1; A1[10] = -1;
   A2[2] = 1; A2[3] = -1; A2[ 5]=  1; A2[ 9] = -1;
   A3[2] = 1; A3[3] = -1; A3[ 7]=  1; A3[ 9] = -1;
   A4[1] = 1; A4[4] = -1; A4[10]=  1; A4[12] = -1;
   A5[1] = 1; A5[4] = -1; A5[10]=  1; A5[12] = -1;
   A6[3] =-1; A6[ 9] = 1; A6[10]= -1; A6[12] =  1;
   A7[1] = 1; A7[3] = -1; A7[ 9]=  1; A7[10] = -1;
   
// ------- region B: train constraints ------
//         0  1  2  3  4  5  6  7  8  9 10 11 12 13
// B0 := [ 0, 0, 0, 1, 0,-1, 0, 1, 0, 0,-1, 0, 0, 0]; -- G1
// B1 := [ 0, 0, 0, 1, 0,-1, 0, 1, 0, 0,-1, 0, 0, 0]; -- R1
// B2 := [ 0, 0, 1,-1, 0, 0, 0, 1, 0,-1, 0, 0, 0, 0]; -- Y1
// B3 := [ 0, 0, 1,-1, 0, 1, 0, 0, 0,-1, 0, 0, 0, 0]; -- B1
// B4 := [ 0, 1, 0, 0,-1, 0, 0, 0, 0, 0, 1, 0,-1, 0]; -- G2
// B5 := [ 0, 1, 0, 0,-1, 0, 0, 0, 0, 0, 1, 0,-1, 0]; -- R2
// B6 := [ 0, 1, 0,-1, 0, 0, 0, 0, 0, 1,-1, 0, 0, 0]; -- Y2
// B7 := [ 0, 0, 0,-1, 0, 0, 0, 0, 0, 1,-1, 0, 1, 0]; -- B2
// ------------------------------------------
   B0[3] =  1; B0[5] = -1; B0[ 7] =  1; B0[10] = -1;
   B1[3] =  1; B1[5] = -1; B1[ 7] =  1; B1[10] = -1;
   B2[2] =  1; B2[3] = -1; B2[ 7] =  1; B2[ 9] = -1;
   B3[2] =  1; B3[3] = -1; B3[ 5] =  1; B3[ 9] = -1;
   B4[1] =  1; B4[4] = -1; B4[10] =  1; B4[12] = -1;
   B5[1] =  1; B5[4] = -1; B5[10] =  1; B5[12] = -1;
   B6[1] =  1; B6[3] = -1; B6[ 9] =  1; B6[10] = -1;
   B7[3] = -1; B7[9] =  1; B7[10] = -1; B7[12] =  1;


// ------- region C: train constraints ------
//         0  1  2  3  4  5  6  7  8  9 10 11 12 13
// C0 := [ 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,-1, 0, 0, 0]; -- G1
// C1 := [ 0, 0, 0, 0, 0, 0, 0, 1, 0, 0,-1, 0, 0, 0]; -- R1
// C2 := [ 0, 0, 1, 0, 0,-1, 0, 1, 0,-1, 0, 0, 0, 0]; -- Y1
// C3 := [ 0, 0, 1, 0, 0,-1, 0, 1, 0,-1, 0, 0, 0, 0]; -- B1
// C4 := [ 0, 0, 0, 0,-1, 0, 0, 0, 0, 0, 0, 0, 1, 0]; -- G2
// C5 := [ 0, 1, 0, 0,-1, 0, 0, 0, 0, 0, 0, 0, 0, 0]; -- R2
// C6 := [ 0, 1, 0,-1, 0, 0, 0, 0, 0, 1, 0, 0,-1, 0]; -- Y2
// C7 := [ 0, 1, 0,-1, 0, 0, 0, 0, 0, 1, 0, 0,-1, 0]; -- B2
// ------------------------------------------
   C0[5] =  1; C0[10] = -1; 
   C1[7] =  1; C1[10] = -1; 
   C2[2] =  1; C2[ 5] = -1; C2[7] = 1; C2[ 9] = -1;
   C3[2] =  1; C3[ 5] = -1; C3[7] = 1; C3[ 9] = -1;
   C4[4] = -1; C4[12] =  1;
   C5[1] =  1; C5[ 4] = -1;
   C6[1] =  1; C6[ 3] = -1; C6[9] = 1; C6[12] = -1;
   C7[1] =  1; C7[ 3] = -1; C7[9] = 1; C7[12] = -1;


// ------- region D: train constraints ------
//         0  1  2  3  4  5  6  7  8  9 10 11 12 13
// D0 := [ 0, 0, 0, 0, 0, 0, 0, 1, 0, 0,-1, 0, 0, 0]; -- G1
// D1 := [ 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,-1, 0, 0, 0]; -- R1
// D2 := [ 0, 0, 1, 0, 0,-1, 0, 1, 0,-1, 0, 0, 0, 0]; -- Y1
// D3 := [ 0, 0, 1, 0, 0,-1, 0, 1, 0,-1, 0, 0, 0, 0]; -- B1
// D4 := [ 0, 1, 0, 0,-1, 0, 0, 0, 0, 0, 0, 0, 0, 0]; -- G2
// D5 := [ 0, 0, 0, 0,-1, 0, 0, 0, 0, 0, 0, 0, 1, 0]; -- R2
// D6 := [ 0, 1, 0,-1, 0, 0, 0, 0, 0, 1, 0, 0,-1, 0]; -- Y2
// D7 := [ 0, 1, 0,-1, 0, 0, 0, 0, 0, 1, 0, 0,-1, 0]; -- B2
// ------------------------------------------
   D0[7] =  1; D0[10] = -1; 
   D1[5] =  1; D1[10] = -1; 
   D2[2] =  1; D2[ 5] = -1; D2[7] = 1; D2[ 9] = -1;
   D3[2] =  1; D3[ 5] = -1; D3[7] = 1; D3[ 9] = -1;
   D4[1] =  1; D4[ 4] = -1;
   D5[4] = -1; D5[12] =  1;
   D6[1] =  1; D6[ 3] = -1; D6[9] = 1; D6[12] = -1;
   D7[1] =  1; D7[ 3] = -1; D7[9] = 1; D7[12] = -1;

   RA = 1;
   RB = 1;
   RC = 1;
   RD = 1;
   LA =7;
   LB =7;
   LC =7;
   LD =7;
  }
   do
    :: atomic {
       (P0 < 13 &&
        T0[P0+1] != T1[P1] && // next place of train0 not occupied by train1
        T0[P0+1] != T2[P2] && // next place of train0 not occupied by train2
        T0[P0+1] != T3[P3] &&
        T0[P0+1] != T4[P4] &&
        T0[P0+1] != T5[P5] &&
        T0[P0+1] != T6[P6] &&
        T0[P0+1] != T7[P7] && // next place of train0 not occupied by train7
        (RA + A0[P0+1]) <= LA && // progress of train0 does not saturate RA 
        (RB + B0[P0+1]) <= LB && // progress of train0 does not saturate RB 
        (RC + C0[P0+1]) <= LC && // progress of train0 does not saturate RC 
        (RD + D0[P0+1]) <= LD    // progress of train0 does not saturate RD 
       ) ->  
         P0 = (P0+1);  //  mod 13; // train advances one step in its mission table
         RA = RA + A0[P0];   // update occupancy of RA according to the step
         RB = RB + B0[P0];   // update occupancy of RA according to the step
         RC = RC + C0[P0];   // update occupancy of RA according to the step
         RD = RD + D0[P0];   // update occupancy of RA according to the step
       };  
    :: atomic {
       (P1 < 13 &&
        T1[P1+1] != T0[P0] &&
        T1[P1+1] != T2[P2] &&
        T1[P1+1] != T3[P3] &&
        T1[P1+1] != T4[P4] &&
        T1[P1+1] != T5[P5] &&
        T1[P1+1] != T6[P6] &&
        T1[P1+1] != T7[P7] &&
        (RA + A1[P1+1]) <= LA &&
        (RB + B1[P1+1]) <= LB &&
        (RC + C1[P1+1]) <= LC && // progress of train0 does not saturate RC 
        (RD + D1[P1+1]) <= LD    // progress of train0 does not saturate RD 
       ) ->  
         P1 = (P1+1);  // mod 13; // train advances one step in its mission table
         RA = RA + A1[P1];   // update occupancy of RA according to the step
         RB = RB + B1[P1];   // update occupancy of RA according to the step
         RC = RC + C1[P1];   // update occupancy of RA according to the step
         RD = RD + D1[P1];   // update occupancy of RA according to the step
       };
    :: atomic {
       (P2 < 13 &&
        T2[P2+1] != T0[P0] &&
        T2[P2+1] != T1[P1] &&
        T2[P2+1] != T3[P3] &&
        T2[P2+1] != T4[P4] &&
        T2[P2+1] != T5[P5] &&
        T2[P2+1] != T6[P6] &&
        T2[P2+1] != T7[P7] &&
        (RA + A2[P2+1]) <= LA &&
        (RB + B2[P2+1]) <= LB &&
        (RC + C2[P2+1]) <= LC && // progress of train0 does not saturate RC 
        (RD + D2[P2+1]) <= LD    // progress of train0 does not saturate RD 
       ) ->  
         P2 = (P2+1);  // mod 13; // train advances one step in its mission table
         RA = RA + A2[P2];   // update occupancy of RA according to the step
         RB = RB + B2[P2];   // update occupancy of RA according to the step
         RC = RC + C2[P2];   // update occupancy of RA according to the step
         RD = RD + D2[P2];   // update occupancy of RA according to the step
       };
    :: atomic {
       (P3 < 0 &&
        T3[P3+1] != T0[P0] &&
        T3[P3+1] != T1[P1] &&
        T3[P3+1] != T2[P2] &&
        T3[P3+1] != T4[P4] &&
        T3[P3+1] != T5[P5] &&
        T3[P3+1] != T6[P6] &&
        T3[P3+1] != T7[P7] &&
        (RA + A3[P3+1]) <= LA &&
        (RB + B3[P3+1]) <= LB &&
        (RC + C3[P3+1]) <= LC && // progress of train0 does not saturate RC 
        (RD + D3[P3+1]) <= LD    // progress of train0 does not saturate RD 
       ) ->  
         P3 = (P3+1);  // mod 13; // train advances one step in its mission table
         RA = RA + A3[P3];   // update occupancy of RA according to the step
         RB = RB + B3[P3];   // update occupancy of RA according to the step
         RC = RC + C3[P3];   // update occupancy of RA according to the step
         RD = RD + D3[P3];   // update occupancy of RA according to the step
       };
    :: atomic {
       (P4 < 13 &&
        T4[P4+1] != T0[P0] &&
        T4[P4+1] != T1[P1] &&
        T4[P4+1] != T2[P2] &&
        T4[P4+1] != T3[P3] &&
        T4[P4+1] != T5[P5] &&
        T4[P4+1] != T6[P6] &&
        T4[P4+1] != T7[P7] &&
        (RA + A4[P4+1]) <= LA &&
        (RB + B4[P4+1]) <= LB &&
        (RC + C4[P4+1]) <= LC && // progress of train0 does not saturate RC 
        (RD + D4[P4+1]) <= LD    // progress of train0 does not saturate RD 
       ) ->  
         P4 = (P4+1);  // mod 13; // train advances one step in its mission table
         RA = RA + A4[P4];   // update occupancy of RA according to the step
         RB = RB + B4[P4];   // update occupancy of RA according to the step
         RC = RC + C4[P4];   // update occupancy of RA according to the step
         RD = RD + D4[P4];   // update occupancy of RA according to the step
       };
    :: atomic {
       (P5 < 13 &&
        T5[P5+1] != T0[P0] &&
        T5[P5+1] != T1[P1] &&
        T5[P5+1] != T2[P2] &&
        T5[P5+1] != T3[P3] &&
        T5[P5+1] != T4[P4] &&
        T5[P5+1] != T6[P6] &&
        T5[P5+1] != T7[P7] &&
        (RA + A5[P5+1]) <= LA &&
        (RB + B5[P5+1]) <= LB &&
        (RC + C5[P5+1]) <= LC && // progress of train0 does not saturate RC 
        (RD + D5[P5+1]) <= LD    // progress of train0 does not saturate RD 
       ) ->  
         P5 = (P5+1);   // mod 13; // train advances one step in its mission table
         RA = RA + A5[P5];   // update occupancy of RA according to the step
         RB = RB + B5[P5];   // update occupancy of RA according to the step
         RC = RC + C5[P5];   // update occupancy of RA according to the step
         RD = RD + D5[P5];   // update occupancy of RA according to the step
       };
    :: atomic {
       (P6 < 13 &&
        T6[P6+1] != T0[P0] &&
        T6[P6+1] != T1[P1] &&
        T6[P6+1] != T2[P2] &&
        T6[P6+1] != T3[P3] &&
        T6[P6+1] != T4[P4] &&
        T6[P6+1] != T5[P5] &&
        T6[P6+1] != T7[P7] &&
        (RA + A6[P6+1]) <= LA &&
        (RB + B6[P6+1]) <= LB &&
        (RC + C6[P6+1]) <= LC && // progress of train0 does not saturate RC 
        (RD + D6[P6+1]) <= LD    // progress of train0 does not saturate RD 
       ) ->  
         P6 = (P6+1);   // mod 13; // train advances one step in its mission table
         RA = RA + A6[P6];   // update occupancy of RA according to the step
         RB = RB + B6[P6];   // update occupancy of RA according to the step
         RC = RC + C6[P6];   // update occupancy of RA according to the step
         RD = RD + D6[P6];   // update occupancy of RA according to the step
       };
    :: atomic {
       (P7 < 0 &&
        T7[P7+1] != T0[P0] &&
        T7[P7+1] != T1[P1] &&
        T7[P7+1] != T2[P2] &&
        T7[P7+1] != T3[P3] &&
        T7[P7+1] != T4[P4] &&
        T7[P7+1] != T5[P5] &&
        T7[P7+1] != T6[P6] &&
        (RA + A7[P7+1]) <= LA &&
        (RB + B7[P7+1]) <= LB &&
        (RC + C7[P7+1]) <= LC && // progress of train0 does not saturate RC 
        (RD + D7[P7+1]) <= LD    // progress of train0 does not saturate RD 
       ) ->  
         P7 = (P7+1);   // mod 13; // train advances one step in its mission table
         RA = RA + A7[P7];   // update occupancy of RA according to the step
         RB = RB + B7[P7];   // update occupancy of RA according to the step
         RC = RC + C7[P7];   // update occupancy of RA according to the step
         RD = RD + D7[P7];   // update occupancy of RA according to the step
       };
 :: (P0 == 13) && (P1 == 13) && (P2 == 13) && (P3 == 0) &&
    (P4 == 13) && (P5 == 13) && (P6 == 13) && (P7 == 0) -> skip;
  od;
}


/*   verfication process
  spin -a spin_round4.pml
  // DEPTH FIRST 
  gcc -O2 -DVECTORSZ=256000 -o pan pan.c 
  pan -m50000000 -v -w31
  >   1249940 states, stored
  >   5214060 transitions

  // BREADTH FIRST
  gcc -O2 -DBFS -DVECTORSZ=256000  -o pan pan.c 
  pan -m50000000 -v -w31
  >    killed (16G ram)
  >  
*/

/*   other commands
  spin -t[N] -- follow [Nth] simulation trail, see also -k
  pan -c0  -- counts all errors
  pan -c   -- saves in the trail file the info for 3rd error
  pan -e -c0 -- saves all errors trails each one in file specI.trail
  spin -k specI.trail -c spec.pml -- displays the trail for error I
  pan -r trailfilename   --read and execute trail in file
  pan -rN    --   read and execute N-th error trail
  pan -C  --  read and execute trail - columnated output (can add -v,-n)
  pan -r -PN read and execute trail - restrict trail output to proc N
  pan -     (for help on options)  
  pan -w32 -v  -D (dot format!)
  ------
*/

