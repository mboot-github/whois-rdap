PYTHONLIB = /usr/lib/python3.8
BINHOME = /usr/local/bin
TARGET = whois.py

install: $(TARGET)
	@[ -e $(BINHOME)/$(TARGET) ] && rm $(BINHOME)/$(TARGET) || return 0
	@cp $(TARGET) $(PYTHONLIB)
	@ln -s $(PYTHONLIB)/$(TARGET) $(BINHOME)/$(TARGET)
	@chmod +x $(BINHOME)/$(TARGET)
