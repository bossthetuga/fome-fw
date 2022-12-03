# Combine the related files for a specific platform and MCU.

# Target ECU board design
BOARDCPPSRC = $(BOARDS_DIR)/hellen/alphax-8chan/board_configuration.cpp
BOARDINC = $(BOARDS_DIR)/hellen/alphax-8chan

DDEFS += -DEFI_MAIN_RELAY_CONTROL=TRUE



# Add them all together
DDEFS += -DFIRMWARE_ID=\"AlphaX-8chan\"
DDEFS += -DEFI_SOFTWARE_KNOCK=TRUE -DSTM32_ADC_USE_ADC3=TRUE

include $(BOARDS_DIR)/hellen/hellen-common144.mk

DDEFS += $(PRIMARY_COMMUNICATION_PORT_USART2)

DDEFS += -DSHORT_BOARD_NAME=alphax-8chan