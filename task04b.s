
.text
.globl main
main:
    li t0, 0x100      # Address for Array A
    li t1, 0x200      # Address for Array B
    li t2, 0x300      # Address for Array C

    # Array A
    li   s0, 1       
    sb   s0, 0(t0)    
    li   s0, 2
    sb   s0, 1(t0)   
    li   s0, 3
    sb   s0, 2(t0)    
    li   s0, 4
    sb   s0, 3(t0)      

    # Array B
    li   s1, 10
    sh   s1, 0(t1)    # Store at 0x200
    li   s1, 20
    sh   s1, 2(t1)
    li   s1, 30
    sh   s1, 4(t1)
    li   s1, 40
    sh   s1, 6(t1)

    # Array C
    li   s2, 0
    sw   s2, 0(t2)   
    sw   s2, 4(t2)
    sw   s2, 8(t2)
    sw   s2, 12(t2)




lb s0, 0(t0)
lh s1, 0(t1)
add s2, s1, s0
sw s2, 0(t2)

lb s0, 1(t0)
lh s1, 2(t1)
add s2, s1, s0
sw s2, 4(t2)

lb s0, 2(t0)
lh s1, 4(t1)
add s2, s1, s0
sw s2, 8(t2)

lb s0, 3(t0)
lh s1, 6(t1)
add s2, s1, s0
sw s2, 12(t2)



end:
j end