⍝ MANTIC METHODS---

∇ Z← FORT1; A
    [1] A← ?6 3⍴4
    [2] A[;1]← 1+A[;1]+(4-A[;1])+4×0=4-A[;1]
    [3] A← A+(A=2)+(2×A=1)+(3×A=4)+(4×A=3)
    [4] A[;2 3]← 1+A[;2 3]
    [5] Z← (49-+/A)÷4
∇
⍝ Implementation of the original rite.
⍝ Returns a 6 element vector (a hexagram)

∇ Z← MANT; i
[1] Z← RND 6
[2] i← 9×Z≥0.1875
[3] i← i+(8×(Z>0.1875)∧ Z≥0.625)
[4] i← i+(7×(Z>0.625)∧ Z≥0.9375)
[5] Z← i+6×Z>0.9375
∇
⍝ Returns a 6 element vector (a hexagram) according to original rite probability distribution.
⍝ Subfunction RND.

∇ Z← MOON NR
[1] Z←GM[8 MOD+/NR[⍳3];]
[2] Z←GM[8 MOD=/NR;],Z
[3] Z[6 MOD+/NR]←6+3×7=Z[6 MOD+/NR]
∇
⍝ Implementation of Shao Yun's algorithm.
⍝ Returns a 6 element vector (a hexagram) according to date and time NR.
⍝ Subfunction MOD.
⍝ Subvariable GM

⍝ STATISTICAL FUNCTIONS---
⍝ (wip)

⍝ APPLIED FUNCTIONS---
⍝ (wip)

∇ Z←A MOD B
[1] Z←(A×0=A|B)+A|B 
∇
⍝ Returns A mod B. If B is divisible by A, returns A.

∇ Z← RND X
[1] Z←(?X⍴⌊/⍳0)÷⌊/⍳0
∇
⍝ Returns X elements vector of random numbers between 0 and 1.
