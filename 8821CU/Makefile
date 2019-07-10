FW_DIR	:= /lib/firmware
FW_NAME := rtl8821cu_fw
FW_CF   := rtl8821cu_config

all:
	echo "Copy 8821CU firmware to ${FW_DIR}/${FW_NAME}"
	cp -f ${FW_NAME} $(FW_DIR)/${FW_NAME}
	echo "Copy 8821CU config to ${FW_DIR}/${FW_CF}"
	cp -f ${FW_CF} $(FW_DIR)/${FW_CF}

clean:
	rm -f $(FW_DIR)/${FW_NAME}
	rm -f $(FW_DIR)/${FW_CF}

