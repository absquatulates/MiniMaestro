DEVICE_ID = 00183433

SCRIPT ?=

USCCMD = ~/Downloads/maestro-linux/UscCmd

all: check_script upload


check_script:
ifndef SCRIPT
	$(error Måste definiera script-fil. Skriv: make SCRIPT=script-fil.txt)
endif

upload:
	$(USCCMD) --device $(DEVICE_ID) --program $(SCRIPT)

start:
	$(USCCMD) --device $(DEVICE_ID) --start

stop:
	$(USCCMD) --device $(DEVICE_ID) --stop

status:
	$(USCCMD) --device $(DEVICE_ID) --status

list:
	$(USCCMD) --list