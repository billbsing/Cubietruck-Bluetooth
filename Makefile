#******************************************************************************
#*
#*  Copyright (C) 2009-2012 Broadcom Corporation
#*
#*  Licensed under the Apache License, Version 2.0 (the "License");
#*  you may not use this file except in compliance with the License.
#*  You may obtain a copy of the License at
#*
#*      http://www.apache.org/licenses/LICENSE-2.0
#*
#*  Unless required by applicable law or agreed to in writing, software
#*  distributed under the License is distributed on an "AS IS" BASIS,
#*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#*  See the License for the specific language governing permissions and
#*  limitations under the License.
#*
#******************************************************************************


# the compiler: gcc for C program, define as g++ for C++
CC = gcc

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -g -Wall  -fPIC
INCLUDES =
LFLAGS = 
LIBS = 
BIN_PATH = /usr/local/bin
SYSTEMD_PATH = /lib/systemd/system

TARGET = brcm_patchram_cubietruck
SOURCES = brcm_patchram_cubietruck.c
OBJECTS = $(SOURCES:.c=.o)



all:    $(TARGET)
	@echo  $(TARGET) has been built

$(TARGET): $(OBJECTS) 
	$(CC) $(CFLAGS) $(INCLUDES) -o $(TARGET) $(OBJECTS) $(LFLAGS) $(LIBS)
	
.c.o: $(SOURCES)
	$(CC) $(CFLAGS) $(INCLUDES) -c $<  -o $@

clean:
	$(RM) *.o *~ $(TARGET)

install: all
	chmod +x bluetooth-init.sh
	cp $(TARGET) $(BIN_PATH)
	cp bluetooth-init.sh $(BIN_PATH)
	chmod +x $(BIN_PATH)/bluetooth-init.sh
	cp bluetooth-init.service $(SYSTEMD_PATH)

