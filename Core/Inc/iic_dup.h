
#include "main.h"

#define IIC_WRITE 0
#define IIC_READ 1

void iic_start(void);
void iic_stop(void);
extern void iic_sendbyte(uint8_t byte);
extern uint8_t iic_readbyte(void);
extern uint8_t iic_wait_ack(void);
extern void iic_ack(void);
extern void iic_nack(void);
extern uint8_t iic_check_device_status(uint8_t device_addr);
