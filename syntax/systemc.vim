"=============================================================================
" Vim syntax file for SystemC
" FILE: systemc.vim
" AUTHOR:  Kocha <kocha.lsifrontend@gmail.com>
" Last Modified: 16-Nov-2013.
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
" Version: 0.4.3, for Vim 7.3
"=============================================================================

" Source C++ Syntax
source $VIMRUNTIME/syntax/cpp.vim

" Library Class
syn match   SC_SCV_L /\(scv\:\:\)\w*/
syn match   SC_TLM_L /\(sc_core\:\:\|sc_dt\:\:\|tlm\:\:\|tlm_utils\:\:\)\w*/
syn match   SC_AMS_L /\(sca_tdf\:\:\|sca_util\:\:\|sca_lsf\:\:\|sca_eln\:\:\)\w*/

" Macros in SystemC
syn keyword SC_Macro IEEE_1666_SYSTEMC
syn keyword SC_Macro SC_VERSION_MAJOR SC_VERSION_MINOR SC_VERSION_PATCH
syn keyword SC_Macro SC_VERSION_ORIGINATOR SC_VERSION_RELEASE_DATE SC_VERSION_PRERELEASE
syn keyword SC_Macro SC_VERSION SC_COPYRIGHT
syn keyword SC_Macro SC_IS_PRERELEASE
syn keyword SC_Macro SC_DEFAULT_STACK_SIZE
syn keyword SC_Macro SC_RUN_TO_TIME SC_EXIT_ON_STARVATION
syn keyword SC_Macro SC_STOP_FINISH_DELTA SC_STOP_IMMEDIATE
syn keyword SC_Macro SC_ELABORATION SC_BEFORE_END_OF_ELABORATION SC_START_OF_SIMULATION
syn keyword SC_Macro SC_RUNNING SC_PAUSED SC_STOPPED SC_END_OF_SIMULATION
syn keyword SC_Macro SC_FORK SC_JOIN
syn keyword SC_Macro SC_PROTOCOL SC_CTHREAD SC_THREAD
syn keyword SC_Macro SC_CTOR SC_METHOD SC_MODULE SC_HAS_PROCESS
syn keyword SC_Macro SC_REPORT_INFO SC_REPORT_WARNING SC_REPORT_ERROR SC_REPORT_FATAL
syn keyword SC_Macro SC_REPORT_INFO_VERB
syn keyword SC_Macro SC_INFO SC_WARNING SC_ERROR SC_FATAL SC_MAX_SEVERITY
syn keyword SC_Macro SC_NONE SC_LOW SC_MEDIUM SC_HIGH SC_FULL SC_DEBUG
syn keyword SC_Macro SC_UNSPECIFIED SC_DO_NOTHING SC_THROW SC_LOG SC_DISPLAY
syn keyword SC_Macro SC_CACHE_REPORT SC_INTERRUPT SC_STOP SC_ABORT

