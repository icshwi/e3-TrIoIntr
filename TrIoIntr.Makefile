#
#  Copyright (c) 2018 - Present  European Spallation Source ERIC
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
# 
# Author  : Jeong Han Lee
# email   : jeonghan.lee@gmail.com
# Date    : Monday, July 16 23:21:48 CEST 2018
# version : 0.0.1


where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
include $(E3_REQUIRE_TOOLS)/driver.makefile

# If one would like to use the module dependency restrictly,
# one should look at other modules makefile to add more
# In most case, one should ignore the following lines:

#ifneq ($(strip $(ASYN_DEP_VERSION)),)
#asyn_VERSION=$(ASYN_DEP_VERSION)
#endif

# Exclude linux-ppc64e6500
EXCLUDE_ARCHS = linux-ppc64e6500


APP:=iointrApp
APPDB:=$(APP)/Db
APPSRC:=$(APP)/src

TEMPLATES += $(wildcard $(APPDB)/*.db)

DBDS += $(APPSRC)/dev_ai_io_intr.dbd

SOURCES += $(APPSRC)/dev_ai_io_intr.c

## This RULE should be used in case of inflating DB files 
## db rule is the default in RULES_DB, so add the empty one
## Please look at e3-mrfioc2 for example.

db: 

.PHONY: db 

# EPICS_BASE_HOST_BIN = $(EPICS_BASE)/bin/$(EPICS_HOST_ARCH)
# MSI = $(EPICS_BASE_HOST_BIN)/msi
#
# USR_DBFLAGS += -I . -I ..
# USR_DBFLAGS += -I $(EPICS_BASE)/db
# USR_DBFLAGS += -I $(APPDB)
#
# SUBS=$(wildcard $(APPDB)/*.substitutions)
# TMPS=$(wildcard $(APPDB)/*.template)
#
# db: $(SUBS) $(TMPS)

# $(SUBS):
#	@printf "Inflating database ... %44s >>> %40s \n" "$@" "$(basename $(@)).db"
#	@rm -f  $(basename $(@)).db.d  $(basename $(@)).db
#	@$(MSI) -D $(USR_DBFLAGS) -o $(basename $(@)).db -S $@  > $(basename $(@)).db.d
#	@$(MSI)    $(USR_DBFLAGS) -o $(basename $(@)).db -S $@

# $(TMPS):
#	@printf "Inflating database ... %44s >>> %40s \n" "$@" "$(basename $(@)).db"
#	@rm -f  $(basename $(@)).db.d  $(basename $(@)).db
#	@$(MSI) -D $(USR_DBFLAGS) -o $(basename $(@)).db $@  > $(basename $(@)).db.d
#	@$(MSI)    $(USR_DBFLAGS) -o $(basename $(@)).db $@

#
# .PHONY: db $(SUBS) $(TMPS)

vlibs:

.PHONY: vlibs
