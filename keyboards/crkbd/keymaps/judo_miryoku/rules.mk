# copied from users/manna-harbour_miryoku/rules.mk
# generated from users/manna-harbour_miryoku/miryoku.org  -*- buffer-read-only: t -*-

MOUSEKEY_ENABLE = yes # Mouse keys
EXTRAKEY_ENABLE = yes # Audio control and System control
OLED_DRIVER_ENABLE = yes

SRC += process_records.c \
	   oled.c

# select alternative base layer alphas
ifneq ($(strip $(MIRYOKU_ALPHAS)),)
  OPT_DEFS += -DMIRYOKU_ALPHAS_$(MIRYOKU_ALPHAS)
endif

# select alternative subset mappings
ifneq ($(strip $(MIRYOKU_MAPPING)),)
  OPT_DEFS += -DMIRYOKU_MAPPING_$(MIRYOKU_MAPPING)
endif
