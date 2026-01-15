.text
.globl main
main:
lui x10, 0x78786
addi x10, x10, 0x464
lui x11, 0xA8A82
addi x11, x11, -1767

li t0, 0x100
sw x10, 0(t0)

li t1, 0x1F0
sw x11, 0(t1)

lhu x12, 0(t0)
lh   x13, 0(t1)
lb   x14, 0(t1)
end:
j end