" SystemC Functions
" match   is (class menber functions('.' or "->")) no argument
syn match   SC_Func /\(\.\|->\)get_value()/
syn match   SC_Func /\(\.\|->\)post()/
syn match   SC_Func /\(\.\|->\)trywait()/
syn match   SC_Func /\(\.\|->\)kind()/
syn match   SC_Func /\(\.\|->\)unlock()/
syn match   SC_Func /\(\.\|->\)trylock()/
syn match   SC_Func /\(\.\|->\)lock()/
syn match   SC_Func /\(\.\|->\)num_available()/
" syn keyword SC_Func nb_read nb_write
syn match   SC_Func /\(\.\|->\)negedge_event()/
syn match   SC_Func /\(\.\|->\)posedge_event()/
syn match   SC_Func /\(\.\|->\)default_event()/
syn match   SC_Func /\(\.\|->\)value_change_event()/
syn match   SC_Func /\(\.\|->\)duty_cycle()/
syn match   SC_Func /\(\.\|->\)name()/
syn match   SC_Func /\(\.\|->\)valid()/
syn match   SC_Func /\(\.\|->\)proc_kind()/
syn match   SC_Func /\(\.\|->\)period()/
syn match   SC_Func /\(\.\|->\)negedge()/
syn match   SC_Func /\(\.\|->\)posedge()/
syn match   SC_Func /\(\.\|->\)neg()/
syn match   SC_Func /\(\.\|->\)pos()/
syn match   SC_Func /\(\.\|->\)event()/
syn match   SC_Func /\(\.\|->\)suspend()/
syn match   SC_Func /\(\.\|->\)resume()/
syn match   SC_Func /\(\.\|->\)sync_reset_on()/
syn match   SC_Func /\(\.\|->\)sync_reset_off()/
syn match   SC_Func /\(\.\|->\)\(reset\|reset_event\)()/
syn match   SC_Func /\(\.\|->\)is_reset()/
syn match   SC_Func /\(\.\|->\)kill()/
syn match   SC_Func /\(\.\|->\)\(terminated\|terminated_event\)()/
syn match   SC_Func /\(\.\|->\)throw_it/
syn keyword SC_Func reset_signal_is async_reset_signal_is
syn keyword SC_Func initialize dont_initialize
syn keyword SC_Func next_trigger
syn match   SC_Func /\(\.\|->\)notify()/
syn keyword SC_Func wait
" syn keyword SC_Func read write
syn keyword SC_Func before_end_of_elaboration end_of_elaboration
syn keyword SC_Func start_of_simulation end_of_simulation
syn keyword SC_Func sc_time_stamp
syn keyword SC_Func sc_main
syn keyword SC_Func sc_start sc_stop
syn keyword SC_Func sc_create_vcd_trace_file sc_close_vcd_trace_file
syn keyword SC_Func sc_trace[_file] sc_write_comment
syn keyword SC_Func sc_set_time_resolution sc_set_default_time_unit
syn keyword SC_Func sc_get_default_time_unit sc_get_time_resolution
syn keyword SC_Func sc_assert sc_bind
syn keyword SC_Func sc_get_current_process_handle
syn keyword SC_Func sc_is_unwinding
syn keyword SC_Func sc_gen_unique_name

" These can be used as streams too
syn keyword SC_Func sensitive sensitive_neg sensitive_pos
syn keyword SC_Func to_string
syn match   SC_Func /to_\(bool\|char\|int\|uint\|short\|ushort\)()/
syn match   SC_Func /to_\(long\|ulong\|int64\|uint64\|double\|float\)()/
syn match   SC_Func /to_\(dec\|bin\|oct\|hex\)()/
syn match   SC_Func /to_\(and\|nand\|or\|nor\|xor\|xnor\)_reduce()/

" SystemC Communication classes
syn keyword SC_Comu sc_clock sc_in_clk sc_reset
syn keyword SC_Comu sc_buffer sc_fifo sc_fifo_in sc_fifo_out
syn keyword SC_Comu sc_fifo_nonblocking_in_if sc_fifo_blocking_in_if sc_fifo_in_if
syn keyword SC_Comu sc_fifo_nonblocking_out_if sc_fifo_blocking_out_if sc_fifo_out_if
syn keyword SC_Comu sc_event sc_event_queue sc_event_and_list sc_event_or_list
syn keyword SC_Comu sc_in sc_inout sc_out sc_in_rv sc_inout_rv sc_out_rv sc_signal
syn keyword SC_Comu sc_channel sc_port sc_export sc_interface sc_channel sc_prim_channel
syn keyword SC_Comu sc_semaphore sc_semaphore_if
syn keyword SC_Comu sc_mutex sc_mutex_if sc_host_mutex
syn keyword SC_Comu sc_process_handle
syn keyword SC_Comu sc_unwind_exception

" SystemC Utils classes
syn keyword SC_Util sc_report[_handler] sc_vector
syn keyword SC_Util sc_abs sc_max sc_min

" SystemC Datatypes and xxx classes
syn keyword SC_Type sc_object sc_attribute sc_attr_cltn
syn keyword SC_Type sc_module[_name] sc_spawn[_options]
syn keyword SC_Type sc_time sc_bit sc_bv sc_logic sc_lv
syn keyword SC_Type sc_signed sc_unsigned sc_int sc_uint sc_bigint sc_biguint
syn keyword SC_Type sc_fix[_fast] sc_fixed[_fast]
syn keyword SC_Type sc_ufix[_fast] sc_ufixed[_fast]
syn keyword SC_Type sc_fxval[_fast] sc_fxnum[_fast]

