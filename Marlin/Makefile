COM_PORT = COM44
BAUD_RATE = 115200
ARDUINO_VERSION = 167
ARDUINO_BASE_DIR = C:/Arduino
INCLUDE_LIBS = Firmata;
ARDUINO_MODEL = atmega2560
ARDUINO_PROGRAMMER = wiring
ARDUINO_PINS_DIR = ${ARDUINO_BASE_DIR}/hardware/arduino/avr/variants/mega

# Arduino NetBeans plugin: https://github.com/jaquesclaudino/arduino-netbeans

#COM_PORT = C
#BAUD_RATE = 115200
#ARDUINO_VERSION = 167
#ARDUINO_BASE_DIR = C:\Arduino
#INCLUDE_LIBS=Firmata;../hardware/arduino/avr/libraries/SoftwareSerial;

# Arduino Uno:
#ARDUINO_MODEL = atmega328p
#ARDUINO_PROGRAMMER = arduino
#ARDUINO_PINS_DIR = ${ARDUINO_BASE_DIR}/hardware/arduino/avr/variants/standard

# Arduino Mega 2560:
#ARDUINO_MODEL = atmega2560
#ARDUINO_PROGRAMMER = wiring
#ARDUINO_PINS_DIR = ${ARDUINO_BASE_DIR}/hardware/arduino/variants/mega

# Arduino Duemilanove:
#BAUD_RATE = 57600

############################# END OF USER CHANGES #############################

ARDUINO_CORE_DIR = ${ARDUINO_BASE_DIR}/hardware/arduino/avr/cores/arduino
ARDUINO_LIB_DIR = ${ARDUINO_BASE_DIR}/libraries
LIB_CORE_DIR = lib/core
LIB_LIBS_DIR = lib/libs
ARDUINO_LIB_CORE = ${LIB_CORE_DIR}/arduinocore.a
ARDUINO_LIB_LIBS = ${LIB_LIBS_DIR}/arduinolibs.a
#AVR_DUDE = ${ARDUINO_BASE_DIR}/hardware/tools/avr/bin/avrdude -C ${ARDUINO_BASE_DIR}/hardware/tools/avr/etc/avrdude.conf
AVR_DUDE = avrdude -V -C ${ARDUINO_BASE_DIR}/hardware/tools/avr/etc/avrdude.conf
	
INCLUDE = -c -g \
-I${ARDUINO_CORE_DIR} \
-I${ARDUINO_PINS_DIR} \
$(patsubst %,-I${ARDUINO_LIB_DIR}/%,$(subst ;, ,$(INCLUDE_LIBS)))

FLAGS_GCC = -c -g -Os -Wall -ffunction-sections -fdata-sections -mmcu=${ARDUINO_MODEL} -DF_CPU=16000000L -MMD -DUSB_VID=null -DUSB_PID=null -DARDUINO=${ARDUINO_VERSION}
FLAGS_GPP = ${FLAGS_GCC} -fno-exceptions
FLAGS_LINKER = ${ARDUINO_LIB_CORE} ${ARDUINO_LIB_LIBS} -Os -Wl,--gc-sections,--relax -mmcu=${ARDUINO_MODEL} -lm
CMD_AVR_GCC = avr-gcc ${FLAGS_GCC} ${INCLUDE}
CMD_AVR_GPP = avr-g++ ${FLAGS_GPP} ${INCLUDE}
CMD_AVR_AR = avr-ar rcs

