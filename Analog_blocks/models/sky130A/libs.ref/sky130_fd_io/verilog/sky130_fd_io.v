/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_IO__TOP_XRES4V2_V
`define SKY130_FD_IO__TOP_XRES4V2_V

/**
 * top_xres4v2: XRES (Input buffer with Glitch filter).
 *
 * Verilog top module.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_xres4v2.pp.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_xres4v2.pp.behavioral.v"
`endif // FUNCTIONAL

`else  // USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_xres4v2.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_xres4v2.behavioral.v"
`endif // FUNCTIONAL

`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_IO__TOP_XRES4V2_V


//--------EOF---------

/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_IO__TOP_GPIOV2_V
`define SKY130_FD_IO__TOP_GPIOV2_V

/**
 * top_gpiov2: General Purpose I/0.
 *
 * Verilog top module.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_gpiov2.pp.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_gpiov2.pp.behavioral.v"
`endif // FUNCTIONAL

`else  // USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_gpiov2.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_gpiov2.behavioral.v"
`endif // FUNCTIONAL

`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_IO__TOP_GPIOV2_V


//--------EOF---------

/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_IO__TOP_POWER_HVC_WPAD_V
`define SKY130_FD_IO__TOP_POWER_HVC_WPAD_V

/**
 * top_power_hvc_wpad: A power pad with an ESD high-voltage clamp.
 *
 * Verilog top module.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_power_hvc_wpad.pp.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_power_hvc_wpad.pp.behavioral.v"
`endif // FUNCTIONAL

`else  // USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_power_hvc_wpad.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_power_hvc_wpad.behavioral.v"
`endif // FUNCTIONAL

`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_IO__TOP_POWER_HVC_WPAD_V


//--------EOF---------

/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_IO__TOP_GROUND_LVC_WPAD_V
`define SKY130_FD_IO__TOP_GROUND_LVC_WPAD_V

/**
 * top_ground_lvc_wpad: Base ground I/O pad with low voltage clamp.
 *
 * Verilog top module.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_ground_lvc_wpad.pp.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_ground_lvc_wpad.pp.behavioral.v"
`endif // FUNCTIONAL

`else  // USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_ground_lvc_wpad.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_ground_lvc_wpad.behavioral.v"
`endif // FUNCTIONAL

`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_IO__TOP_GROUND_LVC_WPAD_V


//--------EOF---------

/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_IO__TOP_GPIO_OVTV2_V
`define SKY130_FD_IO__TOP_GPIO_OVTV2_V

/**
 * top_gpio_ovtv2: General Purpose I/0.
 *
 * Verilog top module.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_gpio_ovtv2.pp.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_gpio_ovtv2.pp.behavioral.v"
`endif // FUNCTIONAL

`else  // USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_gpio_ovtv2.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_gpio_ovtv2.behavioral.v"
`endif // FUNCTIONAL

`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_IO__TOP_GPIO_OVTV2_V


//--------EOF---------

/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_IO__TOP_SIO_V
`define SKY130_FD_IO__TOP_SIO_V

/**
 * top_sio: Special I/O PAD that provides additionally a
 *          regulated output buffer and a differential input buffer.
 *          SIO cells are ONLY available IN pairs (see top_sio_macro).
 *
 * Verilog top module.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_sio.pp.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_sio.pp.behavioral.v"
`endif // FUNCTIONAL

`else  // USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_sio.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_sio.behavioral.v"
`endif // FUNCTIONAL

`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_IO__TOP_SIO_V


//--------EOF---------

/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_IO__TOP_SIO_MACRO_V
`define SKY130_FD_IO__TOP_SIO_MACRO_V

/**
 * top_sio_macro: sky130_fd_io__sio_macro consists of two SIO cells
 *                and a reference generator cell.
 *
 * Verilog top module.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_sio_macro.pp.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_sio_macro.pp.behavioral.v"
`endif // FUNCTIONAL

`else  // USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_sio_macro.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_sio_macro.behavioral.v"
`endif // FUNCTIONAL

`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_IO__TOP_SIO_MACRO_V


//--------EOF---------

/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_IO__TOP_REFGEN_NEW_V
`define SKY130_FD_IO__TOP_REFGEN_NEW_V

/**
 * top_refgen_new: The REFGEN block (sky130_fd_io__top_refgen) is used
 *                 to provide the input trip point (VINREF) for the
 *                 differential input buffer in SIO and also
 *                 the output buffer regulated output level (VOUTREF).
 *
 * Verilog top module.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_refgen_new.pp.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_refgen_new.pp.behavioral.v"
`endif // FUNCTIONAL

`else  // USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_refgen_new.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_refgen_new.behavioral.v"
`endif // FUNCTIONAL

`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_IO__TOP_REFGEN_NEW_V


//--------EOF---------

/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_IO__TOP_POWER_HVC_WPADV2_V
`define SKY130_FD_IO__TOP_POWER_HVC_WPADV2_V

/**
 * top_power_hvc_wpadv2: A power pad with an ESD high-voltage clamp.
 *
 * Verilog top module.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_power_hvc_wpadv2.pp.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_power_hvc_wpadv2.pp.behavioral.v"
`endif // FUNCTIONAL

`else  // USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_power_hvc_wpadv2.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_power_hvc_wpadv2.behavioral.v"
`endif // FUNCTIONAL

`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_IO__TOP_POWER_HVC_WPADV2_V


//--------EOF---------

/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_IO__TOP_POWER_LVC_WPAD_V
`define SKY130_FD_IO__TOP_POWER_LVC_WPAD_V

/**
 * top_power_lvc_wpad: A power pad with an ESD low-voltage clamp.
 *
 * Verilog top module.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_power_lvc_wpad.pp.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_power_lvc_wpad.pp.behavioral.v"
`endif // FUNCTIONAL

`else  // USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_power_lvc_wpad.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_power_lvc_wpad.behavioral.v"
`endif // FUNCTIONAL

`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_IO__TOP_POWER_LVC_WPAD_V


//--------EOF---------

/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_IO__TOP_REFGEN_V
`define SKY130_FD_IO__TOP_REFGEN_V

/**
 * top_refgen: The REFGEN block (sky130_fd_io__top_refgen) is used to
 *             provide the input trip point (VINREF) for the
 *             differential input buffer in SIO and also
 *             the output buffer regulated output level (VOUTREF).
 *             Verilog HDL for "sky130_fd_io",
 *             "sky130_fd_io_top_refgen" "behavioral_tmp".
 *
 * Verilog top module.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_refgen.pp.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_refgen.pp.behavioral.v"
`endif // FUNCTIONAL

`else  // USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_refgen.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_refgen.behavioral.v"
`endif // FUNCTIONAL

`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_IO__TOP_REFGEN_V


//--------EOF---------

/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_IO__TOP_GROUND_HVC_WPAD_V
`define SKY130_FD_IO__TOP_GROUND_HVC_WPAD_V

/**
 * top_ground_hvc_wpad: Ground pad.
 *
 * Verilog top module.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_ground_hvc_wpad.pp.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_ground_hvc_wpad.pp.behavioral.v"
`endif // FUNCTIONAL

`else  // USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_io__top_ground_hvc_wpad.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_io__top_ground_hvc_wpad.behavioral.v"
`endif // FUNCTIONAL

`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_IO__TOP_GROUND_HVC_WPAD_V


//--------EOF---------