syn keyword SC_Type SC_ZERO_TIME SC_FS SC_PS SC_NS SC_US SC_MS SC_SEC
syn keyword SC_Type SC_DEC SC_CSD
syn keyword SC_Type SC_BIN SC_BIN_US SC_BIN_SM
syn keyword SC_Type SC_OCT SC_OCT_US SC_OCT_SM
syn keyword SC_Type SC_HEX SC_HEX_US SC_HEX_SM
syn keyword SC_Type SC_LOGIC_0 SC_LOGIC_1 SC_LOGIC_Z SC_LOGIC_X

" SCV classes
syn keyword SCV_Class scv_constraint_base scv_constraint
syn keyword SCV_Class scv_extension_base scv_extension scv_extensions
syn keyword SCV_Class scv_extension_util_if scv_extension_type_if
syn keyword SCV_Class scv_extension_rw_if scv_extension_rand_if scv_extension_callbacks_if
syn keyword SCV_Class scv_smart_ptr scv_smart_ptr_if
syn keyword SCV_Class scv_random scv_bag
syn keyword SCV_Class scv_tr_db scv_tr_stream scv_tr_generator scv_tr_handle
" syn keyword SCV_Class scv_tr_generator_base
syn keyword SCV_Class scv_sparse_array scv_severity scv_report
" syn keyword SCV_Class scv_report_handler
" SCV Functions
syn match   SCV_Func /\(\.\|->\)keep_only/
syn match   SCV_Func /\(\.\|->\)keep_out/
syn match   SCV_Func /\(\.\|->\)next()/
" Macros in SCV
syn keyword SCV_Macro SCV_CONSTRAINT SCV_CONSTRAINT_CTOR
syn keyword SCV_Macro SCV_SOFT_CONSTRAINT SCV_BASE_CONSTRAINT
syn keyword SCV_Macro SCV_EXTENSIONS SCV_EXTENSIONS_CTOR SCV_EXTENSIONS_BASE_CLASS
syn keyword SCV_Macro SCV_FIELD SCV_ENUM_EXTENSIONS SCV_ENUM_CTOR SCV_ENUM
syn keyword SCV_Macro SCV_UNSPECIFIED SCV_DO_NOTHING SCV_THROW SCV_LOG
syn keyword SCV_Macro SCV_DISPLAY SCV_CACHE_REPORT SCV_STOP SCV_ABORT SCV_INTERRUPT
" TLM classes
syn keyword TLM_Class tlm_quantumkeeper tlm_dmi
syn keyword TLM_Class tlm_transport_if tlm_fw_transport_if tlm_bw_transport_if tlm_transport_dbg_if
syn keyword TLM_Class tlm_mm_interface tlm_extension tlm_generic_payload tlm_phase tlm_sync_enum
syn keyword TLM_Class tlm_initiator_socket tlm_target_socket
syn keyword TLM_Class tlm_analysis_fifo tlm_analysis_if tlm_analysis_port
syn keyword TLM_Class tlm_array tlm_fifo
" TLM Functions
" match   is (class menber functions('.' or "->")) no argument
" syn match   TLM_Func /\(\.\|->\)/
syn keyword TLM_Func b_transport nb_transport_fw nb_transport_bw
syn keyword TLM_Func invalidate_direct_mem_ptr transport_dbg get_direct_mem_ptr

" Macros in SystemC-AMS
syn keyword SCA_Macro SCA_TDF_MODULE
syn keyword SCA_Macro SCA_CTOR

" And the highlighting
hi def link SC_SCV_L StorageClass
hi def link SC_TLM_L StorageClass
hi def link SC_AMS_L StorageClass
hi def link SC_Func Function
hi def link SC_Macro Constant
hi def link SC_Util Constant
hi def link SC_Comu Type
hi def link SC_Type Type
hi def link SCV_Class Type
hi def link SCV_Func Function
hi def link SCV_Macro Constant
hi def link TLM_Func SC_Func
hi def link TLM_Class Type
hi def link SCA_Macro Constant

" vim: foldmethod=marker
