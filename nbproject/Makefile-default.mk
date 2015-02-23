#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ledtest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ledtest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c utilities.c e_motors_timer3.c e_init_port.c e_lsm330.c e_init_uart1.s e_init_uart2.s e_uart1_rx_char.s e_uart1_tx_char.s e_uart2_rx_char.s e_uart2_tx_char.s e_I2C_master_module.c e_I2C_protocol.c e_calc_po6030k.c e_common.c e_interrupt.s e_po6030k_registers.c e_timers.c e_calc_po3030k.c e_calc_po8030d.c e_po3030k_registers.c e_po8030d_registers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/utilities.o ${OBJECTDIR}/e_motors_timer3.o ${OBJECTDIR}/e_init_port.o ${OBJECTDIR}/e_lsm330.o ${OBJECTDIR}/e_init_uart1.o ${OBJECTDIR}/e_init_uart2.o ${OBJECTDIR}/e_uart1_rx_char.o ${OBJECTDIR}/e_uart1_tx_char.o ${OBJECTDIR}/e_uart2_rx_char.o ${OBJECTDIR}/e_uart2_tx_char.o ${OBJECTDIR}/e_I2C_master_module.o ${OBJECTDIR}/e_I2C_protocol.o ${OBJECTDIR}/e_calc_po6030k.o ${OBJECTDIR}/e_common.o ${OBJECTDIR}/e_interrupt.o ${OBJECTDIR}/e_po6030k_registers.o ${OBJECTDIR}/e_timers.o ${OBJECTDIR}/e_calc_po3030k.o ${OBJECTDIR}/e_calc_po8030d.o ${OBJECTDIR}/e_po3030k_registers.o ${OBJECTDIR}/e_po8030d_registers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/utilities.o.d ${OBJECTDIR}/e_motors_timer3.o.d ${OBJECTDIR}/e_init_port.o.d ${OBJECTDIR}/e_lsm330.o.d ${OBJECTDIR}/e_init_uart1.o.d ${OBJECTDIR}/e_init_uart2.o.d ${OBJECTDIR}/e_uart1_rx_char.o.d ${OBJECTDIR}/e_uart1_tx_char.o.d ${OBJECTDIR}/e_uart2_rx_char.o.d ${OBJECTDIR}/e_uart2_tx_char.o.d ${OBJECTDIR}/e_I2C_master_module.o.d ${OBJECTDIR}/e_I2C_protocol.o.d ${OBJECTDIR}/e_calc_po6030k.o.d ${OBJECTDIR}/e_common.o.d ${OBJECTDIR}/e_interrupt.o.d ${OBJECTDIR}/e_po6030k_registers.o.d ${OBJECTDIR}/e_timers.o.d ${OBJECTDIR}/e_calc_po3030k.o.d ${OBJECTDIR}/e_calc_po8030d.o.d ${OBJECTDIR}/e_po3030k_registers.o.d ${OBJECTDIR}/e_po8030d_registers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/utilities.o ${OBJECTDIR}/e_motors_timer3.o ${OBJECTDIR}/e_init_port.o ${OBJECTDIR}/e_lsm330.o ${OBJECTDIR}/e_init_uart1.o ${OBJECTDIR}/e_init_uart2.o ${OBJECTDIR}/e_uart1_rx_char.o ${OBJECTDIR}/e_uart1_tx_char.o ${OBJECTDIR}/e_uart2_rx_char.o ${OBJECTDIR}/e_uart2_tx_char.o ${OBJECTDIR}/e_I2C_master_module.o ${OBJECTDIR}/e_I2C_protocol.o ${OBJECTDIR}/e_calc_po6030k.o ${OBJECTDIR}/e_common.o ${OBJECTDIR}/e_interrupt.o ${OBJECTDIR}/e_po6030k_registers.o ${OBJECTDIR}/e_timers.o ${OBJECTDIR}/e_calc_po3030k.o ${OBJECTDIR}/e_calc_po8030d.o ${OBJECTDIR}/e_po3030k_registers.o ${OBJECTDIR}/e_po8030d_registers.o

