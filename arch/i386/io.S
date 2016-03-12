.globl outb
.type out, @function

.section .text
    # Stack layout:
    #   -8(%esp) data byte
    #   -4(%esp) port address (16 bits)
    outb:
        movb -8(%esp), %al
        movw -4(%esp), %dx
        out %al, %dx
        ret
