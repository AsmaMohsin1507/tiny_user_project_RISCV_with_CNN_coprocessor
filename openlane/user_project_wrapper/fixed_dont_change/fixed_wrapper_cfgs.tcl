# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

# DON'T TOUCH THE FOLLOWING SECTIONS

# This makes sure that the core rings are outside the boundaries
# of your block.
set ::env(MAGIC_ZEROIZE_ORIGIN) 0

set ::env(FP_DEF_TEMPLATE) $::env(DESIGN_DIR)/fixed_dont_change/user_project_wrapper_gf180mcu.def

# Area Configurations. DON'T TOUCH.
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 3000 3000"
set ::env(CORE_AREA) "21.5 21.5 2978.5 2978.5"

set ::env(RUN_CVC) 0

set ::unit 2.4
set ::env(FP_IO_VEXTEND) [expr 2*$::unit]
set ::env(FP_IO_HEXTEND) [expr 2*$::unit]
set ::env(FP_IO_VLENGTH) $::unit
set ::env(FP_IO_HLENGTH) $::unit

set ::env(FP_IO_VTHICKNESS_MULT) 4
set ::env(FP_IO_HTHICKNESS_MULT) 4

# Power & Pin Configurations. DON'T TOUCH.
set ::env(FP_PDN_CORE_RING) 1
set ::env(FP_PDN_CORE_RING_VWIDTH) 3.1
set ::env(FP_PDN_CORE_RING_HWIDTH) 3.1
set ::env(FP_PDN_CORE_RING_VOFFSET) 14
set ::env(FP_PDN_CORE_RING_HOFFSET) $::env(FP_PDN_CORE_RING_VOFFSET)
set ::env(FP_PDN_CORE_RING_VSPACING) 1.7
set ::env(FP_PDN_CORE_RING_HSPACING) $::env(FP_PDN_CORE_RING_VSPACING)
set ::env(FP_PDN_HOFFSET) 5
set ::env(FP_PDN_HPITCH) [expr 60 + abs(int($::env(FP_PDN_HPITCH_MULT))) * 30]

set ::env(FP_PDN_VWIDTH) 3.1
set ::env(FP_PDN_HWIDTH) 3.1
set ::env(FP_PDN_VSPACING) [expr 5*$::env(FP_PDN_CORE_RING_VWIDTH)]
set ::env(FP_PDN_HSPACING) 26.9

set ::env(VDD_NETS) [list {vdd}]
set ::env(GND_NETS) [list {vss}]
set ::env(SYNTH_USE_PG_PINS_DEFINES) "USE_POWER_PINS"