# Source Files
SOURCEFILES=main.c utilities.c e_motors_timer3.c e_init_port.c e_lsm330.c e_init_uart1.s e_init_uart2.s e_uart1_rx_char.s e_uart1_tx_char.s e_uart2_rx_char.s e_uart2_tx_char.s e_I2C_master_module.c e_I2C_protocol.c e_calc_po6030k.c e_common.c e_interrupt.s e_po6030k_registers.c e_timers.c e_calc_po3030k.c e_calc_po8030d.c e_po3030k_registers.c e_po8030d_registers.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/ledtest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=30F6014A
MP_LINKER_FILE_OPTION=,--script="p30F6014A.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/utilities.o: utilities.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/utilities.o.d 
	@${RM} ${OBJECTDIR}/utilities.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  utilities.c  -o ${OBJECTDIR}/utilities.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/utilities.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/utilities.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_motors_timer3.o: e_motors_timer3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_motors_timer3.o.d 
	@${RM} ${OBJECTDIR}/e_motors_timer3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_motors_timer3.c  -o ${OBJECTDIR}/e_motors_timer3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_motors_timer3.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_motors_timer3.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_init_port.o: e_init_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_init_port.o.d 
	@${RM} ${OBJECTDIR}/e_init_port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_init_port.c  -o ${OBJECTDIR}/e_init_port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_init_port.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_init_port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_lsm330.o: e_lsm330.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_lsm330.o.d 
	@${RM} ${OBJECTDIR}/e_lsm330.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_lsm330.c  -o ${OBJECTDIR}/e_lsm330.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_lsm330.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_lsm330.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_I2C_master_module.o: e_I2C_master_module.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_I2C_master_module.o.d 
	@${RM} ${OBJECTDIR}/e_I2C_master_module.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_I2C_master_module.c  -o ${OBJECTDIR}/e_I2C_master_module.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_I2C_master_module.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_I2C_master_module.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_I2C_protocol.o: e_I2C_protocol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_I2C_protocol.o.d 
	@${RM} ${OBJECTDIR}/e_I2C_protocol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_I2C_protocol.c  -o ${OBJECTDIR}/e_I2C_protocol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_I2C_protocol.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_I2C_protocol.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_calc_po6030k.o: e_calc_po6030k.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_calc_po6030k.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po6030k.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_calc_po6030k.c  -o ${OBJECTDIR}/e_calc_po6030k.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_calc_po6030k.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_calc_po6030k.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_common.o: e_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_common.o.d 
	@${RM} ${OBJECTDIR}/e_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_common.c  -o ${OBJECTDIR}/e_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_common.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_common.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_po6030k_registers.o: e_po6030k_registers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_po6030k_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po6030k_registers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_po6030k_registers.c  -o ${OBJECTDIR}/e_po6030k_registers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_po6030k_registers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_po6030k_registers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_timers.o: e_timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_timers.o.d 
	@${RM} ${OBJECTDIR}/e_timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_timers.c  -o ${OBJECTDIR}/e_timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_timers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_calc_po3030k.o: e_calc_po3030k.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_calc_po3030k.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po3030k.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_calc_po3030k.c  -o ${OBJECTDIR}/e_calc_po3030k.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_calc_po3030k.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_calc_po3030k.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_calc_po8030d.o: e_calc_po8030d.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_calc_po8030d.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po8030d.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_calc_po8030d.c  -o ${OBJECTDIR}/e_calc_po8030d.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_calc_po8030d.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_calc_po8030d.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_po3030k_registers.o: e_po3030k_registers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_po3030k_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po3030k_registers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_po3030k_registers.c  -o ${OBJECTDIR}/e_po3030k_registers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_po3030k_registers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_po3030k_registers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_po8030d_registers.o: e_po8030d_registers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_po8030d_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po8030d_registers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_po8030d_registers.c  -o ${OBJECTDIR}/e_po8030d_registers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_po8030d_registers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_po8030d_registers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"        -g -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/utilities.o: utilities.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/utilities.o.d 
	@${RM} ${OBJECTDIR}/utilities.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  utilities.c  -o ${OBJECTDIR}/utilities.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/utilities.o.d"        -g -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/utilities.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_motors_timer3.o: e_motors_timer3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_motors_timer3.o.d 
	@${RM} ${OBJECTDIR}/e_motors_timer3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_motors_timer3.c  -o ${OBJECTDIR}/e_motors_timer3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_motors_timer3.o.d"        -g -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_motors_timer3.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_init_port.o: e_init_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_init_port.o.d 
	@${RM} ${OBJECTDIR}/e_init_port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_init_port.c  -o ${OBJECTDIR}/e_init_port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_init_port.o.d"        -g -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_init_port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_lsm330.o: e_lsm330.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_lsm330.o.d 
	@${RM} ${OBJECTDIR}/e_lsm330.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_lsm330.c  -o ${OBJECTDIR}/e_lsm330.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_lsm330.o.d"        -g -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_lsm330.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_I2C_master_module.o: e_I2C_master_module.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_I2C_master_module.o.d 
	@${RM} ${OBJECTDIR}/e_I2C_master_module.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_I2C_master_module.c  -o ${OBJECTDIR}/e_I2C_master_module.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_I2C_master_module.o.d"        -g -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_I2C_master_module.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_I2C_protocol.o: e_I2C_protocol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_I2C_protocol.o.d 
	@${RM} ${OBJECTDIR}/e_I2C_protocol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_I2C_protocol.c  -o ${OBJECTDIR}/e_I2C_protocol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_I2C_protocol.o.d"        -g -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_I2C_protocol.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_calc_po6030k.o: e_calc_po6030k.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_calc_po6030k.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po6030k.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_calc_po6030k.c  -o ${OBJECTDIR}/e_calc_po6030k.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_calc_po6030k.o.d"        -g -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_calc_po6030k.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_common.o: e_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_common.o.d 
	@${RM} ${OBJECTDIR}/e_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_common.c  -o ${OBJECTDIR}/e_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_common.o.d"        -g -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_common.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_po6030k_registers.o: e_po6030k_registers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_po6030k_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po6030k_registers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_po6030k_registers.c  -o ${OBJECTDIR}/e_po6030k_registers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_po6030k_registers.o.d"        -g -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_po6030k_registers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_timers.o: e_timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_timers.o.d 
	@${RM} ${OBJECTDIR}/e_timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_timers.c  -o ${OBJECTDIR}/e_timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_timers.o.d"        -g -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_calc_po3030k.o: e_calc_po3030k.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_calc_po3030k.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po3030k.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_calc_po3030k.c  -o ${OBJECTDIR}/e_calc_po3030k.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_calc_po3030k.o.d"        -g -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_calc_po3030k.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_calc_po8030d.o: e_calc_po8030d.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_calc_po8030d.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po8030d.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_calc_po8030d.c  -o ${OBJECTDIR}/e_calc_po8030d.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_calc_po8030d.o.d"        -g -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_calc_po8030d.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_po3030k_registers.o: e_po3030k_registers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_po3030k_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po3030k_registers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_po3030k_registers.c  -o ${OBJECTDIR}/e_po3030k_registers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_po3030k_registers.o.d"        -g -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_po3030k_registers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/e_po8030d_registers.o: e_po8030d_registers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_po8030d_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po8030d_registers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  e_po8030d_registers.c  -o ${OBJECTDIR}/e_po8030d_registers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/e_po8030d_registers.o.d"        -g -omf=elf -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/e_po8030d_registers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/e_init_uart1.o: e_init_uart1.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_init_uart1.o.d 
	@${RM} ${OBJECTDIR}/e_init_uart1.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  e_init_uart1.s  -o ${OBJECTDIR}/e_init_uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf -Wa,-MD,"${OBJECTDIR}/e_init_uart1.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PICKIT2=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/e_init_uart1.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/e_init_uart2.o: e_init_uart2.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_init_uart2.o.d 
	@${RM} ${OBJECTDIR}/e_init_uart2.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  e_init_uart2.s  -o ${OBJECTDIR}/e_init_uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf -Wa,-MD,"${OBJECTDIR}/e_init_uart2.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PICKIT2=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/e_init_uart2.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/e_uart1_rx_char.o: e_uart1_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_uart1_rx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart1_rx_char.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  e_uart1_rx_char.s  -o ${OBJECTDIR}/e_uart1_rx_char.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf -Wa,-MD,"${OBJECTDIR}/e_uart1_rx_char.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PICKIT2=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/e_uart1_rx_char.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/e_uart1_tx_char.o: e_uart1_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_uart1_tx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart1_tx_char.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  e_uart1_tx_char.s  -o ${OBJECTDIR}/e_uart1_tx_char.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf -Wa,-MD,"${OBJECTDIR}/e_uart1_tx_char.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PICKIT2=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/e_uart1_tx_char.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/e_uart2_rx_char.o: e_uart2_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_uart2_rx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart2_rx_char.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  e_uart2_rx_char.s  -o ${OBJECTDIR}/e_uart2_rx_char.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf -Wa,-MD,"${OBJECTDIR}/e_uart2_rx_char.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PICKIT2=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/e_uart2_rx_char.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/e_uart2_tx_char.o: e_uart2_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_uart2_tx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart2_tx_char.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  e_uart2_tx_char.s  -o ${OBJECTDIR}/e_uart2_tx_char.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf -Wa,-MD,"${OBJECTDIR}/e_uart2_tx_char.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PICKIT2=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/e_uart2_tx_char.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/e_interrupt.o: e_interrupt.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_interrupt.o.d 
	@${RM} ${OBJECTDIR}/e_interrupt.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  e_interrupt.s  -o ${OBJECTDIR}/e_interrupt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf -Wa,-MD,"${OBJECTDIR}/e_interrupt.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PICKIT2=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/e_interrupt.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/e_init_uart1.o: e_init_uart1.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_init_uart1.o.d 
	@${RM} ${OBJECTDIR}/e_init_uart1.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  e_init_uart1.s  -o ${OBJECTDIR}/e_init_uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -Wa,-MD,"${OBJECTDIR}/e_init_uart1.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/e_init_uart1.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/e_init_uart2.o: e_init_uart2.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_init_uart2.o.d 
	@${RM} ${OBJECTDIR}/e_init_uart2.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  e_init_uart2.s  -o ${OBJECTDIR}/e_init_uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -Wa,-MD,"${OBJECTDIR}/e_init_uart2.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/e_init_uart2.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/e_uart1_rx_char.o: e_uart1_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_uart1_rx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart1_rx_char.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  e_uart1_rx_char.s  -o ${OBJECTDIR}/e_uart1_rx_char.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -Wa,-MD,"${OBJECTDIR}/e_uart1_rx_char.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/e_uart1_rx_char.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/e_uart1_tx_char.o: e_uart1_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_uart1_tx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart1_tx_char.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  e_uart1_tx_char.s  -o ${OBJECTDIR}/e_uart1_tx_char.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -Wa,-MD,"${OBJECTDIR}/e_uart1_tx_char.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/e_uart1_tx_char.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/e_uart2_rx_char.o: e_uart2_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_uart2_rx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart2_rx_char.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  e_uart2_rx_char.s  -o ${OBJECTDIR}/e_uart2_rx_char.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -Wa,-MD,"${OBJECTDIR}/e_uart2_rx_char.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/e_uart2_rx_char.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/e_uart2_tx_char.o: e_uart2_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_uart2_tx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart2_tx_char.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  e_uart2_tx_char.s  -o ${OBJECTDIR}/e_uart2_tx_char.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -Wa,-MD,"${OBJECTDIR}/e_uart2_tx_char.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/e_uart2_tx_char.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/e_interrupt.o: e_interrupt.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_interrupt.o.d 
	@${RM} ${OBJECTDIR}/e_interrupt.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  e_interrupt.s  -o ${OBJECTDIR}/e_interrupt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -Wa,-MD,"${OBJECTDIR}/e_interrupt.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/e_interrupt.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/ledtest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    p30F6014A.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/ledtest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf -Wl,,--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PICKIT2=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/ledtest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   p30F6014A.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/ledtest.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -Wl,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/ledtest.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