CORE_CPP_SOURCES = $(wildcard ${ARDUINO_CORE_DIR}/*.cpp)
CORE_C_SOURCES = $(wildcard ${ARDUINO_CORE_DIR}/*.c)
COBJECTS=$(CORE_CPP_SOURCES:.cpp=.cpp.o) $(CORE_C_SOURCES:.c=.c.o)
CORE_OBJECTS=$(subst ${ARDUINO_CORE_DIR},${LIB_CORE_DIR},${COBJECTS})

LIB_CPP_SOURCES = $(wildcard $(patsubst %,${ARDUINO_LIB_DIR}/%/*.cpp,$(subst ;, ,$(INCLUDE_LIBS))))
LIB_C_SOURCES = $(wildcard $(patsubst %,${ARDUINO_LIB_DIR}/%/*.c,$(subst ;, ,$(INCLUDE_LIBS))) )
LOBJECTS=$(LIB_CPP_SOURCES:.cpp=.cpp.o) $(LIB_C_SOURCES:.c=.c.o)
LIB_OBJECTS=$(subst ${ARDUINO_LIB_DIR},${LIB_LIBS_DIR},${LOBJECTS})

# Environment 
MKDIR=mkdir
CP=cp
CCADMIN=CCadmin

# build
build: .build-post	
${ARDUINO_LIB_CORE}: ${CORE_OBJECTS}
	${CMD_AVR_AR} ${ARDUINO_LIB_CORE} ${CORE_OBJECTS}
	
${ARDUINO_LIB_LIBS}: ${LIB_OBJECTS}
	${CMD_AVR_AR} ${ARDUINO_LIB_LIBS} ${CORE_OBJECTS} ${LIB_OBJECTS}
	
libraries: ${ARDUINO_LIB_CORE} ${ARDUINO_LIB_LIBS}

${LIB_CORE_DIR}/%.cpp.o: ${ARDUINO_CORE_DIR}/%.cpp
	mkdir -p $(dir $@)
	${CMD_AVR_GPP} $< -o $@

${LIB_CORE_DIR}/%.c.o: ${ARDUINO_CORE_DIR}/%.c
	mkdir -p $(dir $@)
	${CMD_AVR_GCC} $< -o $@

${LIB_LIBS_DIR}/%.cpp.o: ${ARDUINO_LIB_DIR}/%.cpp
	mkdir -p $(dir $@)
	${CMD_AVR_GPP} $< -o $@

${LIB_LIBS_DIR}/%.c.o: ${ARDUINO_LIB_DIR}/%.c
	mkdir -p $(dir $@)
	${CMD_AVR_GCC} $< -o $@

.build-pre: .build-pre-pre libraries

#Unconditional Build
.build-pre-pre:
ifeq "$(wildcard $(ARDUINO_BASE_DIR))" ""
	echo "Folder $(ARDUINO_BASE_DIR) not found. Please fix it on Makefile. Remember the path can not contain spaces."
	test -d ${ARDUINO_BASE_DIR}
endif
	
.build-post: .build-impl	
	avr-objcopy -O ihex ${CND_ARTIFACT_PATH_${CONF}} ${CND_ARTIFACT_PATH_${CONF}}.hex
	avr-size --mcu=${ARDUINO_MODEL} -C ${CND_ARTIFACT_PATH_${CONF}}

#upload: .build-post
upload: 
	${AVR_DUDE} -v -p${ARDUINO_MODEL} -c${ARDUINO_PROGRAMMER} -P ${COM_PORT} -b${BAUD_RATE} -D -Uflash:w:${CND_ARTIFACT_PATH_${CONF}}.hex:i


# clean
clean: .clean-post

.clean-pre:
# Add your pre 'clean' code here...

.clean-post: .clean-impl
# Add your post 'clean' code here...


# clobber
clobber: .clobber-post

.clobber-pre:
# Add your pre 'clobber' code here...

.clobber-post: .clobber-impl
# Add your post 'clobber' code here...


# all
all: .all-post

.all-pre:
# Add your pre 'all' code here...

.all-post: .all-impl
# Add your post 'all' code here...


# build tests
build-tests: .build-tests-post

.build-tests-pre:
# Add your pre 'build-tests' code here...

.build-tests-post: .build-tests-impl
# Add your post 'build-tests' code here...


# run tests
test: .test-post

.test-pre: build-tests
# Add your pre 'test' code here...

.test-post: .test-impl
# Add your post 'test' code here...


# help
help: .help-post

.help-pre:
# Add your pre 'help' code here...

.help-post: .help-impl
# Add your post 'help' code here...


# include project implementation makefile
include nbproject/Makefile-impl.mk

# include project make variables
include nbproject/Makefile-variables.mk

