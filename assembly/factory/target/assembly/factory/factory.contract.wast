(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $i32_i32_i32_=>_i64 (func (param i32 i32 i32) (result i64)))
 (type $none_=>_none (func))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i64_i32_i64_=>_none (func (param i32 i64 i32 i64)))
 (type $i64_i64_i64_=>_none (func (param i64 i64 i64)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i64_i32_i32_i32_i32_=>_i32 (func (param i64 i32 i32 i32 i32) (result i32)))
 (type $i64_i64_i64_=>_i32 (func (param i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i32_=>_i32 (func (param i64 i64 i64 i32) (result i32)))
 (type $i64_i64_i64_i32_i64_=>_i32 (func (param i64 i64 i64 i32 i64) (result i32)))
 (type $i64_i64_i64_i64_i32_=>_i32 (func (param i64 i64 i64 i64 i32) (result i32)))
 (type $i64_i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (import "env" "require_auth" (func $~lib/as-chain/env/require_auth (param i64)))
 (import "env" "eosio_assert" (func $~lib/as-chain/env/eosio_assert (param i32 i32)))
 (import "env" "db_find_i64" (func $~lib/as-chain/env/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $~lib/as-chain/env/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "memcpy" (func $~lib/as-chain/env/memcpy (param i32 i32 i32) (result i32)))
 (import "env" "db_store_i64" (func $~lib/as-chain/env/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "is_account" (func $~lib/as-chain/env/is_account (param i64) (result i32)))
 (import "env" "db_lowerbound_i64" (func $~lib/as-chain/env/db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_end_i64" (func $~lib/as-chain/env/db_end_i64 (param i64 i64 i64) (result i32)))
 (import "env" "db_previous_i64" (func $~lib/as-chain/env/db_previous_i64 (param i32 i32) (result i32)))
 (import "env" "current_time" (func $~lib/as-chain/env/current_time (result i64)))
 (import "env" "send_inline" (func $~lib/as-chain/env/send_inline (param i32 i32)))
 (import "env" "db_remove_i64" (func $~lib/as-chain/env/db_remove_i64 (param i32)))
 (import "env" "db_update_i64" (func $~lib/as-chain/env/db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "action_data_size" (func $~lib/as-chain/env/action_data_size (result i32)))
 (import "env" "read_action_data" (func $~lib/as-chain/env/read_action_data (param i32 i32) (result i32)))
 (import "env" "set_action_return_value" (func $~lib/as-chain/env/set_action_return_value (param i32 i32)))
 (import "env" "db_idx64_store" (func $~lib/as-chain/env/db_idx64_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx64_find_primary" (func $~lib/as-chain/env/db_idx64_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx64_remove" (func $~lib/as-chain/env/db_idx64_remove (param i32)))
 (import "env" "db_idx64_update" (func $~lib/as-chain/env/db_idx64_update (param i32 i64 i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/name/EMPTY_NAME (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $assembly/factory/factory.contract/Factory i32 (i32.const 7))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\03\00\00\00\08\00\00\00\01")
 (data (i32.const 1068) "<")
 (data (i32.const 1084) " \00\00\00.12345abcdefghijklmnopqrstuvwxyz")
 (data (i32.const 1132) ",")
 (data (i32.const 1144) "\04\00\00\00\10\00\00\00@\04\00\00@\04\00\00 \00\00\00 ")
 (data (i32.const 1180) "\dc")
 (data (i32.const 1192) "\01\00\00\00\cc\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00u\00p\00d\00a\00t\00e\00\'\00 \00i\00f\00 \00y\00o\00u\00 \00w\00i\00s\00h\00 \00t\00o\00 \00u\00p\00d\00a\00t\00e\00 \00v\00a\00l\00u\00e")
 (data (i32.const 1404) "\dc")
 (data (i32.const 1416) "\01\00\00\00\c0\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00u\00p\00d\00a\00t\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00t\00o\00 \00s\00a\00v\00e\00 \00v\00a\00l\00u\00e\00 \00f\00i\00r\00s\00t")
 (data (i32.const 1628) "\dc")
 (data (i32.const 1640) "\01\00\00\00\c0\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00r\00e\00m\00o\00v\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00t\00o\00 \00s\00a\00v\00e\00 \00v\00a\00l\00u\00e\00 \00f\00i\00r\00s\00t")
 (data (i32.const 1852) "\8c")
 (data (i32.const 1864) "\01\00\00\00t\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00f\00i\00n\00d\00 \00\'\00n\00e\00x\00t\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00c\00u\00r\00r\00e\00n\00t\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 1996) "\8c")
 (data (i32.const 2008) "\01\00\00\00|\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00f\00i\00n\00d\00 \00\'\00p\00r\00e\00v\00i\00o\00u\00s\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00c\00u\00r\00r\00e\00n\00t\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 2140) "|")
 (data (i32.const 2152) "\01\00\00\00f\00\00\00n\00e\00x\00t\00 \00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00i\00s\00 \00a\00t\00 \00a\00u\00t\00o\00i\00n\00c\00r\00e\00m\00e\00n\00t\00 \00l\00i\00m\00i\00t")
 (data (i32.const 2268) "\1c")
 (data (i32.const 2300) "\1c")
 (data (i32.const 2332) "L")
 (data (i32.const 2344) "\01\00\00\00:\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00I\00N\00V\00A\00L\00I\00D\00_\00A\00M\00M\00_\00C\00O\00N\00T\00R\00A\00C\00T")
 (data (i32.const 2412) "L")
 (data (i32.const 2424) "\01\00\00\006\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00I\00N\00V\00A\00L\00I\00D\00_\00F\00E\00E\00_\00S\00E\00T\00T\00E\00R")
 (data (i32.const 2492) "\\")
 (data (i32.const 2504) "\01\00\00\00>\00\00\00D\00e\00c\00o\00d\00e\00r\00.\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2588) "L")
 (data (i32.const 2600) "\01\00\00\008\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00A\00L\00R\00E\00A\00D\00Y\00_\00I\00N\00I\00T\00I\00A\00L\00I\00Z\00E\00D")
 (data (i32.const 2668) "L")
 (data (i32.const 2680) "\01\00\00\00.\00\00\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2748) "L")
 (data (i32.const 2760) "\01\00\00\002\00\00\00c\00h\00e\00c\00k\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2828) "<")
 (data (i32.const 2840) "\01\00\00\00&\00\00\00n\00o\00 \00s\00e\00c\00o\00n\00d\00a\00r\00y\00 \00v\00a\00l\00u\00e\00!")
 (data (i32.const 2892) "L")
 (data (i32.const 2904) "\01\00\00\008\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00I\00D\00E\00N\00T\00I\00C\00A\00L\00_\00A\00D\00D\00R\00E\00S\00S\00E\00S")
 (data (i32.const 2972) "<")
 (data (i32.const 2984) "\01\00\00\00*\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00Z\00E\00R\00O\00_\00A\00D\00D\00R\00E\00S\00S")
 (data (i32.const 3036) "L")
 (data (i32.const 3048) "\01\00\00\006\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00I\00N\00V\00A\00L\00I\00D\00_\00C\00O\00N\00T\00R\00A\00C\00T\00_\00A")
 (data (i32.const 3116) "L")
 (data (i32.const 3128) "\01\00\00\006\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00I\00N\00V\00A\00L\00I\00D\00_\00C\00O\00N\00T\00R\00A\00C\00T\00_\00B")
 (data (i32.const 3196) "L")
 (data (i32.const 3208) "\01\00\00\00:\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00C\00O\00N\00T\00R\00A\00C\00T\00_\00A\00_\00N\00O\00T\00_\00F\00O\00U\00N\00D")
 (data (i32.const 3276) "L")
 (data (i32.const 3288) "\01\00\00\00:\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00C\00O\00N\00T\00R\00A\00C\00T\00_\00B\00_\00N\00O\00T\00_\00F\00O\00U\00N\00D")
 (data (i32.const 3356) "\\")
 (data (i32.const 3368) "\01\00\00\00B\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00I\00N\00V\00A\00L\00I\00D\00_\00S\00Y\00M\00B\00O\00L\00_\00C\00H\00A\00R\00A\00C\00T\00E\00R")
 (data (i32.const 3452) "<")
 (data (i32.const 3464) "\01\00\00\00\1e\00\00\00b\00a\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 3516) "<")
 (data (i32.const 3528) "\01\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 3580) "\1c")
 (data (i32.const 3592) "\01")
 (data (i32.const 3612) "\1c")
 (data (i32.const 3644) "<")
 (data (i32.const 3656) "\01\00\00\00\1e\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00T\00O\00K\00E\00N\00 ")
 (data (i32.const 3708) ",")
 (data (i32.const 3720) "\01\00\00\00\1c\00\00\00 \00N\00O\00T\00 \00F\00O\00U\00N\00D\00 \00I\00N\00 ")
 (data (i32.const 3756) ",")
 (data (i32.const 3768) "*\00\00\00\14\00\00\00P\0e\00\00\00\00\00\00\90\0e\00\00\00\00\00\00\10\0e")
 (data (i32.const 3804) "<")
 (data (i32.const 3816) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 3868) "L")
 (data (i32.const 3880) "\01\00\00\00:\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00W\00R\00O\00N\00G\00 \00P\00R\00E\00C\00I\00S\00I\00O\00N\00 \00F\00O\00R\00 ")
 (data (i32.const 3948) "\1c")
 (data (i32.const 3960) "*\00\00\00\0c\00\00\000\0f\00\00\00\00\00\00\10\0e")
 (data (i32.const 3980) "\12\10\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\10\10\"\10\10\10#$%&\'()\10*+\10\10\10\10\10\10\10\10\10\10\10,-.\10/\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\100\10\10\101\10234567\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\108\10\109:\10;<=\10\10\10\10\10\10>\10\10?@ABCDEFGHIJKL\10MNO\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10P\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10QR\10\10\10S\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10T\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10UV\10\10\10\10\10\10\10W\10\10\10\10\10XYZ\10\10\10\10\10[\\\10\10\10\10\10\10\10\10\10]\10\10\10\10\10\10\10\10\10\10\10\10")
 (data (i32.const 4524) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\80@\00\04\00\00\00@\01\00\00\00\00\00\00\00\00\a1\90\01")
 (data (i32.const 4610) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff0\04\b0")
 (data (i32.const 4668) "\f8\03")
 (data (i32.const 4695) "\82\00\00\00\00\00\00\fe\ff\ff\ff\ff\bf\b6\00\00\00\00\00\10\00?\00\ff\17\00\00\00\00\01\f8\ff\ff\00\00\01")
 (data (i32.const 4742) "\c0\bf\ff=\00\00\00\80\02\00\00\00\ff\ff\ff\07")
 (data (i32.const 4768) "\c0\ff\01\00\00\00\00\00\00\f8?$\00\00\c0\ff\ff?\00\00\00\00\00\0e")
 (data (i32.const 4806) "\f8\ff\ff\ff\ff\ff\07\00\00\00\00\00\00\14\fe!\fe\00\0c\00\02\00\02\00\00\00\00\00\00\10\1e \00\00\0c\00\00@\06\00\00\00\00\00\00\10\869\02\00\00\00#\00\06\00\00\00\00\00\00\10\be!\00\00\0c\00\00\fc\02\00\00\00\00\00\00\90\1e `\00\0c\00\00\00\04\00\00\00\00\00\00\00\01 \00\00\00\00\00\00\11\00\00\00\00\00\00\c0\c1=`\00\0c\00\00\00\02\00\00\00\00\00\00\90@0\00\00\0c\00\00\00\03\00\00\00\00\00\00\18\1e \00\00\0c\00\00\00\02\00\00\00\00\00\00\00\00\04\\")
 (data (i32.const 4978) "\f2\07\c0\7f")
 (data (i32.const 4994) "\f2\1f@?")
 (data (i32.const 5007) "\03\00\00\a0\02\00\00\00\00\00\00\fe\7f\df\e0\ff\fe\ff\ff\ff\1f@")
 (data (i32.const 5041) "\e0\fdf\00\00\00\c3\01\00\1e\00d \00 ")
 (data (i32.const 5067) "\10")
 (data (i32.const 5079) "\e0")
 (data (i32.const 5102) "\1c\00\00\00\1c\00\00\00\0c\00\00\00\0c\00\00\00\00\00\00\00\b0?@\fe\8f \00\00\00\00\00x\00\00\00\00\00\00\08\00\00\00\00\00\00\00`\00\00\00\00\02")
 (data (i32.const 5168) "\87\01\04\0e")
 (data (i32.const 5198) "\80\t\00\00\00\00\00\00@\7f\e5\1f\f8\9f\00\00\00\00\80\00\ff\ff\01\00\00\00\00\00\00\00\0f\00\00\00\00\00\d0\17\04\00\00\00\00\f8\0f\00\03\00\00\00<;\00\00\00\00\00\00@\a3\03\00\00\00\00\00\00\f0\cf\00\00\00\00\00\00\00\00?")
 (data (i32.const 5286) "\f7\ff\fd!\10\03\00\00\00\00\00\f0\ff\ff\ff\ff\ff\ff\ff\07\00\01\00\00\00\f8\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\fb")
 (data (i32.const 5347) "\a0\03\e0\00\e0\00\e0\00`\00\f8\00\03\90|\00\00\00\00\00\00\df\ff\02\80\00\00\ff\1f\00\00\00\00\00\00\ff\ff\ff\ff\01")
 (data (i32.const 5403) "0")
 (data (i32.const 5417) "\80\03")
 (data (i32.const 5433) "\80\00\80")
 (data (i32.const 5448) "\ff\ff\ff\ff\00\00\00\00\00\80")
 (data (i32.const 5484) " \00\00\00\00<>\08")
 (data (i32.const 5503) "~")
 (data (i32.const 5515) "p\00\00 ")
 (data (i32.const 5579) "?\00\10")
 (data (i32.const 5593) "\80\f7\bf\00\00\00\f0")
 (data (i32.const 5610) "\03\00\ff\ff\ff\ff\03")
 (data (i32.const 5626) "\01\00\00\07")
 (data (i32.const 5643) "\03D\08\00\00`\10")
 (data (i32.const 5668) "0\00\00\00\ff\ff\03\80\00\00\00\00\c0?\00\00\80\ff\03\00\00\00\00\00\07\00\00\00\00\00\c83\00\80\00\00`\00\00\00\00\00\00\00\00~f\00\08\10\00\00\00\00\01\10\00\00\00\00\00\00\9d\c1\02\00\00 \000X")
 (data (i32.const 5751) "\f8\00\0e")
 (data (i32.const 5768) " !\00\00\00\00\00@")
 (data (i32.const 5794) "\fc\ff\03\00\00\00\00\00\00\00\ff\ff\08\00\ff\ff\00\00\00\00$")
 (data (i32.const 5835) "\80\80@\00\04\00\00\00@\01\00\00\00\00\00\01\00\00\00\00\c0\00\00\00\00\00\00\00\00\08\00\00\0e")
 (data (i32.const 5899) " ")
 (data (i32.const 5928) "\01")
 (data (i32.const 5946) "\c0\07")
 (data (i32.const 5964) "n\f0\00\00\00\00\00\87")
 (data (i32.const 5992) "`\00\00\00\00\00\00\00\f0")
 (data (i32.const 6049) "\18")
 (data (i32.const 6068) "\c0\ff\01")
 (data (i32.const 6092) "\02\00\00\00\00\00\00\ff\7f\00\00\00\00\00\00\80\03\00\00\00\00\00x&\00 \00\00\00\00\00\00\07\00\00\00\80\ef\1f\00\00\00\00\00\00\00\08\00\03\00\00\00\00\00\c0\7f\00\9e")
 (data (i32.const 6161) "\80\d3@")
 (data (i32.const 6183) "\80\f8\07\00\00\03\00\00\00\00\00\00\18\01\00\00\00\c0\1f\1f")
 (data (i32.const 6227) "\ff\\\00\00@")
 (data (i32.const 6242) "\f8\85\0d")
 (data (i32.const 6274) "<\b0\01\00\000")
 (data (i32.const 6290) "\f8\a7\01")
 (data (i32.const 6305) "(\bf")
 (data (i32.const 6319) "\e0\bc\0f")
 (data (i32.const 6353) "\80\ff\06")
 (data (i32.const 6387) "X\08")
 (data (i32.const 6406) "\f0\0c\01\00\00\00\fe\07\00\00\00\00\f8y\80\00~\0e\00\00\00\00\00\fc\7f\03")
 (data (i32.const 6450) "\7f\bf")
 (data (i32.const 6462) "\fc\ff\ff\fcm")
 (data (i32.const 6482) "~\b4\bf")
 (data (i32.const 6494) "\a3")
 (data (i32.const 6538) "\18\00\00\00\00\00\00\00\ff\01")
 (data (i32.const 6602) "\1f\00\00\00\00\00\00\00\7f\00\0f")
 (data (i32.const 6645) "\80\00\00\00\00\00\00\00\80\ff\ff\00\00\00\00\00\00\00\00\1b")
 (data (i32.const 6687) "`\0f")
 (data (i32.const 6712) "\80\03\f8\ff\e7\0f\00\00\00<")
 (data (i32.const 6740) "\1c")
 (data (i32.const 6764) "\ff\ff\ff\ff\ff\ff\7f\f8\ff\ff\ff\ff\ff\1f \00\10\00\00\f8\fe\ff")
 (data (i32.const 6796) "\7f\ff\ff\f9\db\07")
 (data (i32.const 6834) "\ff?")
 (data (i32.const 6889) "\f0")
 (data (i32.const 6918) "\7f")
 (data (i32.const 6932) "\f0\0f")
 (data (i32.const 6987) "\f8")
 (data (i32.const 6988) "\12\13\14\15\16\17\10\10\10\10\10\10\10\10\10\10\18\10\10\19\10\10\10\10\10\10\10\10\1a\1b\11\1c\1d\1e\10\10\1f\10\10\10\10\10\10\10 !\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\"#\10\10\10$\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10%\10\10\10&\10\10\10\10\'\10\10\10\10\10\10\10(\10\10\10\10\10\10\10\10\10\10\10)\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10*\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10+,-.\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10/\10\10\10\10\10\10\100\10\10\10\10\10\10\10\10\10\10\10\10\10\10")
 (data (i32.const 7532) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\fe\ff\ff\07\fe\ff\ff\07\00\00\00\00\00\04 \04\ff\ff\7f\ff\ff\ff\7f\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\f7\f0\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ef\ff\ff\ff\ff\01\03\00\00\00\1f")
 (data (i32.const 7668) " \00\00\00\00\00\cf\bc@\d7\ff\ff\fb\ff\ff\ff\ff\ff\ff\ff\ff\ff\bf\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\03\fc\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\fe\ff\ff\ff\7f\00\ff\ff\ff\ff\ff\01")
 (data (i32.const 7776) "\ff\ff\ff\ff\bf \ff\ff\ff\ff\ff\e7")
 (data (i32.const 7808) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff??")
 (data (i32.const 7836) "\ff\01\ff\ff\ff\ff\ff\e7\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\ff\ff??\ff\ff\ff\ff??\ff\aa\ff\ff\ff?\ff\ff\ff\ff\ff\ff\df_\dc\1f\cf\0f\ff\1f\dc\1f")
 (data (i32.const 7930) "\02\80\00\00\ff\1f")
 (data (i32.const 7948) "\84\fc/>P\bd\1f\f2\e0C\00\00\ff\ff\ff\ff\18")
 (data (i32.const 8002) "\c0\ff\ff\ff\ff\ff\ff\03\00\00\ff\ff\ff\ff\ff\7f\ff\ff\ff\ff\ff\7f\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\1fx\0c\00\ff\ff\ff\ff\bf ")
 (data (i32.const 8084) "\ff\ff\ff\ff\ff?\00\00\ff\ff\ff?")
 (data (i32.const 8112) "\fc\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ffx\ff\ff\ff\ff\ff\ff\fc\07\00\00\00\00`\07\00\00\00\00\00\00\ff\ff\ff\ff\ff\f7\ff\01\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\7f\00\f8")
 (data (i32.const 8208) "\fe\ff\ff\07\fe\ff\ff\07")
 (data (i32.const 8236) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 8258) "\ff\ff\ff\ff\0f\ff\ff\ff\ff\0f")
 (data (i32.const 8284) "\ff\ff\ff\ff\ff\ff\07\00\ff\ff\ff\ff\ff\ff\07")
 (data (i32.const 8320) "\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 8340) "\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 8364) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\df\ff\ff\ff\ff\ff\ff\ff\ff\dfd\de\ff\eb\ef\ff\ff\ff\ff\ff\ff\ff\bf\e7\df\df\ff\ff\ff{_\fc\fd\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff?\ff\ff\ff\fd\ff\ff\f7\ff\ff\ff\f7\ff\ff\df\ff\ff\ff\df\ff\ff\7f\ff\ff\ff\7f\ff\ff\ff\fd\ff\ff\ff\fd\ff\ff\f7\0f\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\0f")
 (data (i32.const 8530) "\ff\ff\ff\03\ff\ff\ff\03\ff\ff\ff\03")
 (data (i32.const 8556) "\07\08\t\n\0b\0c\06\06\06\06\06\06\06\06\06\06\0d\06\06\0e\06\06\06\06\06\06\06\06\0f\10\11\12\06\13\06\06\06\06\06\06\06\06\06\06\14\15\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\16\17\06\06\06\18\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\19\06\06\06\06\1a\06\06\06\06\06\06\06\1b\06\06\06\06\06\06\06\06\06\06\06\1c\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\1d\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\1e\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06")
 (data (i32.const 9179) "$++++++++\01\00TVVVVVVVV")
 (data (i32.const 9218) "\18\00\00\00+++++++\07++[VVVVVVVJVV\051P1P1P1P1P1P1P1P$Py1P1P18P1P1P1P1P1P1P1PN1\02N\0d\0dN\03N\00$n\00N1&nQN$PN9\14\81\1b\1d\1dS1P1P\0d1P1P1P\1bS$P1\02\\{\\{\\{\\{\\{\14y\\{\\{\\-+I\03H\03x\\{\14\00\96\n\01+(\06\06\00*\06**+\07\bb\b5+\1e\00+\07+++\01++++++++++++++++++++++++++++++++\01+++++++++++++++++++++++*+++++++++++++\cdF\cd+\00%+\07\01\06\01UVVVVVUVV\02$\81\81\81\81\81\15\81\81\81\00\00+\00\b2\d1\b2\d1\b2\d1\b2\d1\00\00\cd\cc\01\00\d7\d7\d7\d7\d7\83\81\81\81\81\81\81\81\81\81\81\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\1c\00\00\00\00\001P1P1P1P1P1\02\00\001P1P1P1P1P1P1P1P1PN1P1PN1P1P1P1P1P1P1P1\02\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6*++++++++++++\00\00\00TVVVVVVVVVVVV")
 (data (i32.const 9727) "TVVVVVVVVVVVV\0c\00\0c*+++++++++++++\07*\01")
 (data (i32.const 9813) "*++++++++++++++++++++++++++VVl\81\15\00++++++++++++++++++++++++++++++++++++++++++\07l\03A++VVVVVVVVVVVVVV,V+++++++++++++++++++++\01")
 (data (i32.const 9972) "\0cl\00\00\00\00\00\06")
 (data (i32.const 10018) "\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%Vz\9e&\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06\01++OVV,+\7fVV9++UVV++OVV,+\7fVV\817u[{\\++OVV\02\ac\04\00\009++UVV++OVV,++VV2\13\81W\00o\81~\c9\d7~-\81\81\0e~9\7foW\00\81\81~\15\00~\03++++++++++++\07+$+\97+++++++++*+++++VVVVV\80\81\81\81\819\bb*++++++++++++++++++++++++++++++++++++++++\01\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\c9\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\d0\0d\00N1\02\b4\c1\c1\d7\d7$P1P1P1P1P1P1P1P1P1P1P1P1P1P1P1P1P\d7\d7S\c1G\d4\d7\d7\d7\05++++++++++++\07\01\00\01")
 (data (i32.const 10469) "N1P1P1P1P1P1P1P\0d\00\00\00\00\00$P1P1P1P1P")
 (data (i32.const 10534) "+++++++++++y\\{\\{O{\\{\\{\\{\\{\\{\\{\\{\\{\\{\\-++y\14\\{\\-y*\\\'\\{\\{\\{\a4\00\n\b4\\{\\{O\03x8+++++++++++++O-++\01")
 (data (i32.const 10647) "H")
 (data (i32.const 10657) "*++++++++++++++++++++++++++")
 (data (i32.const 10717) "++++++++\07\00HVVVVVVVV\02")
 (data (i32.const 10792) "+++++++++++++UVVVVVVVVVVVV\0e")
 (data (i32.const 10850) "$+++++++++++\07\00VVVVVVVVVVVV")
 (data (i32.const 10920) "$++++++++++++++++\07\00\00\00\00VVVVVVVVVVVVVVVVV")
 (data (i32.const 11017) "*++++++++++VVVVVVVVVV\0e")
 (data (i32.const 11071) "*++++++++++VVVVVVVVVV\0e")
 (data (i32.const 11136) "+++++++++++UVVVVVVVVVV\0e")
 (data (i32.const 11225) "\08\00\00V\01\00\009")
 (data (i32.const 11240) "\01 \00\00\00\e0\ff\ff\00\bf\1d\00\00\e7\02\00\00y\00\00\02$\00\00\01\01\00\00\00\ff\ff\ff\00\00\00\00\01\02\00\00\00\fe\ff\ff\019\ff\ff\00\18\ff\ff\01\87\ff\ff\00\d4\fe\ff\00\c3\00\00\01\d2\00\00\01\ce\00\00\01\cd\00\00\01O\00\00\01\ca\00\00\01\cb\00\00\01\cf\00\00\00a\00\00\01\d3\00\00\01\d1\00\00\00\a3\00\00\01\d5\00\00\00\82\00\00\01\d6\00\00\01\da\00\00\01\d9\00\00\01\db\00\00\008\00\00\03\00\00\00\00\b1\ff\ff\01\9f\ff\ff\01\c8\ff\ff\02($\00\00\00\00\00\01\01\00\00\00\ff\ff\ff\003\ff\ff\00&\ff\ff\01~\ff\ff\01+*\00\01]\ff\ff\01(*\00\00?*\00\01=\ff\ff\01E\00\00\01G\00\00\00\1f*\00\00\1c*\00\00\1e*\00\00.\ff\ff\002\ff\ff\006\ff\ff\005\ff\ff\00O\a5\00\00K\a5\00\001\ff\ff\00(\a5\00\00D\a5\00\00/\ff\ff\00-\ff\ff\00\f7)\00\00A\a5\00\00\fd)\00\00+\ff\ff\00*\ff\ff\00\e7)\00\00C\a5\00\00*\a5\00\00\bb\ff\ff\00\'\ff\ff\00\b9\ff\ff\00%\ff\ff\00\15\a5\00\00\12\a5\00\02$L\00\00\00\00\00\01 \00\00\00\e0\ff\ff\01\01\00\00\00\ff\ff\ff\00T\00\00\01t\00\00\01&\00\00\01%\00\00\01@\00\00\01?\00\00\00\da\ff\ff\00\db\ff\ff\00\e1\ff\ff\00\c0\ff\ff\00\c1\ff\ff\01\08\00\00\00\c2\ff\ff\00\c7\ff\ff\00\d1\ff\ff\00\ca\ff\ff\00\f8\ff\ff\00\aa\ff\ff\00\b0\ff\ff\00\07\00\00\00\8c\ff\ff\01\c4\ff\ff\00\a0\ff\ff\01\f9\ff\ff\02\1ap\00\01\01\00\00\00\ff\ff\ff\01 \00\00\00\e0\ff\ff\01P\00\00\01\0f\00\00\00\f1\ff\ff\00\00\00\00\010\00\00\00\d0\ff\ff\01\01\00\00\00\ff\ff\ff\00\00\00\00\00\c0\0b\00\01`\1c\00\00\00\00\00\01\d0\97\00\01\08\00\00\00\f8\ff\ff\02\05\8a\00\00\00\00\00\01@\f4\ff\00\9e\e7\ff\00\c2\89\00\00\db\e7\ff\00\92\e7\ff\00\93\e7\ff\00\9c\e7\ff\00\9d\e7\ff\00\a4\e7\ff\00\00\00\00\008\8a\00\00\04\8a\00\00\e6\0e\00\01\01\00\00\00\ff\ff\ff\00\00\00\00\00\c5\ff\ff\01A\e2\ff\02\1d\8f\00\00\08\00\00\01\f8\ff\ff\00\00\00\00\00V\00\00\01\aa\ff\ff\00J\00\00\00d\00\00\00\80\00\00\00p\00\00\00~\00\00\00\t\00\00\01\b6\ff\ff\01\f7\ff\ff\00\db\e3\ff\01\9c\ff\ff\01\90\ff\ff\01\80\ff\ff\01\82\ff\ff\02\05\ac\00\00\00\00\00\01\10\00\00\00\f0\ff\ff\01\1c\00\00\01\01\00\00\01\a3\e2\ff\01A\df\ff\01\ba\df\ff\00\e4\ff\ff\02\0b\b1\00\01\01\00\00\00\ff\ff\ff\010\00\00\00\d0\ff\ff\00\00\00\00\01\t\d6\ff\01\1a\f1\ff\01\19\d6\ff\00\d5\d5\ff\00\d8\d5\ff\01\e4\d5\ff\01\03\d6\ff\01\e1\d5\ff\01\e2\d5\ff\01\c1\d5\ff\00\00\00\00\00\a0\e3\ff\00\00\00\00\01\01\00\00\00\ff\ff\ff\02\0c\bc\00\00\00\00\00\01\01\00\00\00\ff\ff\ff\01\bcZ\ff\01\a0\03\00\01\fcu\ff\01\d8Z\ff\000\00\00\01\b1Z\ff\01\b5Z\ff\01\bfZ\ff\01\eeZ\ff\01\d6Z\ff\01\ebZ\ff\01\d0\ff\ff\01\bdZ\ff\01\c8u\ff\00\00\00\00\000h\ff\00`\fc\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01(\00\00\00\d8\ff\ff\00\00\00\00\01@\00\00\00\c0\ff\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01\"\00\00\00\de\ff\ff")
 (data (i32.const 12197) "\06\'Qow")
 (data (i32.const 12212) "|\00\00\7f\00\00\00\00\00\00\00\00\83\8e\92\97\00\aa")
 (data (i32.const 12240) "\b4\c4")
 (data (i32.const 12362) "\c6\c9\00\00\00\db")
 (data (i32.const 12451) "\de\00\00\00\00\e1\00\00\00\00\00\00\00\e4")
 (data (i32.const 12476) "\e7")
 (data (i32.const 12562) "\ea")
 (data (i32.const 12685) "\ed")
 (data (i32.const 12708) "0\0c1\0dx\0e\7f\0f\80\10\81\11\86\12\89\13\8a\13\8e\14\8f\15\90\16\93\13\94\17\95\18\96\19\97\1a\9a\1b\9c\19\9d\1c\9e\1d\9f\1e\a6\1f\a9\1f\ae\1f\b1 \b2 \b7!\bf\"\c5#\c8#\cb#\dd$\f2#\f6%\f7& -:.=/>0?1@1C2D3E4P5Q6R7S8T9Y:[;\\<a=c>e?f@hAiBj@kClDoBqErFuG}H\82I\87J\89K\8aL\8bL\8cM\92N\9dO\9ePEW{\1d|\1d}\1d\7fX\86Y\88Z\89Z\8aZ\8c[\8e\\\8f\\\ac]\ad^\ae^\af^\c2_\cc`\cda\cea\cfb\d0c\d1d\d5e\d6f\d7g\f0h\f1i\f2j\f3k\f4l\f5m\f9n\fd-\fe-\ff-PiQiRiSiTiUiViWiXiYiZi[i\\i]i^i_i\82\00\83\00\84\00\85\00\86\00\87\00\88\00\89\00\c0u\cfv\80\89\81\8a\82\8b\85\8c\86\8dp\9dq\9dv\9ew\9ex\9fy\9fz\a0{\a0|\a1}\a1\b3\a2\ba\a3\bb\a3\bc\a4\be\a5\c3\a2\cc\a4\da\a6\db\a6\e5j\ea\a7\eb\a7\ecn\f3\a2\f8\a8\f9\a8\fa\a9\fb\a9\fc\a4&\b0*\b1+\b2N\b3\84\08b\bac\bbd\bce\bdf\bem\bfn\c0o\c1p\c2~\c3\7f\c3}\cf\8d\d0\94\d1\ab\d2\ac\d3\ad\d4\b0\d5\b1\d6\b2\d7\c4\d8\c5\d9\c6\da")
 (data (i32.const 13116) ",")
 (data (i32.const 13128) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00:\00 ")
 (data (i32.const 13164) "\1c")
 (data (i32.const 13176) "*\00\00\00\0c\00\00\00P3\00\00\00\00\00\00\10\0e")
 (data (i32.const 13196) ",")
 (data (i32.const 13208) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00 ")
 (data (i32.const 13244) "\1c")
 (data (i32.const 13256) "*\00\00\00\0c\00\00\00\a03\00\00\00\00\00\00\10\0e")
 (data (i32.const 13276) "<")
 (data (i32.const 13288) "\01\00\00\00(\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00P\00A\00I\00R\00_\00E\00X\00I\00S\00T\00S")
 (data (i32.const 13340) ",")
 (data (i32.const 13352) "\01\00\00\00\1a\00\00\00b\00a\00d\00 \00d\00b\00 \00i\00n\00d\00e\00x\00!")
 (data (i32.const 13388) "L")
 (data (i32.const 13400) "\01\00\00\002\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00C\00O\00N\00F\00I\00G\00_\00N\00O\00T\00_\00F\00O\00U\00N\00D")
 (data (i32.const 13468) ",")
 (data (i32.const 13480) "\01\00\00\00\0e\00\00\00a\00d\00d\00p\00a\00i\00r")
 (data (i32.const 13516) "\1c")
 (data (i32.const 13528) "\01\00\00\00\0c\00\00\00a\00c\00t\00i\00v\00e")
 (data (i32.const 13548) "L")
 (data (i32.const 13560) "\01\00\00\00.\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00P\00A\00I\00R\00_\00N\00O\00T\00_\00F\00O\00U\00N\00D")
 (data (i32.const 13628) "L")
 (data (i32.const 13640) "\01\00\00\000\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00v\00a\00l\00u\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00!")
 (data (i32.const 13708) "L")
 (data (i32.const 13720) "\01\00\00\000\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00N\00O\00T\00_\00I\00N\00I\00T\00I\00A\00L\00I\00Z\00E\00D")
 (data (i32.const 13788) "<")
 (data (i32.const 13800) "\01\00\00\00&\00\00\00u\00p\00d\00a\00t\00e\00:\00b\00a\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 13852) "L")
 (data (i32.const 13864) "\01\00\00\00:\00\00\00g\00e\00t\00 \00p\00r\00i\00m\00a\00r\00y\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 13932) "l")
 (data (i32.const 13944) "\01\00\00\00V\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00c\00h\00a\00n\00g\00e\00d\00 \00d\00u\00r\00i\00n\00g\00 \00u\00p\00d\00a\00t\00e\00!")
 (data (i32.const 14044) ",")
 (data (i32.const 14056) "\01\00\00\00\1c\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 14092) ",")
 (data (i32.const 14104) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00s\00s\00e\00t")
 (data (i32.const 14140) "<")
 (data (i32.const 14152) "\01\00\00\00\1e\00\00\00i\00d\00x\006\004\00:\00 \00b\00a\00d\00 \00t\00y\00p\00e")
 (data (i32.const 14204) "<")
 (data (i32.const 14216) "\01\00\00\00 \00\00\00i\00d\00x\006\004\00:\00 \00b\00a\00d\00 \00v\00a\00l\00u\00e")
 (table $0 2 funcref)
 (elem $0 (i32.const 1) $start:~lib/as-chain/name~anonymous|0)
 (export "Factory" (global $assembly/factory/factory.contract/Factory))
 (export "Factory#get:receiver" (func $~lib/as-chain/helpers/Contract#get:receiver))
 (export "Factory#set:receiver" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "Factory#get:firstReceiver" (func $~lib/as-chain/helpers/Contract#get:firstReceiver))
 (export "Factory#set:firstReceiver" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "Factory#get:action" (func $~lib/as-chain/helpers/Contract#get:action))
 (export "Factory#set:action" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "Factory#constructor" (func $assembly/factory/factory.contract/Factory#constructor))
 (export "Factory#initialize" (func $assembly/factory/factory.contract/Factory#initialize))
 (export "Factory#createPair" (func $assembly/factory/factory.contract/Factory#createPair))
 (export "Factory#getPair" (func $assembly/factory/factory.contract/Factory#getPair))
 (export "Factory#removePair" (func $assembly/factory/factory.contract/Factory#removePair))
 (export "Factory#setFeeTo" (func $assembly/factory/factory.contract/Factory#setFeeTo))
 (export "Factory#setFeeToSetter" (func $assembly/factory/factory.contract/Factory#setFeeToSetter))
 (export "Factory#getFeeTo" (func $assembly/factory/factory.contract/Factory#getFeeTo))
 (export "Factory#setAmmContract" (func $assembly/factory/factory.contract/Factory#setAmmContract))
 (export "Factory#getAmmContract" (func $assembly/factory/factory.contract/Factory#getAmmContract))
 (export "apply" (func $assembly/factory/factory.contract/apply))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:~lib/as-chain/name~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (select
    (i32.le_u
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 65535)
      )
     )
     (i32.const 122)
    )
    (i32.const 0)
    (i32.ge_u
     (local.get $1)
     (i32.const 97)
    )
   )
   (return
    (i32.sub
     (local.get $0)
     (i32.const 91)
    )
   )
  )
  (if
   (select
    (i32.le_u
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 65535)
      )
     )
     (i32.const 53)
    )
    (i32.const 0)
    (i32.ge_u
     (local.get $1)
     (i32.const 49)
    )
   )
   (return
    (i32.sub
     (local.get $0)
     (i32.const 48)
    )
   )
  )
  (if
   (i32.eq
    (i32.and
     (local.get $0)
     (i32.const 65535)
    )
    (i32.const 46)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.const 65535)
 )
 (func $~lib/as-chain/name/Name#set:N (param $0 i32) (param $1 i64)
  (i64.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (local.tee $1
     (i32.and
      (i32.add
       (i32.shl
        (local.tee $2
         (memory.size)
        )
        (i32.const 16)
       )
       (i32.const 15)
      )
      (i32.const -16)
     )
    )
   )
   (if
    (i32.lt_s
     (memory.grow
      (select
       (local.get $2)
       (local.tee $1
        (i32.shr_u
         (i32.and
          (i32.add
           (i32.sub
            (local.get $0)
            (local.get $1)
           )
           (i32.const 65535)
          )
          (i32.const -65536)
         )
         (i32.const 16)
        )
       )
       (i32.lt_s
        (local.get $1)
        (local.get $2)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (memory.grow
       (local.get $1)
      )
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (global.set $~lib/rt/stub/offset
   (local.get $0)
  )
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  (i32.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (local.set $1
   (global.get $~lib/rt/stub/offset)
  )
  (call $~lib/rt/stub/maybeGrowMemory
   (i32.add
    (local.tee $2
     (i32.add
      (global.get $~lib/rt/stub/offset)
      (i32.const 4)
     )
    )
    (local.tee $0
     (i32.sub
      (i32.and
       (i32.add
        (local.get $0)
        (i32.const 19)
       )
       (i32.const -16)
      )
      (i32.const 4)
     )
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (local.get $2)
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo (param $0 i32) (param $1 i32)
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo2 (param $0 i32) (param $1 i32)
  (i32.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:rtId (param $0 i32) (param $1 i32)
  (i32.store offset=12
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:rtSize (param $0 i32) (param $1 i32)
  (i32.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.tee $2
    (i32.sub
     (local.tee $3
      (call $~lib/rt/stub/__alloc
       (i32.add
        (local.get $0)
        (i32.const 16)
       )
      )
     )
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $2)
   (local.get $0)
  )
  (i32.add
   (local.get $3)
   (i32.const 16)
  )
 )
 (func $assembly/factory/tables/pairs.table/PairsTable#set:createdAt (param $0 i32) (param $1 i32)
  (i32.store offset=20
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/factory/tables/pairs.table/PairsTable#constructor (param $0 i64) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 9)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $5)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $5)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $5)
   (local.get $3)
  )
  (call $assembly/factory/tables/pairs.table/PairsTable#set:createdAt
   (local.get $5)
   (local.get $4)
  )
  (local.get $5)
 )
 (func $assembly/factory/tables/pairs.table/PairsTable.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const -6224682770514313216)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/idxdb/IDXDB#set:scope (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/IDXDB#set:table (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idx64/IDX64#constructor (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/as-chain/name/Name#set:N
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $4
       (call $~lib/rt/stub/__new
        (i32.const 28)
        (i32.const 25)
       )
      )
     )
     (local.set $4
      (call $~lib/rt/stub/__new
       (i32.const 28)
       (i32.const 15)
      )
     )
    )
    (local.get $4)
   )
   (local.get $0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (i32.store offset=24
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $~lib/util/memory/memmove|inlined.0
   (local.set $4
    (local.get $2)
   )
   (br_if $~lib/util/memory/memmove|inlined.0
    (i32.eq
     (local.get $0)
     (local.get $1)
    )
   )
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $1)
    )
    (loop $while-continue|0
     (if
      (local.get $4)
      (block
       (local.set $0
        (i32.add
         (local.tee $2
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.set $1
        (i32.add
         (local.tee $3
          (local.get $1)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (local.get $2)
        (i32.load8_u
         (local.get $3)
        )
       )
       (local.set $4
        (i32.sub
         (local.get $4)
         (i32.const 1)
        )
       )
       (br $while-continue|0)
      )
     )
    )
    (loop $while-continue|1
     (if
      (local.get $4)
      (block
       (i32.store8
        (i32.add
         (local.tee $4
          (i32.sub
           (local.get $4)
           (i32.const 1)
          )
         )
         (local.get $0)
        )
        (i32.load8_u
         (i32.add
          (local.get $1)
          (local.get $4)
         )
        )
       )
       (br $while-continue|1)
      )
     )
    )
   )
  )
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $5
   (local.tee $4
    (i32.shl
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (local.set $1
   (call $~lib/rt/stub/__new
    (local.get $4)
    (i32.const 0)
   )
  )
  (if
   (local.get $3)
   (call $~lib/memory/memory.copy
    (local.get $1)
    (local.get $3)
    (local.get $5)
   )
  )
  (local.set $3
   (local.get $1)
  )
  (i32.store
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (local.get $2)
    )
   )
   (local.get $3)
  )
  (i32.store offset=4
   (local.get $1)
   (local.get $3)
  )
  (i32.store offset=8
   (local.get $1)
   (local.get $4)
  )
  (i32.store offset=12
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $1)
     (i32.const 2)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/pairs.table/PairsTable>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 12)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $4)
   (i64.const -1)
  )
  (drop
   (call $assembly/factory/tables/pairs.table/PairsTable#constructor
    (i64.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i32.const 0)
   )
  )
  (local.set $6
   (call $assembly/factory/tables/pairs.table/PairsTable.get:tableName)
  )
  (local.set $3
   (i64.and
    (i64.load
     (call $assembly/factory/tables/pairs.table/PairsTable.get:tableName)
    )
    (i64.const -16)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $5
     (call $~lib/rt/__newArray
      (i32.const 2)
      (i32.const 2)
      (i32.const 16)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $5)
   (i32.const 0)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (local.get $3)
    (i32.const 0)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $5)
   (i32.const 1)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i64.add
     (local.get $3)
     (i64.const 1)
    )
    (i32.const 1)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 13)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $2)
   (i64.const -1)
  )
  (local.set $3
   (i64.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $6)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 14)
    )
   )
   (local.get $3)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $0)
   (local.get $7)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $0)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $2)
  )
  (local.get $4)
 )
 (func $assembly/factory/tables/feesettings.table/FeeSettingsTable#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 17)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $assembly/factory/tables/feesettings.table/FeeSettingsTable.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 6527269913153449984)
  )
  (local.get $0)
 )
 (func $assembly/factory/tables/config.table/ConfigTable#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 21)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $assembly/factory/tables/config.table/ConfigTable.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 4982871454518345728)
  )
  (local.get $0)
 )
 (func $assembly/factory/factory.contract/Factory#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (block (result i32)
       (if
        (i32.eqz
         (local.get $0)
        )
        (local.set $0
         (call $~lib/rt/stub/__new
          (i32.const 24)
          (i32.const 7)
         )
        )
       )
       (local.get $0)
      )
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 8)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/pairs.table/PairsTable>#constructor
    (i32.load
     (local.get $0)
    )
    (i32.load
     (local.get $0)
    )
   )
  )
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 18)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $2)
   (i64.const -1)
  )
  (drop
   (call $assembly/factory/tables/feesettings.table/FeeSettingsTable#constructor
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $5
   (call $assembly/factory/tables/feesettings.table/FeeSettingsTable.get:tableName)
  )
  (drop
   (i64.load
    (call $assembly/factory/tables/feesettings.table/FeeSettingsTable.get:tableName)
   )
  )
  (local.set $6
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 16)
    (i32.const 2288)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 19)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $1)
   (i64.const -1)
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (local.set $9
   (i64.load
    (local.get $5)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 20)
    )
   )
   (local.get $7)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $3)
   (local.get $9)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $2)
  )
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 22)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $2)
   (i64.const -1)
  )
  (drop
   (call $assembly/factory/tables/config.table/ConfigTable#constructor
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $5
   (call $assembly/factory/tables/config.table/ConfigTable.get:tableName)
  )
  (drop
   (i64.load
    (call $assembly/factory/tables/config.table/ConfigTable.get:tableName)
   )
  )
  (local.set $6
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 16)
    (i32.const 2320)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 23)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $1)
   (i64.const -1)
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (local.set $9
   (i64.load
    (local.get $5)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 24)
    )
   )
   (local.get $7)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $3)
   (local.get $9)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $assembly/factory/tables/pairs.table/PairsTable#set:createdAt
   (local.get $0)
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/helpers/Contract#get:receiver (param $0 i32) (result i32)
  (i32.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/helpers/Contract#get:firstReceiver (param $0 i32) (result i32)
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $~lib/as-chain/helpers/Contract#get:action (param $0 i32) (result i32)
  (i32.load offset=8
   (local.get $0)
  )
 )
 (func $~lib/as-chain/action/requireAuth (param $0 i32)
  (call $~lib/as-chain/env/require_auth
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $~lib/string/String.UTF8.byteLength (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.load offset=16
     (i32.sub
      (local.get $0)
      (i32.const 20)
     )
    )
   )
  )
  (local.set $2
   (i32.ne
    (local.get $1)
    (i32.const 0)
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block $while-break|0
     (local.set $2
      (if (result i32)
       (i32.lt_u
        (local.tee $3
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (br_if $while-break|0
         (i32.and
          (local.get $1)
          (i32.eqz
           (local.get $3)
          )
         )
        )
        (i32.add
         (local.get $2)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $3)
         (i32.const 2048)
        )
        (i32.add
         (local.get $2)
         (i32.const 2)
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $3)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (i32.load16_u offset=2
              (local.get $0)
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (local.set $2
             (i32.add
              (local.get $2)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.add
          (local.get $2)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (local.get $2)
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  (i32.shr_u
   (i32.load offset=16
    (i32.sub
     (local.get $0)
     (i32.const 20)
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
  (local.set $1
   (local.get $2)
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block
     (local.set $1
      (if (result i32)
       (i32.lt_u
        (local.tee $2
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (i32.store8
         (local.get $1)
         (local.get $2)
        )
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $2)
         (i32.const 2048)
        )
        (block (result i32)
         (i32.store16
          (local.get $1)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 6)
            )
            (i32.const 192)
           )
           (i32.shl
            (i32.or
             (i32.and
              (local.get $2)
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.add
          (local.get $1)
          (i32.const 2)
         )
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $2)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (local.tee $5
              (i32.load16_u offset=2
               (local.get $0)
              )
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (i32.store
             (local.get $1)
             (i32.or
              (i32.or
               (i32.or
                (i32.shl
                 (i32.or
                  (i32.and
                   (local.tee $2
                    (i32.or
                     (i32.add
                      (i32.shl
                       (i32.and
                        (local.get $2)
                        (i32.const 1023)
                       )
                       (i32.const 10)
                      )
                      (i32.const 65536)
                     )
                     (i32.and
                      (local.get $5)
                      (i32.const 1023)
                     )
                    )
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 24)
                )
                (i32.shl
                 (i32.or
                  (i32.and
                   (i32.shr_u
                    (local.get $2)
                    (i32.const 6)
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 16)
                )
               )
               (i32.shl
                (i32.or
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 12)
                  )
                  (i32.const 63)
                 )
                 (i32.const 128)
                )
                (i32.const 8)
               )
              )
              (i32.or
               (i32.shr_u
                (local.get $2)
                (i32.const 18)
               )
               (i32.const 240)
              )
             )
            )
            (local.set $1
             (i32.add
              (local.get $1)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.store16
          (local.get $1)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 12)
            )
            (i32.const 224)
           )
           (i32.shl
            (i32.or
             (i32.and
              (i32.shr_u
               (local.get $2)
               (i32.const 6)
              )
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.store8 offset=2
          (local.get $1)
          (i32.or
           (i32.and
            (local.get $2)
            (i32.const 63)
           )
           (i32.const 128)
          )
         )
         (i32.add
          (local.get $1)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (if
   (local.get $3)
   (i32.store8
    (local.get $1)
    (i32.const 0)
   )
  )
 )
 (func $~lib/string/String.UTF8.encode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (call $~lib/rt/stub/__new
    (call $~lib/string/String.UTF8.byteLength
     (local.get $0)
     (local.get $1)
    )
    (i32.const 0)
   )
  )
  (call $~lib/string/String.UTF8.encodeUnsafe
   (local.get $0)
   (call $~lib/string/String#get:length
    (local.get $0)
   )
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (param $0 i32) (result i32)
  (i32.load offset=16
   (i32.sub
    (local.get $0)
    (i32.const 20)
   )
  )
 )
 (func $~lib/as-chain/system/assert (param $0 i32) (param $1 i32)
  (local $2 i32)
  (if
   (local.get $0)
   (return)
  )
  (local.set $0
   (call $~lib/string/String.UTF8.encode
    (local.get $1)
    (i32.const 1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $2
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 27)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.or
    (i32.lt_u
     (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
      (local.get $0)
     )
     (local.get $2)
    )
    (i32.gt_u
     (local.get $2)
     (i32.const 1073741820)
    )
   )
   (unreachable)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/as-chain/env/eosio_assert
   (i32.const 0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/system/check (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/system/assert
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#set:validPrimary (param $0 i32) (param $1 i32)
  (i32.store8 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 28)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/feesettings.table/FeeSettingsTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/factory/tables/feesettings.table/FeeSettingsTable>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/factory/tables/feesettings.table/FeeSettingsTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load offset=4
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  (loop $while-continue|0
   (if
    (local.get $1)
    (block
     (local.set $0
      (i32.add
       (local.tee $2
        (local.get $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (local.get $2)
      (i32.const 0)
     )
     (local.set $1
      (i32.sub
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $while-continue|0)
    )
   )
  )
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (select
       (local.get $0)
       (i32.const 8)
       (i32.gt_u
        (local.get $0)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 29)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#incPos (param $0 i32) (param $1 i32)
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 2512)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u64> (param $0 i32) (result i64)
  (local $1 i64)
  (local.set $1
   (i64.load
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 8)
  )
  (local.get $1)
 )
 (func $~lib/array/Array<u8>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.get $0)
   )
  )
  (local.set $1
   (if (result i32)
    (i32.lt_s
     (local.get $1)
     (i32.const 0)
    )
    (select
     (local.tee $1
      (i32.add
       (local.get $1)
       (local.get $3)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (local.get $1)
      (i32.const 0)
     )
    )
    (select
     (local.get $1)
     (local.get $3)
     (i32.lt_s
      (local.get $1)
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.load offset=4
    (local.tee $3
     (call $~lib/rt/__newArray
      (local.tee $2
       (select
        (local.tee $2
         (i32.sub
          (if (result i32)
           (i32.lt_s
            (local.get $2)
            (i32.const 0)
           )
           (select
            (local.tee $2
             (i32.add
              (local.get $2)
              (local.get $3)
             )
            )
            (i32.const 0)
            (i32.gt_s
             (local.get $2)
             (i32.const 0)
            )
           )
           (select
            (local.get $2)
            (local.get $3)
            (i32.lt_s
             (local.get $2)
             (local.get $3)
            )
           )
          )
          (local.get $1)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $2)
         (i32.const 0)
        )
       )
      )
      (i32.const 0)
      (i32.const 4)
      (i32.const 0)
     )
    )
   )
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/serializer/Decoder#unpack (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (call $~lib/as-chain/serializer/Packer#unpack@virtual
    (local.get $1)
    (call $~lib/array/Array<u8>#slice
     (i32.load
      (local.get $0)
     )
     (i32.load offset=4
      (local.get $0)
     )
     (i32.load offset=12
      (i32.load
       (local.get $0)
      )
     )
    )
   )
  )
 )
 (func $assembly/factory/tables/feesettings.table/FeeSettingsTable#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/factory/tables/feesettings.table/FeeSettingsTable>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (drop
   (call $assembly/factory/tables/feesettings.table/FeeSettingsTable#unpack
    (local.tee $0
     (call $assembly/factory/tables/feesettings.table/FeeSettingsTable#constructor
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/factory/tables/feesettings.table/FeeSettingsTable>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/factory/tables/feesettings.table/FeeSettingsTable>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 30)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (call $~lib/array/Array<u8>#constructor
    (local.get $0)
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Encoder#incPos (param $0 i32) (param $1 i32)
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 2688)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u64> (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 8)
  )
  (i64.store
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#pack (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $1
   (i32.load offset=12
    (local.tee $2
     (call $~lib/as-chain/serializer/Packer#pack@virtual
      (local.get $1)
     )
    )
   )
  )
  (if
   (i32.lt_u
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
    (i32.add
     (local.get $1)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 2768)
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $2)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
    )
    (local.get $2)
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#getBytes (param $0 i32) (result i32)
  (call $~lib/array/Array<u8>#slice
   (i32.load
    (local.get $0)
   )
   (i32.const 0)
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $assembly/factory/tables/feesettings.table/FeeSettingsTable#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=12
        (local.get $0)
       )
      )
      (i32.const 24)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load
      (i32.add
       (i32.load offset=4
        (local.get $0)
       )
       (i32.shl
        (local.get $1)
        (i32.const 2)
       )
      )
     )
    )
   )
   (unreachable)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/idxdb/SecondaryValue#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 31)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/array/Array<u64>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 134217727)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (i32.shl
       (select
        (local.get $0)
        (i32.const 8)
        (i32.gt_u
         (local.get $0)
         (i32.const 8)
        )
       )
       (i32.const 3)
      )
     )
     (i32.const 0)
    )
   )
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $assembly/factory/tables/feesettings.table/FeeSettingsTable#getSecondaryValue (result i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 2848)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/feesettings.table/FeeSettingsTable>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/feesettings.table/FeeSettingsTable>#find
      (i32.load
       (local.get $0)
      )
      (local.tee $6
       (i64.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $3
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $2)
   )
  )
  (local.set $7
   (i32.load
    (local.tee $5
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (local.set $10
   (i32.load offset=12
    (local.tee $9
     (call $assembly/factory/tables/feesettings.table/FeeSettingsTable#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#constructor
    (local.get $7)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $7)
     )
     (i64.load offset=16
      (local.get $7)
     )
     (local.get $8)
     (local.get $3)
     (i32.load offset=4
      (local.get $9)
     )
     (local.get $10)
    )
    (local.get $3)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $5)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $5)
       )
       (local.get $4)
      )
      (i64.load
       (local.get $1)
      )
      (call $assembly/factory/tables/feesettings.table/FeeSettingsTable#getSecondaryValue)
      (i64.load
       (local.get $2)
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $3
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $5)
    (select
     (i64.const -2)
     (i64.add
      (local.get $3)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $3)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/config.table/ConfigTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 34)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/config.table/ConfigTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/factory/tables/config.table/ConfigTable>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/factory/tables/config.table/ConfigTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/config.table/ConfigTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/config.table/ConfigTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $assembly/factory/tables/config.table/ConfigTable#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (i32.const 16)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/config.table/ConfigTable>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/config.table/ConfigTable>#find
      (i32.load
       (local.get $0)
      )
      (local.tee $6
       (i64.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $3
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $2)
   )
  )
  (local.set $7
   (i32.load
    (local.tee $5
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (local.set $10
   (i32.load offset=12
    (local.tee $9
     (call $assembly/factory/tables/config.table/ConfigTable#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/config.table/ConfigTable>#constructor
    (local.get $7)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $7)
     )
     (i64.load offset=16
      (local.get $7)
     )
     (local.get $8)
     (local.get $3)
     (i32.load offset=4
      (local.get $9)
     )
     (local.get $10)
    )
    (local.get $3)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $5)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $5)
       )
       (local.get $4)
      )
      (i64.load
       (local.get $1)
      )
      (call $assembly/factory/tables/feesettings.table/FeeSettingsTable#getSecondaryValue)
      (i64.load
       (local.get $2)
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $3
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $5)
    (select
     (i64.const -2)
     (i64.add
      (local.get $3)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $3)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $assembly/factory/factory.contract/Factory#initialize (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i64.ne
    (i64.load
     (local.get $1)
    )
    (i64.load
     (global.get $~lib/as-chain/name/EMPTY_NAME)
    )
   )
   (i32.const 2352)
  )
  (call $~lib/as-chain/system/check
   (i64.ne
    (i64.load
     (local.get $2)
    )
    (i64.load
     (global.get $~lib/as-chain/name/EMPTY_NAME)
    )
   )
   (i32.const 2432)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/factory/tables/feesettings.table/FeeSettingsTable>#getByKey (result i32)
     (drop
      (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/factory/tables/feesettings.table/FeeSettingsTable>#getByKey
       (i32.const 0)
       (i32.eqz
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
         (local.tee $4
          (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/feesettings.table/FeeSettingsTable>#find
           (local.tee $3
            (i32.load
             (i32.load offset=16
              (local.get $0)
             )
            )
           )
           (i64.const 0)
          )
         )
        )
       )
      )
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/factory/tables/feesettings.table/FeeSettingsTable>#get
      (i32.load
       (local.get $3)
      )
      (local.get $4)
     )
    )
   )
   (i32.const 2608)
  )
  (local.set $2
   (call $assembly/factory/tables/feesettings.table/FeeSettingsTable#constructor
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (local.get $2)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/feesettings.table/FeeSettingsTable>#store
   (i32.load offset=16
    (local.get $0)
   )
   (local.get $2)
   (i32.load
    (local.get $0)
   )
  )
  (local.set $1
   (call $assembly/factory/tables/config.table/ConfigTable#constructor
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/config.table/ConfigTable>#store
   (i32.load offset=20
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/action/isAccount (param $0 i32) (result i32)
  (call $~lib/as-chain/env/is_account
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $~lib/string/String#charCodeAt (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.le_u
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (local.get $1)
   )
   (return
    (i32.const -1)
   )
  )
  (i32.load16_u
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/as-chain/asset/Asset#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (block $2of2
   (block $1of2
    (block $outOfRange
     (br_table $1of2 $1of2 $2of2 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.tee $0
     (call $~lib/rt/stub/__new
      (i32.const 8)
      (i32.const 37)
     )
    )
    (i64.const 0)
   )
   (call $~lib/as-chain/system/check
    (i32.le_s
     (call $~lib/string/String#get:length
      (i32.const 3600)
     )
     (i32.const 7)
    )
    (i32.const 3472)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.get $0)
    (i64.const 0)
   )
   (loop $for-loop|0
    (if
     (i32.gt_s
      (call $~lib/string/String#get:length
       (i32.const 3600)
      )
      (local.get $1)
     )
     (block
      (call $~lib/as-chain/system/check
       (select
        (i64.le_u
         (local.tee $2
          (i64.extend_i32_s
           (call $~lib/string/String#charCodeAt
            (i32.const 3600)
            (i32.sub
             (i32.sub
              (call $~lib/string/String#get:length
               (i32.const 3600)
              )
              (i32.const 1)
             )
             (local.get $1)
            )
           )
          )
         )
         (i64.const 90)
        )
        (i32.const 0)
        (i64.ge_u
         (local.get $2)
         (i64.const 65)
        )
       )
       (i32.const 3536)
      )
      (call $~lib/as-chain/name/Name#set:N
       (local.get $0)
       (i64.or
        (local.get $2)
        (i64.load
         (local.get $0)
        )
       )
      )
      (call $~lib/as-chain/name/Name#set:N
       (local.get $0)
       (i64.shl
        (i64.load
         (local.get $0)
        )
        (i64.const 8)
       )
      )
      (local.set $1
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.get $0)
    (i64.load
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 36)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $assembly/factory/tables/stat.table/TokenStatTable#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $3of3
   (block $2of3
    (block $1of3
     (block $0of3
      (block $outOfRange
       (br_table $0of3 $1of3 $2of3 $3of3 $outOfRange
        (global.get $~argumentsLength)
       )
      )
      (unreachable)
     )
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $3
      (call $~lib/as-chain/asset/Asset#constructor@varargs)
     )
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $2
     (call $~lib/as-chain/asset/Asset#constructor@varargs)
    )
   )
   (local.set $0
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 35)
    )
   )
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $assembly/factory/tables/stat.table/TokenStatTable.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const -4157508551318700032)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/stat.table/TokenStatTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 41)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $assembly/factory/tables/stat.table/TokenStatTable#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 2)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/array/Array<u8>#__get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (i32.load8_u
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
  )
 )
 (func $~lib/rt/stub/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (local.set $3
   (i32.add
    (local.get $1)
    (i32.const 16)
   )
  )
  (if
   (i32.eqz
    (select
     (i32.eqz
      (i32.and
       (local.tee $0
        (i32.sub
         (local.get $0)
         (i32.const 16)
        )
       )
       (i32.const 15)
      )
     )
     (i32.const 0)
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $6
   (i32.eq
    (global.get $~lib/rt/stub/offset)
    (i32.add
     (local.get $0)
     (local.tee $4
      (i32.load
       (local.tee $5
        (i32.sub
         (local.get $0)
         (i32.const 4)
        )
       )
      )
     )
    )
   )
  )
  (local.set $2
   (i32.sub
    (i32.and
     (i32.add
      (local.get $3)
      (i32.const 19)
     )
     (i32.const -16)
    )
    (i32.const 4)
   )
  )
  (if
   (i32.gt_u
    (local.get $3)
    (local.get $4)
   )
   (if
    (local.get $6)
    (block
     (if
      (i32.gt_u
       (local.get $3)
       (i32.const 1073741820)
      )
      (unreachable)
     )
     (call $~lib/rt/stub/maybeGrowMemory
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $2)
     )
    )
    (block
     (call $~lib/memory/memory.copy
      (local.tee $2
       (call $~lib/rt/stub/__alloc
        (select
         (local.get $2)
         (local.tee $3
          (i32.shl
           (local.get $4)
           (i32.const 1)
          )
         )
         (i32.gt_u
          (local.get $2)
          (local.get $3)
         )
        )
       )
      )
      (local.get $0)
      (local.get $4)
     )
     (local.set $0
      (local.get $2)
     )
    )
   )
   (if
    (local.get $6)
    (block
     (global.set $~lib/rt/stub/offset
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (i32.sub
    (local.get $0)
    (i32.const 4)
   )
   (local.get $1)
  )
  (i32.add
   (local.get $0)
   (i32.const 16)
  )
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (i32.shr_u
     (local.tee $3
      (i32.load offset=8
       (local.get $0)
      )
     )
     (local.get $2)
    )
   )
   (block
    (if
     (i32.gt_u
      (local.get $1)
      (i32.shr_u
       (i32.const 1073741820)
       (local.get $2)
      )
     )
     (unreachable)
    )
    (local.set $1
     (i32.shl
      (select
       (local.get $1)
       (i32.const 8)
       (i32.gt_u
        (local.get $1)
        (i32.const 8)
       )
      )
      (local.get $2)
     )
    )
    (call $~lib/memory/memory.fill
     (i32.add
      (local.tee $2
       (call $~lib/rt/stub/__renew
        (local.tee $4
         (i32.load
          (local.get $0)
         )
        )
        (local.tee $1
         (select
          (local.tee $2
           (select
            (local.tee $2
             (i32.shl
              (local.get $3)
              (i32.const 1)
             )
            )
            (i32.const 1073741820)
            (i32.lt_u
             (local.get $2)
             (i32.const 1073741820)
            )
           )
          )
          (local.get $1)
          (i32.lt_u
           (local.get $1)
           (local.get $2)
          )
         )
        )
       )
      )
      (local.get $3)
     )
     (i32.sub
      (local.get $1)
      (local.get $3)
     )
    )
    (if
     (i32.ne
      (local.get $2)
      (local.get $4)
     )
     (block
      (i32.store
       (local.get $0)
       (local.get $2)
      )
      (i32.store offset=4
       (local.get $0)
       (local.get $2)
      )
     )
    )
    (i32.store offset=8
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (local.tee $3
     (i32.add
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (unreachable)
  )
  (local.set $1
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.shl
      (local.get $1)
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $3)
    )
    (block $while-break|0
     (local.set $2
      (i32.load8_u
       (local.get $0)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (if
      (i32.and
       (local.get $2)
       (i32.const 128)
      )
      (block
       (br_if $while-break|0
        (i32.eq
         (local.get $0)
         (local.get $3)
        )
       )
       (local.set $4
        (i32.and
         (i32.load8_u
          (local.get $0)
         )
         (i32.const 63)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (if
        (i32.eq
         (i32.and
          (local.get $2)
          (i32.const 224)
         )
         (i32.const 192)
        )
        (i32.store16
         (local.get $1)
         (i32.or
          (local.get $4)
          (i32.shl
           (i32.and
            (local.get $2)
            (i32.const 31)
           )
           (i32.const 6)
          )
         )
        )
        (block
         (br_if $while-break|0
          (i32.eq
           (local.get $0)
           (local.get $3)
          )
         )
         (local.set $6
          (i32.and
           (i32.load8_u
            (local.get $0)
           )
           (i32.const 63)
          )
         )
         (local.set $0
          (i32.add
           (local.get $0)
           (i32.const 1)
          )
         )
         (if
          (i32.eq
           (i32.and
            (local.get $2)
            (i32.const 240)
           )
           (i32.const 224)
          )
          (local.set $2
           (i32.or
            (local.get $6)
            (i32.or
             (i32.shl
              (i32.and
               (local.get $2)
               (i32.const 15)
              )
              (i32.const 12)
             )
             (i32.shl
              (local.get $4)
              (i32.const 6)
             )
            )
           )
          )
          (block
           (br_if $while-break|0
            (i32.eq
             (local.get $0)
             (local.get $3)
            )
           )
           (local.set $2
            (i32.or
             (i32.and
              (i32.load8_u
               (local.get $0)
              )
              (i32.const 63)
             )
             (i32.or
              (i32.or
               (i32.shl
                (i32.and
                 (local.get $2)
                 (i32.const 7)
                )
                (i32.const 18)
               )
               (i32.shl
                (local.get $4)
                (i32.const 12)
               )
              )
              (i32.shl
               (local.get $6)
               (i32.const 6)
              )
             )
            )
           )
           (local.set $0
            (i32.add
             (local.get $0)
             (i32.const 1)
            )
           )
          )
         )
         (if
          (i32.lt_u
           (local.get $2)
           (i32.const 65536)
          )
          (i32.store16
           (local.get $1)
           (local.get $2)
          )
          (block
           (i32.store
            (local.get $1)
            (i32.or
             (i32.or
              (i32.shr_u
               (local.tee $2
                (i32.sub
                 (local.get $2)
                 (i32.const 65536)
                )
               )
               (i32.const 10)
              )
              (i32.const 55296)
             )
             (i32.shl
              (i32.or
               (i32.and
                (local.get $2)
                (i32.const 1023)
               )
               (i32.const 56320)
              )
              (i32.const 16)
             )
            )
           )
           (local.set $1
            (i32.add
             (local.get $1)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
      )
      (i32.store16
       (local.get $1)
       (local.get $2)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (call $~lib/rt/stub/__renew
   (local.get $5)
   (i32.sub
    (local.get $1)
    (local.get $5)
   )
  )
 )
 (func $~lib/string/String.UTF8.decode (param $0 i32) (result i32)
  (call $~lib/string/String.UTF8.decodeUnsafe
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/name/N2S (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $2
   (call $~lib/array/Array<u8>#constructor
    (i32.const 13)
   )
  )
  (loop $for-loop|0
   (if
    (i32.le_s
     (local.get $1)
     (i32.const 12)
    )
    (block
     (local.set $3
      (i32.sub
       (i32.const 12)
       (local.get $1)
      )
     )
     (local.set $4
      (if (result i32)
       (local.get $1)
       (call $~lib/array/Array<u8>#__get
        (i32.const 1152)
        (i32.wrap_i64
         (i64.and
          (local.get $0)
          (i64.const 31)
         )
        )
       )
       (call $~lib/array/Array<u8>#__get
        (i32.const 1152)
        (i32.wrap_i64
         (i64.and
          (local.get $0)
          (i64.const 15)
         )
        )
       )
      )
     )
     (if
      (i32.ge_u
       (local.get $3)
       (i32.load offset=12
        (local.get $2)
       )
      )
      (block
       (if
        (i32.lt_s
         (local.get $3)
         (i32.const 0)
        )
        (unreachable)
       )
       (call $~lib/array/ensureCapacity
        (local.get $2)
        (local.tee $5
         (i32.add
          (local.get $3)
          (i32.const 1)
         )
        )
        (i32.const 0)
       )
       (call $~lib/rt/common/OBJECT#set:rtId
        (local.get $2)
        (local.get $5)
       )
      )
     )
     (i32.store8
      (i32.add
       (local.get $3)
       (i32.load offset=4
        (local.get $2)
       )
      )
      (local.get $4)
     )
     (local.set $0
      (select
       (i64.shr_u
        (local.get $0)
        (i64.const 5)
       )
       (i64.shr_u
        (local.get $0)
        (i64.const 4)
       )
       (local.get $1)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $1
   (i32.sub
    (i32.load offset=12
     (local.get $2)
    )
    (i32.const 1)
   )
  )
  (loop $for-loop|1
   (if
    (i32.ge_s
     (local.get $1)
     (i32.const 0)
    )
    (if
     (i32.eq
      (call $~lib/array/Array<u8>#__get
       (local.get $2)
       (local.get $1)
      )
      (i32.const 46)
     )
     (block
      (local.set $1
       (i32.sub
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|1)
     )
    )
   )
  )
  (call $~lib/string/String.UTF8.decode
   (i32.load
    (call $~lib/array/Array<u8>#slice
     (local.get $2)
     (i32.const 0)
     (i32.add
      (local.get $1)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $__inlined_func$~lib/string/String#concat
   (if
    (i32.eqz
     (local.tee $2
      (i32.add
       (local.tee $3
        (i32.shl
         (call $~lib/string/String#get:length
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.tee $4
        (i32.shl
         (call $~lib/string/String#get:length
          (local.get $1)
         )
         (i32.const 1)
        )
       )
      )
     )
    )
    (block
     (local.set $2
      (i32.const 3600)
     )
     (br $__inlined_func$~lib/string/String#concat)
    )
   )
   (call $~lib/memory/memory.copy
    (local.tee $2
     (call $~lib/rt/stub/__new
      (local.get $2)
      (i32.const 1)
     )
    )
    (local.get $0)
    (local.get $3)
   )
   (call $~lib/memory/memory.copy
    (i32.add
     (local.get $2)
     (local.get $3)
    )
    (local.get $1)
    (local.get $4)
   )
  )
  (local.get $2)
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String> (result i32)
   (drop
    (br_if $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
     (i32.const 3600)
     (i32.lt_s
      (local.tee $3
       (i32.sub
        (i32.shr_u
         (i32.load offset=16
          (i32.sub
           (local.tee $1
            (local.get $0)
           )
           (i32.const 20)
          )
         )
         (i32.const 2)
        )
        (i32.const 1)
       )
      )
      (i32.const 0)
     )
    )
   )
   (if
    (i32.eqz
     (local.get $3)
    )
    (br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
     (if (result i32)
      (local.tee $0
       (i32.load
        (local.get $1)
       )
      )
      (local.get $0)
      (i32.const 3600)
     )
    )
   )
   (local.set $0
    (i32.const 3600)
   )
   (local.set $4
    (call $~lib/string/String#get:length
     (i32.const 3600)
    )
   )
   (loop $for-loop|0
    (if
     (i32.lt_s
      (local.get $2)
      (local.get $3)
     )
     (block
      (if
       (local.tee $5
        (i32.load
         (i32.add
          (local.get $1)
          (i32.shl
           (local.get $2)
           (i32.const 2)
          )
         )
        )
       )
       (local.set $0
        (call $~lib/string/String.__concat
         (local.get $0)
         (local.get $5)
        )
       )
      )
      (if
       (local.get $4)
       (local.set $0
        (call $~lib/string/String.__concat
         (local.get $0)
         (i32.const 3600)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $2)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (if (result i32)
    (local.tee $1
     (i32.load
      (i32.add
       (local.get $1)
       (i32.shl
        (local.get $3)
        (i32.const 2)
       )
      )
     )
    )
    (call $~lib/string/String.__concat
     (local.get $0)
     (local.get $1)
    )
    (local.get $0)
   )
  )
 )
 (func $assembly/factory/factory.contract/Factory#verifyTokenExist (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local.set $3
   (local.get $1)
  )
  (local.set $1
   (i32.const 0)
  )
  (loop $for-loop|0
   (if
    (select
     (i32.lt_s
      (local.get $1)
      (i32.const 7)
     )
     (i32.const 0)
     (i32.gt_s
      (call $~lib/string/String#get:length
       (local.get $3)
      )
      (local.get $1)
     )
    )
    (block
     (call $~lib/as-chain/system/check
      (select
       (i32.le_s
        (local.tee $4
         (call $~lib/string/String#charCodeAt
          (local.get $3)
          (local.get $1)
         )
        )
        (i32.const 90)
       )
       (i32.const 0)
       (i32.ge_s
        (local.get $4)
        (i32.const 65)
       )
      )
      (i32.const 3376)
     )
     (local.set $6
      (i64.or
       (local.get $6)
       (i64.shl
        (i64.extend_i32_s
         (local.get $4)
        )
        (i64.shl
         (i64.extend_i32_s
          (local.get $1)
         )
         (i64.const 3)
        )
       )
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $5)
   (local.get $6)
  )
  (local.set $4
   (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/factory/tables/stat.table/TokenStatTable>#find (result i32)
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.tee $4
      (call $~lib/rt/stub/__new
       (i32.const 16)
       (i32.const 38)
      )
     )
     (i32.const 0)
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:scope
     (local.get $4)
     (i64.const -1)
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (drop
     (call $assembly/factory/tables/stat.table/TokenStatTable#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.set $7
     (call $assembly/factory/tables/stat.table/TokenStatTable.get:tableName)
    )
    (drop
     (i64.load
      (call $assembly/factory/tables/stat.table/TokenStatTable.get:tableName)
     )
    )
    (local.set $8
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 2)
      (i32.const 16)
      (i32.const 3632)
     )
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.const 16)
       (i32.const 39)
      )
     )
     (i32.const 0)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $1)
     (i32.const 0)
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:scope
     (local.get $1)
     (i64.const -1)
    )
    (local.set $9
     (i64.load
      (local.get $0)
     )
    )
    (local.set $10
     (i64.load
      (local.get $5)
     )
    )
    (local.set $11
     (i64.load
      (local.get $7)
     )
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $5
      (call $~lib/rt/stub/__new
       (i32.const 24)
       (i32.const 40)
      )
     )
     (local.get $9)
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:scope
     (local.get $5)
     (local.get $10)
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:table
     (local.get $5)
     (local.get $11)
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.get $1)
     (local.get $5)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $1)
     (local.get $8)
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.get $4)
     (local.get $1)
    )
    (if
     (i32.ge_s
      (local.tee $4
       (call $~lib/as-chain/env/db_find_i64
        (i64.load
         (local.tee $1
          (i32.load
           (local.tee $5
            (i32.load
             (local.get $4)
            )
           )
          )
         )
        )
        (i64.load offset=8
         (local.get $1)
        )
        (i64.load offset=16
         (local.get $1)
        )
        (local.get $6)
       )
      )
      (i32.const 0)
     )
     (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/factory/tables/stat.table/TokenStatTable>#find
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/stat.table/TokenStatTable>#constructor
       (local.get $1)
       (local.get $4)
       (local.get $6)
       (i32.const 1)
      )
     )
    )
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/stat.table/TokenStatTable>#constructor
     (local.get $1)
     (local.get $4)
     (i64.const 0)
     (i32.const 0)
    )
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
    (local.get $4)
   )
   (block
    (drop
     (i32.load
      (local.get $5)
     )
    )
    (if
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
      (local.get $4)
     )
     (if
      (local.tee $4
       (call $~lib/as-chain/env/db_get_i64
        (local.tee $5
         (i32.load offset=4
          (local.get $4)
         )
        )
        (i32.const 0)
        (i32.const 0)
       )
      )
      (block
       (drop
        (call $~lib/as-chain/env/db_get_i64
         (local.get $5)
         (i32.load offset=4
          (local.tee $5
           (call $~lib/array/Array<u8>#constructor
            (local.get $4)
           )
          )
         )
         (local.get $4)
        )
       )
       (global.set $~argumentsLength
        (i32.const 0)
       )
       (drop
        (call $assembly/factory/tables/stat.table/TokenStatTable#unpack
         (local.tee $1
          (call $assembly/factory/tables/stat.table/TokenStatTable#constructor@varargs
           (global.get $~lib/as-chain/name/EMPTY_NAME)
          )
         )
         (local.get $5)
        )
       )
      )
     )
    )
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 3776)
   (i32.const 1)
   (local.get $3)
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 3776)
   (i32.const 3)
   (call $~lib/as-chain/name/N2S
    (i64.load
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (local.get $1)
    (i32.const 0)
   )
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 3776)
   )
  )
  (if
   (i32.eqz
    (local.get $1)
   )
   (unreachable)
  )
  (local.set $0
   (i32.eq
    (i32.wrap_i64
     (i64.and
      (i64.load
       (i32.load offset=8
        (i32.load
         (local.get $1)
        )
       )
      )
      (i64.const 255)
     )
    )
    (i32.and
     (local.get $2)
     (i32.const 255)
    )
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 3968)
   (i32.const 1)
   (local.get $3)
  )
  (call $~lib/as-chain/system/check
   (local.get $0)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 3968)
   )
  )
 )
 (func $~lib/util/string/stagedBinaryLookup (param $0 i32) (param $1 i32) (result i32)
  (i32.and
   (i32.shr_u
    (i32.load8_u
     (i32.add
      (i32.add
       (local.get $0)
       (i32.shl
        (i32.load8_u
         (i32.add
          (local.get $0)
          (i32.shr_u
           (local.get $1)
           (i32.const 8)
          )
         )
        )
        (i32.const 5)
       )
      )
      (i32.shr_u
       (i32.and
        (local.get $1)
        (i32.const 255)
       )
       (i32.const 3)
      )
     )
    )
    (i32.and
     (local.get $1)
     (i32.const 7)
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/util/casemap/casemap (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $2
   (i32.shr_s
    (local.tee $1
     (i32.load
      (i32.add
       (i32.shl
        (i32.add
         (i32.load8_u
          (i32.add
           (local.tee $1
            (i32.shr_u
             (local.get $0)
             (i32.const 8)
            )
           )
           (i32.const 12196)
          )
         )
         (i32.rem_u
          (i32.shr_u
           (i32.mul
            (i32.load8_u
             (i32.add
              (i32.add
               (i32.mul
                (i32.load8_u
                 (i32.add
                  (local.get $1)
                  (i32.const 8556)
                 )
                )
                (i32.const 86)
               )
               (i32.const 8556)
              )
              (i32.div_u
               (local.tee $4
                (i32.and
                 (local.get $0)
                 (i32.const 255)
                )
               )
               (i32.const 3)
              )
             )
            )
            (i32.load
             (i32.add
              (i32.shl
               (i32.rem_u
                (local.get $4)
                (i32.const 3)
               )
               (i32.const 2)
              )
              (i32.const 11224)
             )
            )
           )
           (i32.const 11)
          )
          (i32.const 6)
         )
        )
        (i32.const 2)
       )
       (i32.const 11236)
      )
     )
    )
    (i32.const 8)
   )
  )
  (block $folding-inner0
   (br_if $folding-inner0
    (i32.lt_u
     (local.tee $1
      (i32.and
       (local.get $1)
       (i32.const 255)
      )
     )
     (i32.const 2)
    )
   )
   (local.set $1
    (i32.and
     (local.get $2)
     (i32.const 255)
    )
   )
   (local.set $3
    (i32.shr_u
     (local.get $2)
     (i32.const 8)
    )
   )
   (loop $while-continue|0
    (if
     (local.get $1)
     (block
      (local.set $1
       (if (result i32)
        (i32.eq
         (local.get $4)
         (local.tee $5
          (i32.load8_u
           (i32.add
            (i32.shl
             (i32.add
              (local.get $3)
              (local.tee $2
               (i32.shr_u
                (local.get $1)
                (i32.const 1)
               )
              )
             )
             (i32.const 1)
            )
            (i32.const 12708)
           )
          )
         )
        )
        (block
         (local.set $2
          (i32.shr_s
           (local.tee $1
            (i32.load
             (i32.add
              (i32.shl
               (i32.load8_u offset=1
                (i32.add
                 (i32.shl
                  (i32.add
                   (local.get $2)
                   (local.get $3)
                  )
                  (i32.const 1)
                 )
                 (i32.const 12708)
                )
               )
               (i32.const 2)
              )
              (i32.const 11236)
             )
            )
           )
           (i32.const 8)
          )
         )
         (br_if $folding-inner0
          (i32.lt_u
           (local.tee $1
            (i32.and
             (local.get $1)
             (i32.const 255)
            )
           )
           (i32.const 2)
          )
         )
         (return
          (i32.add
           (local.get $0)
           (i32.const 1)
          )
         )
        )
        (if (result i32)
         (i32.lt_u
          (local.get $4)
          (local.get $5)
         )
         (local.get $2)
         (block (result i32)
          (local.set $3
           (i32.add
            (local.get $2)
            (local.get $3)
           )
          )
          (i32.sub
           (local.get $1)
           (local.get $2)
          )
         )
        )
       )
      )
      (br $while-continue|0)
     )
    )
   )
   (return
    (local.get $0)
   )
  )
  (i32.add
   (local.get $0)
   (i32.and
    (local.get $2)
    (i32.sub
     (i32.const 0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/string/String#toLowerCase (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (if
   (i32.eqz
    (local.tee $8
     (call $~lib/string/String#get:length
      (local.get $0)
     )
    )
   )
   (return
    (local.get $0)
   )
  )
  (local.set $7
   (call $~lib/rt/stub/__new
    (i32.shl
     (local.get $8)
     (i32.const 2)
    )
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_u
     (local.get $4)
     (local.get $8)
    )
    (block
     (if
      (i32.shr_u
       (local.tee $1
        (i32.load16_u
         (i32.add
          (local.get $0)
          (i32.shl
           (local.get $4)
           (i32.const 1)
          )
         )
        )
       )
       (i32.const 7)
      )
      (block $for-continue|0
       (if
        (select
         (i32.lt_u
          (local.get $4)
          (i32.sub
           (local.get $8)
           (i32.const 1)
          )
         )
         (i32.const 0)
         (i32.lt_u
          (i32.sub
           (local.get $1)
           (i32.const 55295)
          )
          (i32.const 1025)
         )
        )
        (if
         (i32.lt_u
          (i32.sub
           (local.tee $3
            (i32.load16_u offset=2
             (i32.add
              (local.get $0)
              (i32.shl
               (local.get $4)
               (i32.const 1)
              )
             )
            )
           )
           (i32.const 56319)
          )
          (i32.const 1025)
         )
         (block
          (local.set $4
           (i32.add
            (local.get $4)
            (i32.const 1)
           )
          )
          (if
           (i32.ge_u
            (local.tee $1
             (i32.add
              (i32.or
               (i32.and
                (local.get $3)
                (i32.const 1023)
               )
               (i32.shl
                (i32.and
                 (local.tee $2
                  (local.get $1)
                 )
                 (i32.const 1023)
                )
                (i32.const 10)
               )
              )
              (i32.const 65536)
             )
            )
            (i32.const 131072)
           )
           (block
            (i32.store
             (i32.add
              (local.get $7)
              (i32.shl
               (local.get $6)
               (i32.const 1)
              )
             )
             (i32.or
              (local.get $2)
              (i32.shl
               (local.get $3)
               (i32.const 16)
              )
             )
            )
            (local.set $6
             (i32.add
              (local.get $6)
              (i32.const 1)
             )
            )
            (br $for-continue|0)
           )
          )
         )
        )
       )
       (if
        (i32.eq
         (local.get $1)
         (i32.const 304)
        )
        (block
         (i32.store
          (i32.add
           (local.get $7)
           (i32.shl
            (local.get $6)
            (i32.const 1)
           )
          )
          (i32.const 50790505)
         )
         (local.set $6
          (i32.add
           (local.get $6)
           (i32.const 1)
          )
         )
        )
        (if
         (i32.eq
          (local.get $1)
          (i32.const 931)
         )
         (i32.store16
          (i32.add
           (local.get $7)
           (i32.shl
            (local.get $6)
            (i32.const 1)
           )
          )
          (select
           (i32.const 962)
           (i32.const 963)
           (if (result i32)
            (i32.gt_u
             (local.get $8)
             (i32.const 1)
            )
            (block $~lib/util/string/isFinalSigma|inlined.0 (result i32)
             (local.set $1
              (i32.const 0)
             )
             (local.set $10
              (select
               (i32.const 0)
               (local.tee $3
                (i32.sub
                 (local.tee $2
                  (local.get $4)
                 )
                 (i32.const 30)
                )
               )
               (i32.lt_s
                (local.get $3)
                (i32.const 0)
               )
              )
             )
             (loop $while-continue|1
              (if
               (i32.gt_s
                (local.get $2)
                (local.get $10)
               )
               (block
                (local.set $3
                 (i32.const -1)
                )
                (block $~lib/util/string/codePointBefore|inlined.0
                 (br_if $~lib/util/string/codePointBefore|inlined.0
                  (i32.le_s
                   (local.tee $5
                    (local.get $2)
                   )
                   (i32.const 0)
                  )
                 )
                 (if
                  (i32.and
                   (i32.eq
                    (i32.and
                     (local.tee $9
                      (i32.load16_u
                       (i32.add
                        (local.get $0)
                        (i32.shl
                         (i32.sub
                          (local.get $5)
                          (i32.const 1)
                         )
                         (i32.const 1)
                        )
                       )
                      )
                     )
                     (i32.const 64512)
                    )
                    (i32.const 56320)
                   )
                   (i32.ge_s
                    (i32.sub
                     (local.get $5)
                     (i32.const 2)
                    )
                    (i32.const 0)
                   )
                  )
                  (block
                   (local.set $3
                    (i32.add
                     (i32.add
                      (i32.and
                       (local.get $9)
                       (i32.const 1023)
                      )
                      (i32.shl
                       (i32.and
                        (local.tee $2
                         (i32.load16_u
                          (i32.add
                           (local.get $0)
                           (i32.shl
                            (i32.sub
                             (local.get $5)
                             (i32.const 2)
                            )
                            (i32.const 1)
                           )
                          )
                         )
                        )
                        (i32.const 1023)
                       )
                       (i32.const 10)
                      )
                     )
                     (i32.const 65536)
                    )
                   )
                   (br_if $~lib/util/string/codePointBefore|inlined.0
                    (i32.eq
                     (i32.and
                      (local.get $2)
                      (i32.const 64512)
                     )
                     (i32.const 55296)
                    )
                   )
                  )
                 )
                 (local.set $3
                  (select
                   (i32.const 65533)
                   (local.get $9)
                   (i32.eq
                    (i32.and
                     (local.get $9)
                     (i32.const 63488)
                    )
                    (i32.const 55296)
                   )
                  )
                 )
                )
                (if
                 (i32.eqz
                  (if (result i32)
                   (i32.lt_u
                    (local.tee $2
                     (local.get $3)
                    )
                    (i32.const 918000)
                   )
                   (call $~lib/util/string/stagedBinaryLookup
                    (i32.const 3980)
                    (local.get $2)
                   )
                   (i32.const 0)
                  )
                 )
                 (local.set $1
                  (if (result i32)
                   (if (result i32)
                    (i32.lt_u
                     (local.get $2)
                     (i32.const 127370)
                    )
                    (call $~lib/util/string/stagedBinaryLookup
                     (i32.const 6988)
                     (local.get $2)
                    )
                    (i32.const 0)
                   )
                   (i32.const 1)
                   (br $~lib/util/string/isFinalSigma|inlined.0
                    (i32.const 0)
                   )
                  )
                 )
                )
                (local.set $2
                 (i32.sub
                  (local.get $5)
                  (i32.add
                   (i32.ge_s
                    (local.get $2)
                    (i32.const 65536)
                   )
                   (i32.const 1)
                  )
                 )
                )
                (br $while-continue|1)
               )
              )
             )
             (drop
              (br_if $~lib/util/string/isFinalSigma|inlined.0
               (i32.const 0)
               (i32.eqz
                (local.get $1)
               )
              )
             )
             (local.set $5
              (select
               (local.tee $1
                (i32.add
                 (local.tee $2
                  (i32.add
                   (local.get $4)
                   (i32.const 1)
                  )
                 )
                 (i32.const 30)
                )
               )
               (local.get $8)
               (i32.lt_s
                (local.get $1)
                (local.get $8)
               )
              )
             )
             (loop $while-continue|2
              (if
               (i32.lt_s
                (local.get $2)
                (local.get $5)
               )
               (block
                (if
                 (i32.eqz
                  (if (result i32)
                   (i32.lt_u
                    (block (result i32)
                     (if
                      (i32.and
                       (i32.eq
                        (i32.and
                         (local.tee $1
                          (i32.load16_u
                           (i32.add
                            (local.get $0)
                            (i32.shl
                             (local.get $2)
                             (i32.const 1)
                            )
                           )
                          )
                         )
                         (i32.const 64512)
                        )
                        (i32.const 55296)
                       )
                       (i32.ne
                        (local.get $8)
                        (i32.add
                         (local.get $2)
                         (i32.const 1)
                        )
                       )
                      )
                      (if
                       (i32.eq
                        (i32.and
                         (local.tee $3
                          (i32.load16_u offset=2
                           (i32.add
                            (local.get $0)
                            (i32.shl
                             (local.get $2)
                             (i32.const 1)
                            )
                           )
                          )
                         )
                         (i32.const 64512)
                        )
                        (i32.const 56320)
                       )
                       (local.set $1
                        (i32.sub
                         (i32.add
                          (i32.shl
                           (local.get $1)
                           (i32.const 10)
                          )
                          (local.get $3)
                         )
                         (i32.const 56613888)
                        )
                       )
                      )
                     )
                     (local.get $1)
                    )
                    (i32.const 918000)
                   )
                   (call $~lib/util/string/stagedBinaryLookup
                    (i32.const 3980)
                    (local.get $1)
                   )
                   (i32.const 0)
                  )
                 )
                 (br $~lib/util/string/isFinalSigma|inlined.0
                  (i32.eqz
                   (if (result i32)
                    (i32.lt_u
                     (local.get $1)
                     (i32.const 127370)
                    )
                    (call $~lib/util/string/stagedBinaryLookup
                     (i32.const 6988)
                     (local.get $1)
                    )
                    (i32.const 0)
                   )
                  )
                 )
                )
                (local.set $2
                 (i32.add
                  (local.get $2)
                  (i32.add
                   (i32.ge_u
                    (local.get $1)
                    (i32.const 65536)
                   )
                   (i32.const 1)
                  )
                 )
                )
                (br $while-continue|2)
               )
              )
             )
             (i32.const 1)
            )
            (i32.const 0)
           )
          )
         )
         (if
          (i32.le_u
           (i32.sub
            (local.get $1)
            (i32.const 9398)
           )
           (i32.const 25)
          )
          (i32.store16
           (i32.add
            (local.get $7)
            (i32.shl
             (local.get $6)
             (i32.const 1)
            )
           )
           (i32.add
            (local.get $1)
            (i32.const 26)
           )
          )
          (if
           (i32.lt_u
            (local.tee $2
             (i32.and
              (call $~lib/util/casemap/casemap
               (local.get $1)
              )
              (i32.const 2097151)
             )
            )
            (i32.const 65536)
           )
           (i32.store16
            (i32.add
             (local.get $7)
             (i32.shl
              (local.get $6)
              (i32.const 1)
             )
            )
            (local.get $2)
           )
           (block
            (i32.store
             (i32.add
              (local.get $7)
              (i32.shl
               (local.get $6)
               (i32.const 1)
              )
             )
             (i32.or
              (i32.or
               (i32.shr_u
                (local.tee $2
                 (i32.sub
                  (local.get $2)
                  (i32.const 65536)
                 )
                )
                (i32.const 10)
               )
               (i32.const 55296)
              )
              (i32.shl
               (i32.or
                (i32.and
                 (local.get $2)
                 (i32.const 1023)
                )
                (i32.const 56320)
               )
               (i32.const 16)
              )
             )
            )
            (local.set $6
             (i32.add
              (local.get $6)
              (i32.const 1)
             )
            )
           )
          )
         )
        )
       )
      )
      (i32.store16
       (i32.add
        (local.get $7)
        (i32.shl
         (local.get $6)
         (i32.const 1)
        )
       )
       (i32.or
        (local.get $1)
        (i32.shl
         (i32.lt_u
          (i32.sub
           (local.get $1)
           (i32.const 65)
          )
          (i32.const 26)
         )
         (i32.const 5)
        )
       )
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (local.set $6
      (i32.add
       (local.get $6)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/rt/stub/__renew
   (local.get $7)
   (i32.shl
    (local.get $6)
    (i32.const 1)
   )
  )
 )
 (func $~lib/as-chain/name/S2N (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local.set $2
   (i32.le_s
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 13)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 13184)
   (i32.const 1)
   (local.get $0)
  )
  (call $~lib/as-chain/system/check
   (local.get $2)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 13184)
   )
  )
  (loop $for-loop|0
   (if
    (i32.le_s
     (local.get $1)
     (i32.const 12)
    )
    (block
     (local.set $3
      (i64.const 0)
     )
     (if
      (select
       (i32.le_s
        (local.get $1)
        (i32.const 12)
       )
       (i32.const 0)
       (i32.gt_s
        (call $~lib/string/String#get:length
         (local.get $0)
        )
        (local.get $1)
       )
      )
      (block
       (local.set $2
        (call $~lib/string/String#charCodeAt
         (local.get $0)
         (local.get $1)
        )
       )
       (global.set $~argumentsLength
        (i32.const 1)
       )
       (if
        (i64.eq
         (local.tee $3
          (i64.extend_i32_u
           (i32.and
            (call_indirect (type $i32_=>_i32)
             (local.get $2)
             (i32.load
              (i32.const 1056)
             )
            )
            (i32.const 65535)
           )
          )
         )
         (i64.const 65535)
        )
        (block
         (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          (i32.const 13264)
          (i32.const 1)
          (local.get $0)
         )
         (call $~lib/as-chain/system/check
          (i32.const 0)
          (call $~lib/staticarray/StaticArray<~lib/string/String>#join
           (i32.const 13264)
          )
         )
         (return
          (i64.const 0)
         )
        )
       )
      )
     )
     (local.set $4
      (i64.or
       (local.get $4)
       (select
        (i64.shl
         (i64.and
          (local.get $3)
          (i64.const 31)
         )
         (i64.sub
          (i64.const 64)
          (i64.mul
           (i64.extend_i32_s
            (local.tee $2
             (i32.add
              (local.get $1)
              (i32.const 1)
             )
            )
           )
           (i64.const 5)
          )
         )
        )
        (i64.and
         (local.get $3)
         (i64.const 15)
        )
        (i32.lt_s
         (local.get $1)
         (i32.const 12)
        )
       )
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br $for-loop|0)
    )
   )
  )
  (local.get $4)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/pairs.table/PairsTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 43)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/pairs.table/PairsTable>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_end_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $assembly/factory/tables/pairs.table/PairsTable#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $2)
  )
  (local.set $2
   (i32.load
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $1)
      )
     )
     (i32.load offset=4
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $1)
   (i32.const 4)
  )
  (call $assembly/factory/tables/pairs.table/PairsTable#set:createdAt
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/factory/tables/pairs.table/PairsTable>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/factory/tables/pairs.table/PairsTable>#getEx (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/factory/tables/pairs.table/PairsTable>#getEx
     (i32.const 0)
     (i32.eqz
      (local.tee $1
       (call $~lib/as-chain/env/db_get_i64
        (local.tee $0
         (i32.load offset=4
          (local.get $1)
         )
        )
        (i32.const 0)
        (i32.const 0)
       )
      )
     )
    )
   )
   (drop
    (call $~lib/as-chain/env/db_get_i64
     (local.get $0)
     (i32.load offset=4
      (local.tee $0
       (call $~lib/array/Array<u8>#constructor
        (local.get $1)
       )
      )
     )
     (local.get $1)
    )
   )
   (drop
    (call $assembly/factory/tables/pairs.table/PairsTable#unpack
     (local.tee $1
      (call $assembly/factory/tables/pairs.table/PairsTable#constructor
       (i64.const 0)
       (global.get $~lib/as-chain/name/EMPTY_NAME)
       (global.get $~lib/as-chain/name/EMPTY_NAME)
       (global.get $~lib/as-chain/name/EMPTY_NAME)
       (i32.const 0)
      )
     )
     (local.get $0)
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<assembly/factory/tables/pairs.table/PairsTable>#get
     (i32.load
      (local.get $0)
     )
     (local.get $1)
    )
   )
   (return
    (local.get $0)
   )
  )
  (call $assembly/factory/tables/pairs.table/PairsTable#constructor
   (i64.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (i32.const 0)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/pairs.table/PairsTable>#get:availablePrimaryKey (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (if
   (i64.eq
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -1)
   )
   (if
    (i32.eq
     (i32.load offset=4
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/pairs.table/PairsTable>#constructor
       (local.tee $1
        (i32.load
         (i32.load
          (local.get $0)
         )
        )
       )
       (call $~lib/as-chain/env/db_lowerbound_i64
        (i64.load
         (local.get $1)
        )
        (i64.load offset=8
         (local.get $1)
        )
        (i64.load offset=16
         (local.get $1)
        )
        (i64.const 0)
       )
       (i64.const 0)
       (i32.const 0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#end
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#end
       (i32.load
        (local.get $0)
       )
      )
     )
     (local.set $3
      (i32.load
       (i32.load
        (local.get $0)
       )
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.set $1
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/pairs.table/PairsTable>#constructor
       (local.get $3)
       (call $~lib/as-chain/env/db_previous_i64
        (i32.load offset=4
         (local.get $2)
        )
        (local.get $1)
       )
       (i64.load
        (local.get $1)
       )
       (i32.const 1)
      )
     )
     (local.set $5
      (local.tee $4
       (i64.load
        (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#get
         (i32.load
          (local.get $0)
         )
         (local.get $1)
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $4)
       (i64.const -2)
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $0)
       (i64.add
        (local.get $5)
        (i64.const 1)
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/factory/tables/pairs.table/PairsTable>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/factory/tables/pairs.table/PairsTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/pairs.table/PairsTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/pairs.table/PairsTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $assembly/factory/factory.contract/Factory#findPair (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local.set $5
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/pairs.table/PairsTable>#get:availablePrimaryKey
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (loop $for-loop|0
   (if
    (i64.lt_u
     (local.get $4)
     (local.get $5)
    )
    (block
     (if
      (if (result i32)
       (if (result i32)
        (local.tee $3
         (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#getByKey (result i32)
          (drop
           (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#getByKey
            (i32.const 0)
            (i32.eqz
             (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
              (local.tee $6
               (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#find
                (local.tee $3
                 (i32.load
                  (i32.load offset=12
                   (local.get $0)
                  )
                 )
                )
                (local.get $4)
               )
              )
             )
            )
           )
          )
          (call $~lib/as-chain/dbi64/DBI64<assembly/factory/tables/pairs.table/PairsTable>#get
           (i32.load
            (local.get $3)
           )
           (local.get $6)
          )
         )
        )
        (i64.eq
         (i64.load
          (i32.load offset=8
           (local.get $3)
          )
         )
         (i64.load
          (local.get $1)
         )
        )
        (i32.const 0)
       )
       (i64.eq
        (i64.load
         (i32.load offset=12
          (local.get $3)
         )
        )
        (i64.load
         (local.get $2)
        )
       )
       (i32.const 0)
      )
      (return
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $4
      (i64.add
       (local.get $4)
       (i64.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (i64.const 0)
 )
 (func $~lib/as-chain/time/Microseconds#constructor (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 45)
    )
   )
   (local.get $0)
  )
  (local.get $1)
 )
 (func $assembly/factory/tables/pairs.table/PairsTable#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=12
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=16
        (local.get $0)
       )
      )
      (i32.const 36)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=16
    (local.get $0)
   )
  )
  (local.set $0
   (i32.load offset=20
    (local.get $0)
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $1)
   (i32.const 4)
  )
  (i32.store
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $1)
     )
    )
   )
   (local.get $0)
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/array/Array<u64>#__set (param $0 i32) (param $1 i64)
  (if
   (i32.eqz
    (i32.load offset=12
     (local.get $0)
    )
   )
   (block
    (call $~lib/array/ensureCapacity
     (local.get $0)
     (i32.const 1)
     (i32.const 3)
    )
    (call $~lib/rt/common/OBJECT#set:rtId
     (local.get $0)
     (i32.const 1)
    )
   )
  )
  (i64.store
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/newSecondaryValue_u64 (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/array/Array<u64>#__set
   (local.tee $1
    (call $~lib/array/Array<u64>#constructor
     (i32.const 1)
    )
   )
   (local.get $0)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local.set $6
   (i64.load
    (local.get $1)
   )
  )
  (local.set $4
   (i64.load
    (local.get $2)
   )
  )
  (local.set $5
   (i32.load
    (local.get $0)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $7
     (call $assembly/factory/tables/pairs.table/PairsTable#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/pairs.table/PairsTable>#constructor
    (local.get $5)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $5)
     )
     (i64.load offset=16
      (local.get $5)
     )
     (local.get $4)
     (local.get $6)
     (i32.load offset=4
      (local.get $7)
     )
     (local.get $8)
    )
    (local.get $6)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $0)
       )
       (local.get $3)
      )
      (i64.load
       (local.get $1)
      )
      (block $__inlined_func$assembly/factory/tables/pairs.table/PairsTable#getSecondaryValue (result i32)
       (block $case2|0
        (block $case1|0
         (if
          (local.get $3)
          (block
           (br_if $case1|0
            (i32.eq
             (local.get $3)
             (i32.const 1)
            )
           )
           (br $case2|0)
          )
         )
         (br $__inlined_func$assembly/factory/tables/pairs.table/PairsTable#getSecondaryValue
          (call $~lib/as-chain/idxdb/newSecondaryValue_u64
           (i64.load
            (i32.load offset=8
             (local.get $1)
            )
           )
          )
         )
        )
        (br $__inlined_func$assembly/factory/tables/pairs.table/PairsTable#getSecondaryValue
         (call $~lib/as-chain/idxdb/newSecondaryValue_u64
          (i64.load
           (i32.load offset=12
            (local.get $1)
           )
          )
         )
        )
       )
       (call $~lib/as-chain/system/assert
        (i32.const 0)
        (i32.const 13360)
       )
       (call $~lib/as-chain/idxdb/SecondaryValue#constructor
        (call $~lib/array/Array<u64>#constructor
         (i32.const 0)
        )
       )
      )
      (i64.load
       (local.get $2)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $4
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $assembly/factory/tables/config.table/ConfigTable#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $2
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $1)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $1)
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/factory/tables/config.table/ConfigTable>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (drop
   (call $assembly/factory/tables/config.table/ConfigTable#unpack
    (local.tee $0
     (call $assembly/factory/tables/config.table/ConfigTable#constructor
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/factory/tables/config.table/ConfigTable>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/factory/tables/config.table/ConfigTable>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/config.table/ConfigTable>#requireGet (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
    (local.tee $1
     (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/config.table/ConfigTable>#find
      (i32.load
       (local.get $0)
      )
      (i64.const 0)
     )
    )
   )
   (i32.const 13408)
  )
  (if (result i32)
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<assembly/factory/tables/config.table/ConfigTable>#get
     (i32.load
      (i32.load
       (local.get $0)
      )
     )
     (local.get $1)
    )
   )
   (local.get $0)
   (call $assembly/factory/tables/config.table/ConfigTable#constructor
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
 )
 (func $~lib/as-chain/action/PermissionLevel#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 48)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $assembly/factory/factory.inline/AddPairParams#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=4
        (local.get $0)
       )
      )
      (i32.const 16)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/varint/calcPackedVarUint32Length (param $0 i32) (result i32)
  (local $1 i32)
  (loop $while-continue|0
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.tee $0
     (i32.shr_u
      (local.get $0)
      (i32.const 7)
     )
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Encoder#packName (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $0)
   (i64.load
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u8> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 1)
  )
  (i32.store8
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packLength (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (loop $while-continue|0
   (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
    (local.get $0)
    (select
     (i32.or
      (local.tee $2
       (i32.and
        (local.get $1)
        (i32.const 127)
       )
      )
      (i32.const 128)
     )
     (local.get $2)
     (local.tee $1
      (i32.shr_u
       (local.get $1)
       (i32.const 7)
      )
     )
    )
   )
   (local.set $3
    (i32.add
     (local.get $3)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/action/Action#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (i32.add
       (i32.add
        (i32.add
         (call $~lib/as-chain/varint/calcPackedVarUint32Length
          (i32.load offset=12
           (i32.load offset=8
            (local.get $0)
           )
          )
         )
         (i32.shl
          (i32.load offset=12
           (i32.load offset=8
            (local.get $0)
           )
          )
          (i32.const 4)
         )
        )
        (i32.const 16)
       )
       (call $~lib/as-chain/varint/calcPackedVarUint32Length
        (i32.load offset=12
         (i32.load offset=12
          (local.get $0)
         )
        )
       )
      )
      (i32.load offset=12
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/serializer/Encoder#pack
      (local.get $1)
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=8
        (local.get $0)
       )
       (local.get $2)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (local.tee $0
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $1)
   (local.tee $0
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $1)
      )
     )
    )
    (local.get $2)
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $assembly/factory/factory.contract/Factory#createPair (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i32)
  (local $14 i64)
  (call $~lib/as-chain/action/requireAuth
   (local.get $7)
  )
  (local.set $8
   (local.get $1)
  )
  (local.set $10
   (local.get $2)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (block $__inlined_func$~lib/string/String.__eq (result i32)
     (drop
      (br_if $__inlined_func$~lib/string/String.__eq
       (i32.const 1)
       (i32.eq
        (local.get $1)
        (local.get $2)
       )
      )
     )
     (drop
      (br_if $__inlined_func$~lib/string/String.__eq
       (i32.const 0)
       (select
        (i32.eqz
         (local.get $10)
        )
        (i32.const 1)
        (local.get $8)
       )
      )
     )
     (drop
      (br_if $__inlined_func$~lib/string/String.__eq
       (i32.const 0)
       (i32.ne
        (local.tee $9
         (call $~lib/string/String#get:length
          (local.get $8)
         )
        )
        (call $~lib/string/String#get:length
         (local.get $10)
        )
       )
      )
     )
     (i32.eqz
      (block $__inlined_func$~lib/util/string/compareImpl (result i32)
       (local.set $11
        (local.get $8)
       )
       (local.set $8
        (local.get $9)
       )
       (loop $while-continue|0
        (local.set $8
         (i32.sub
          (local.tee $9
           (local.get $8)
          )
          (i32.const 1)
         )
        )
        (if
         (local.get $9)
         (block
          (if
           (i32.ne
            (local.tee $9
             (i32.load16_u
              (local.get $11)
             )
            )
            (local.tee $13
             (i32.load16_u
              (local.get $10)
             )
            )
           )
           (br $__inlined_func$~lib/util/string/compareImpl
            (i32.sub
             (local.get $9)
             (local.get $13)
            )
           )
          )
          (local.set $11
           (i32.add
            (local.get $11)
            (i32.const 2)
           )
          )
          (local.set $10
           (i32.add
            (local.get $10)
            (i32.const 2)
           )
          )
          (br $while-continue|0)
         )
        )
       )
       (i32.const 0)
      )
     )
    )
   )
   (i32.const 2912)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i32.gt_s
     (call $~lib/string/String#get:length
      (local.get $1)
     )
     (i32.const 0)
    )
    (i32.gt_s
     (call $~lib/string/String#get:length
      (local.get $2)
     )
     (i32.const 0)
    )
    (i32.const 0)
   )
   (i32.const 2992)
  )
  (call $~lib/as-chain/system/check
   (i64.ne
    (i64.load
     (local.get $3)
    )
    (i64.load
     (global.get $~lib/as-chain/name/EMPTY_NAME)
    )
   )
   (i32.const 3056)
  )
  (call $~lib/as-chain/system/check
   (i64.ne
    (i64.load
     (local.get $4)
    )
    (i64.load
     (global.get $~lib/as-chain/name/EMPTY_NAME)
    )
   )
   (i32.const 3136)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/action/isAccount
    (local.get $3)
   )
   (i32.const 3216)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/action/isAccount
    (local.get $4)
   )
   (i32.const 3296)
  )
  (call $assembly/factory/factory.contract/Factory#verifyTokenExist
   (local.get $3)
   (local.get $1)
   (local.get $5)
  )
  (call $assembly/factory/factory.contract/Factory#verifyTokenExist
   (local.get $4)
   (local.get $2)
   (local.get $6)
  )
  (local.set $12
   (call $~lib/as-chain/name/S2N
    (call $~lib/string/String#toLowerCase
     (local.get $1)
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $3)
   (local.get $12)
  )
  (local.set $12
   (call $~lib/as-chain/name/S2N
    (call $~lib/string/String#toLowerCase
     (local.get $2)
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (local.get $12)
  )
  (if
   (i64.gt_u
    (i64.load
     (local.tee $1
      (local.get $3)
     )
    )
    (i64.load
     (local.get $2)
    )
   )
   (local.set $2
    (block (result i32)
     (local.set $1
      (local.get $2)
     )
     (local.get $3)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eqz
    (call $assembly/factory/factory.contract/Factory#findPair
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
   (i32.const 13296)
  )
  (local.set $12
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/pairs.table/PairsTable>#get:availablePrimaryKey
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (local.set $14
   (call $~lib/as-chain/env/current_time)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 44)
    )
   )
   (call $~lib/as-chain/time/Microseconds#constructor
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $3)
   (call $~lib/as-chain/time/Microseconds#constructor
    (local.get $14)
   )
  )
  (local.set $4
   (call $assembly/factory/tables/pairs.table/PairsTable#constructor
    (local.get $12)
    (local.get $1)
    (local.get $2)
    (local.get $7)
    (i32.wrap_i64
     (i64.div_s
      (i64.load
       (i32.load
        (local.get $3)
       )
      )
      (i64.const 1000000)
     )
    )
   )
  )
  (local.set $5
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#find
      (i32.load
       (local.tee $3
        (i32.load offset=12
         (local.get $0)
        )
       )
      )
      (local.tee $12
       (i64.load
        (local.get $4)
       )
      )
     )
    )
   )
   (i32.const 1200)
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#store
   (i32.load
    (local.get $3)
   )
   (local.get $4)
   (local.get $5)
  )
  (if
   (i64.ge_u
    (local.get $12)
    (i64.load offset=8
     (local.get $3)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $3)
    (select
     (i64.const -2)
     (i64.add
      (local.get $12)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $12)
      (i64.const -2)
     )
    )
   )
  )
  (local.set $5
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/config.table/ConfigTable>#requireGet
    (i32.load offset=20
     (local.get $0)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 47)
    )
   )
   (i32.const 0)
  )
  (local.set $12
   (call $~lib/as-chain/name/S2N
    (i32.const 13488)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $4)
   (local.get $12)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $3)
   (local.get $4)
  )
  (local.set $4
   (i32.load offset=8
    (local.get $5)
   )
  )
  (local.set $5
   (i32.load
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $12
   (call $~lib/as-chain/name/S2N
    (i32.const 13536)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (local.get $12)
  )
  (local.set $5
   (call $~lib/as-chain/action/PermissionLevel#constructor
    (local.get $5)
    (local.get $0)
   )
  )
  (local.set $3
   (i32.load
    (local.get $3)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 49)
    )
   )
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $4)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 46)
    )
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $3)
   (local.get $2)
  )
  (drop
   (i32.load offset=4
    (local.tee $1
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 50)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $1)
   (i32.const 0)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (local.set $4
   (i32.load
    (local.get $0)
   )
  )
  (local.set $3
   (call $assembly/factory/factory.inline/AddPairParams#pack
    (local.get $3)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 51)
    )
   )
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $4)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $3)
  )
  (local.set $1
   (i32.load offset=12
    (local.tee $0
     (call $~lib/as-chain/action/Action#pack
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/env/send_inline
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $assembly/factory/factory.contract/Factory#getPair (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  (local $3 i32)
  (local.set $3
   (local.get $1)
  )
  (if
   (i64.gt_u
    (i64.load
     (local.get $1)
    )
    (i64.load
     (local.get $2)
    )
   )
   (local.set $2
    (block (result i32)
     (local.set $3
      (local.get $2)
     )
     (local.get $1)
    )
   )
  )
  (call $assembly/factory/factory.contract/Factory#findPair
   (local.get $0)
   (local.get $3)
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/pairs.table/PairsTable>#remove (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
    (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#find
     (i32.load
      (local.get $0)
     )
     (local.tee $4
      (i64.load
       (local.get $1)
      )
     )
    )
   )
   (i32.const 1648)
  )
  (local.set $1
   (i32.const 0)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
    (local.tee $2
     (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#find
      (local.tee $3
       (i32.load
        (local.get $0)
       )
      )
      (local.get $4)
     )
    )
   )
   (i32.const 13648)
  )
  (drop
   (i32.load
    (local.get $3)
   )
  )
  (call $~lib/as-chain/env/db_remove_i64
   (i32.load offset=4
    (local.get $2)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $3)
      )
     )
    )
    (block
     (if
      (i32.ge_s
       (i32.load
        (i32.load
         (local.tee $2
          (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
           (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
            (i32.load offset=4
             (local.get $3)
            )
            (local.get $1)
           )
           (local.get $4)
          )
         )
        )
       )
       (i32.const 0)
      )
      (block $__inlined_func$~lib/as-chain/idxdb/IDXDB#remove@virtual
       (local.set $5
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (i32.load offset=4
          (local.get $3)
         )
         (local.get $1)
        )
       )
       (local.set $2
        (i32.load
         (local.get $2)
        )
       )
       (if
        (i32.eq
         (i32.load
          (i32.sub
           (local.get $5)
           (i32.const 8)
          )
         )
         (i32.const 25)
        )
        (block
         (call $~lib/as-chain/env/db_idx64_remove
          (i32.load
           (local.get $2)
          )
         )
         (br $__inlined_func$~lib/as-chain/idxdb/IDXDB#remove@virtual)
        )
       )
       (unreachable)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.eq
    (local.get $4)
    (i64.sub
     (i64.load offset=8
      (local.get $0)
     )
     (i64.const 1)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (i64.const -1)
   )
  )
 )
 (func $assembly/factory/factory.contract/Factory#removePair (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (local.set $3
   (local.get $1)
  )
  (if
   (i64.gt_u
    (i64.load
     (local.get $1)
    )
    (i64.load
     (local.get $2)
    )
   )
   (local.set $2
    (block (result i32)
     (local.set $3
      (local.get $2)
     )
     (local.get $1)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.ne
    (local.tee $4
     (call $assembly/factory/factory.contract/Factory#findPair
      (local.get $0)
      (local.get $3)
      (local.get $2)
     )
    )
    (i64.const 0)
   )
   (i32.const 13568)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
    (local.tee $2
     (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#find
      (i32.load
       (local.tee $1
        (i32.load offset=12
         (local.get $0)
        )
       )
      )
      (local.get $4)
     )
    )
   )
   (i32.const 13568)
  )
  (local.set $1
   (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#get
    (i32.load
     (local.get $1)
    )
    (local.get $2)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/pairs.table/PairsTable>#remove
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/feesettings.table/FeeSettingsTable>#requireGet (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
    (local.tee $1
     (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/feesettings.table/FeeSettingsTable>#find
      (i32.load
       (local.get $0)
      )
      (i64.const 0)
     )
    )
   )
   (i32.const 13728)
  )
  (if (result i32)
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<assembly/factory/tables/feesettings.table/FeeSettingsTable>#get
     (i32.load
      (i32.load
       (local.get $0)
      )
     )
     (local.get $1)
    )
   )
   (local.get $0)
   (call $assembly/factory/tables/feesettings.table/FeeSettingsTable#constructor
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/feesettings.table/FeeSettingsTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
    (local.get $1)
   )
   (i32.const 13808)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $4
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
       (local.get $1)
      )
      (i32.const 13872)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $6
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/factory/tables/feesettings.table/FeeSettingsTable>#getEx
          (i32.load
           (local.get $1)
          )
          (i32.load offset=4
           (local.get $1)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/idxdb/IDXDB#set:table
      (local.get $1)
      (i64.load
       (local.get $6)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 13952)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $6
   (i32.load offset=12
    (local.tee $2
     (call $assembly/factory/tables/feesettings.table/FeeSettingsTable#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $6)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $4)
      )
     )
     (local.set $2
      (call $assembly/factory/tables/feesettings.table/FeeSettingsTable#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/factory/tables/feesettings.table/FeeSettingsTable#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $4)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/feesettings.table/FeeSettingsTable>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/feesettings.table/FeeSettingsTable>#find
      (i32.load
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
     )
    )
   )
   (i32.const 1424)
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/feesettings.table/FeeSettingsTable>#update
   (i32.load
    (local.get $0)
   )
   (local.get $3)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $assembly/factory/factory.contract/Factory#setFeeTo (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load offset=12
    (local.tee $2
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/feesettings.table/FeeSettingsTable>#requireGet
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/feesettings.table/FeeSettingsTable>#update
   (i32.load offset=16
    (local.get $0)
   )
   (local.get $2)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/factory/factory.contract/Factory#setFeeToSetter (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $~lib/as-chain/system/check
   (i64.ne
    (i64.load
     (local.get $1)
    )
    (i64.load
     (global.get $~lib/as-chain/name/EMPTY_NAME)
    )
   )
   (i32.const 2992)
  )
  (call $~lib/as-chain/action/requireAuth
   (i32.load offset=12
    (local.tee $2
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/feesettings.table/FeeSettingsTable>#requireGet
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/feesettings.table/FeeSettingsTable>#update
   (i32.load offset=16
    (local.get $0)
   )
   (local.get $2)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/factory/factory.contract/Factory#getFeeTo (param $0 i32) (result i32)
  (i32.load offset=8
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/feesettings.table/FeeSettingsTable>#requireGet
    (i32.load offset=16
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/config.table/ConfigTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
    (local.get $1)
   )
   (i32.const 13808)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $4
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/config.table/ConfigTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
       (local.get $1)
      )
      (i32.const 13872)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/config.table/ConfigTable>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $6
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/config.table/ConfigTable>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/config.table/ConfigTable>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/factory/tables/config.table/ConfigTable>#getEx
          (i32.load
           (local.get $1)
          )
          (i32.load offset=4
           (local.get $1)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/idxdb/IDXDB#set:table
      (local.get $1)
      (i64.load
       (local.get $6)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 13952)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $6
   (i32.load offset=12
    (local.tee $2
     (call $assembly/factory/tables/config.table/ConfigTable#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $6)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $4)
      )
     )
     (local.set $2
      (call $assembly/factory/tables/feesettings.table/FeeSettingsTable#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/factory/tables/feesettings.table/FeeSettingsTable#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $4)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $assembly/factory/factory.contract/Factory#setAmmContract (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (if
   (local.tee $2
    (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/factory/tables/config.table/ConfigTable>#getByKey (result i32)
     (drop
      (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/factory/tables/config.table/ConfigTable>#getByKey
       (i32.const 0)
       (i32.eqz
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
         (local.tee $3
          (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/config.table/ConfigTable>#find
           (local.tee $2
            (i32.load
             (i32.load offset=20
              (local.get $0)
             )
            )
           )
           (i64.const 0)
          )
         )
        )
       )
      )
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/factory/tables/config.table/ConfigTable>#get
      (i32.load
       (local.get $2)
      )
      (local.get $3)
     )
    )
   )
   (block
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $2)
     (local.get $1)
    )
    (local.set $3
     (i32.load
      (local.get $0)
     )
    )
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
      (local.tee $0
       (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/config.table/ConfigTable>#find
        (i32.load
         (local.tee $1
          (i32.load offset=20
           (local.get $0)
          )
         )
        )
        (i64.load
         (local.get $2)
        )
       )
      )
     )
     (i32.const 1424)
    )
    (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/config.table/ConfigTable>#update
     (i32.load
      (local.get $1)
     )
     (local.get $0)
     (local.get $2)
     (local.get $3)
    )
   )
   (block
    (local.set $1
     (call $assembly/factory/tables/config.table/ConfigTable#constructor
      (local.get $1)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/config.table/ConfigTable>#store
     (i32.load offset=20
      (local.get $0)
     )
     (local.get $1)
     (i32.load
      (local.get $0)
     )
    )
   )
  )
 )
 (func $assembly/factory/factory.contract/Factory#getAmmContract (param $0 i32) (result i32)
  (i32.load offset=8
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/config.table/ConfigTable>#requireGet
    (i32.load offset=20
     (local.get $0)
    )
   )
  )
 )
 (func $assembly/factory/factory.contract/initializeAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/factory/factory.contract/createPairAction#set:tokenAPrecision (param $0 i32) (param $1 i32)
  (i32.store8 offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/factory/factory.contract/createPairAction#set:tokenBPrecision (param $0 i32) (param $1 i32)
  (i32.store8 offset=17
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u8> (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (i32.load8_u
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 1)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#unpackLength (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $while-continue|0
   (local.set $1
    (i32.or
     (local.get $1)
     (i32.shl
      (i32.and
       (local.tee $3
        (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
         (local.get $0)
        )
       )
       (i32.const 127)
      )
      (local.get $2)
     )
    )
   )
   (local.set $2
    (i32.add
     (local.get $2)
     (i32.const 7)
    )
   )
   (local.set $4
    (i32.add
     (local.get $4)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (i32.and
     (local.get $3)
     (i32.const 128)
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#unpackString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#unpackLength
    (local.get $0)
   )
  )
  (local.set $2
   (call $~lib/array/Array<u8>#slice
    (i32.load
     (local.get $0)
    )
    (i32.load offset=4
     (local.get $0)
    )
    (i32.add
     (local.get $1)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/string/String.UTF8.decode
   (i32.load
    (local.get $2)
   )
  )
 )
 (func $assembly/factory/factory.contract/createPairAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/factory/factory.contract/createPairAction#set:tokenAPrecision
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $assembly/factory/factory.contract/createPairAction#set:tokenBPrecision
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $assembly/factory/tables/pairs.table/PairsTable#set:createdAt
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/action/setActionReturnValue (param $0 i32)
  (call $~lib/as-chain/env/set_action_return_value
   (i32.load offset=4
    (local.get $0)
   )
   (i32.load offset=12
    (local.get $0)
   )
  )
 )
 (func $assembly/factory/factory.contract/setFeeToAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $1)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $1)
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $assembly/factory/factory.contract/getFeeToAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (i32.load offset=4
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
 )
 (func $assembly/factory/factory.contract/apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $3)
   (local.get $0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $5)
   (local.get $2)
  )
  (local.set $7
   (call $assembly/factory/factory.contract/Factory#constructor
    (i32.const 0)
    (local.get $3)
    (local.get $4)
    (local.get $5)
   )
  )
  (drop
   (call $~lib/as-chain/env/read_action_data
    (i32.load offset=4
     (local.tee $4
      (call $~lib/array/Array<u8>#constructor
       (local.tee $3
        (call $~lib/as-chain/env/action_data_size)
       )
      )
     )
    )
    (local.get $3)
   )
  )
  (local.set $6
   (local.get $4)
  )
  (if
   (i64.eq
    (local.get $0)
    (local.get $1)
   )
   (block
    (if
     (i64.eq
      (local.get $2)
      (i64.const 8421045207927095296)
     )
     (block
      (drop
       (call $assembly/factory/factory.contract/initializeAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 8)
            (i32.const 53)
           )
          )
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $6)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load offset=4
          (local.get $4)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/factory/factory.contract/Factory#initialize
       (local.get $7)
       (local.get $3)
       (local.get $4)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 5031766163872661504)
     )
     (block
      (drop
       (call $assembly/factory/factory.contract/createPairAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 24)
            (i32.const 54)
           )
          )
          (i32.const 3600)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $3)
          (i32.const 3600)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo2
          (local.get $3)
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:rtId
          (local.get $3)
          (i32.const 0)
         )
         (call $assembly/factory/factory.contract/createPairAction#set:tokenAPrecision
          (local.get $3)
          (i32.const 0)
         )
         (call $assembly/factory/factory.contract/createPairAction#set:tokenBPrecision
          (local.get $3)
          (i32.const 0)
         )
         (call $assembly/factory/tables/pairs.table/PairsTable#set:createdAt
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $5
          (local.get $3)
         )
        )
        (local.get $6)
       )
      )
      (local.set $8
       (i32.load
        (local.get $3)
       )
      )
      (local.set $9
       (i32.load offset=4
        (local.get $3)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=8
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (local.set $4
       (local.get $3)
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=12
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (local.set $10
       (i32.load8_u offset=16
        (local.get $5)
       )
      )
      (local.set $11
       (i32.load8_u offset=17
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $5
         (i32.load offset=20
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/factory/factory.contract/Factory#createPair
       (local.get $7)
       (local.get $8)
       (local.get $9)
       (local.get $4)
       (local.get $3)
       (local.get $10)
       (local.get $11)
       (local.get $5)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 7112119748879450112)
     )
     (block
      (drop
       (call $assembly/factory/factory.contract/initializeAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 8)
            (i32.const 55)
           )
          )
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $6)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load offset=4
          (local.get $4)
         )
        )
       )
       (unreachable)
      )
      (local.set $0
       (call $assembly/factory/factory.contract/Factory#getPair
        (local.get $7)
        (local.get $3)
        (local.get $4)
       )
      )
      (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
       (local.tee $3
        (call $~lib/as-chain/serializer/Encoder#constructor
         (i32.const 8)
        )
       )
       (local.get $0)
      )
      (call $~lib/as-chain/action/setActionReturnValue
       (call $~lib/as-chain/serializer/Encoder#getBytes
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4997502816165183488)
     )
     (block
      (drop
       (call $assembly/factory/factory.contract/initializeAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 8)
            (i32.const 56)
           )
          )
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $6)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load offset=4
          (local.get $4)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/factory/factory.contract/Factory#removePair
       (local.get $7)
       (local.get $3)
       (local.get $4)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417269087336398848)
     )
     (block
      (drop
       (call $assembly/factory/factory.contract/setFeeToAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 57)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $6)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/factory/factory.contract/Factory#setFeeTo
       (local.get $7)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417269088027519632)
     )
     (block
      (drop
       (call $assembly/factory/factory.contract/setFeeToAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 58)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $6)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/factory/factory.contract/Factory#setFeeToSetter
       (local.get $7)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 7111945958732070912)
     )
     (block
      (drop
       (call $assembly/factory/factory.contract/getFeeToAction#unpack
        (call $~lib/rt/stub/__new
         (i32.const 0)
         (i32.const 59)
        )
        (local.get $6)
       )
      )
      (local.set $3
       (call $assembly/factory/factory.contract/Factory#getFeeTo
        (local.get $7)
       )
      )
      (call $~lib/as-chain/serializer/Encoder#pack
       (local.tee $4
        (call $~lib/as-chain/serializer/Encoder#constructor
         (i32.const 8)
        )
       )
       (local.get $3)
      )
      (call $~lib/as-chain/action/setActionReturnValue
       (call $~lib/as-chain/serializer/Encoder#getBytes
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417352526538473472)
     )
     (block
      (drop
       (call $assembly/factory/factory.contract/setFeeToAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 60)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $6)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/factory/factory.contract/Factory#setAmmContract
       (local.get $7)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 7111862519529996288)
     )
     (block
      (drop
       (call $assembly/factory/factory.contract/getFeeToAction#unpack
        (call $~lib/rt/stub/__new
         (i32.const 0)
         (i32.const 61)
        )
        (local.get $6)
       )
      )
      (local.set $3
       (call $assembly/factory/factory.contract/Factory#getAmmContract
        (local.get $7)
       )
      )
      (call $~lib/as-chain/serializer/Encoder#pack
       (local.tee $4
        (call $~lib/as-chain/serializer/Encoder#constructor
         (i32.const 8)
        )
       )
       (local.get $3)
      )
      (call $~lib/as-chain/action/setActionReturnValue
       (call $~lib/as-chain/serializer/Encoder#getBytes
        (local.get $4)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackName (param $0 i32) (result i32)
  (local $1 i64)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (local.get $1)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/action/Action#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.tee $2
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.get $2)
   )
  )
  (local.set $4
   (local.tee $7
    (call $~lib/as-chain/serializer/Decoder#unpackLength
     (local.get $2)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 50)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $5)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $5)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $5)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $4)
    (i32.const 268435455)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $1
    (call $~lib/rt/stub/__new
     (local.tee $6
      (i32.shl
       (select
        (local.get $4)
        (i32.const 8)
        (i32.gt_u
         (local.get $4)
         (i32.const 8)
        )
       )
       (i32.const 2)
      )
     )
     (i32.const 0)
    )
   )
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $5)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $5)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $5)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $5)
   (local.get $4)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $5)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $7)
    )
    (block
     (local.set $6
      (call $~lib/as-chain/action/PermissionLevel#constructor
       (call $~lib/as-chain/serializer/Decoder#unpackName
        (local.get $2)
       )
       (call $~lib/as-chain/serializer/Decoder#unpackName
        (local.get $2)
       )
      )
     )
     (if
      (i32.ge_u
       (local.get $3)
       (i32.load offset=12
        (local.tee $4
         (i32.load offset=8
          (local.get $0)
         )
        )
       )
      )
      (block
       (if
        (i32.lt_s
         (local.get $3)
         (i32.const 0)
        )
        (unreachable)
       )
       (call $~lib/array/ensureCapacity
        (local.get $4)
        (local.tee $1
         (i32.add
          (local.get $3)
          (i32.const 1)
         )
        )
        (i32.const 2)
       )
       (call $~lib/rt/common/OBJECT#set:rtId
        (local.get $4)
        (local.get $1)
       )
      )
     )
     (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
      (local.get $4)
      (local.get $3)
      (local.get $6)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (drop
   (i32.load offset=4
    (local.get $2)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.tee $3
        (call $~lib/as-chain/serializer/Decoder#unpackLength
         (local.get $2)
        )
       )
      )
     )
    )
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $2)
      )
     )
     (i32.load offset=4
      (local.get $2)
     )
    )
    (local.get $3)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $2)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $1)
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $~lib/as-chain/asset/Symbol#isValid (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (block $__inlined_func$~lib/as-chain/asset/isValid (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.eqz
      (local.tee $3
       (i64.shr_u
        (i64.load
         (local.get $0)
        )
        (i64.const 8)
       )
      )
     )
    )
   )
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.ne
      (i64.and
       (local.get $3)
       (i64.const -72057594037927936)
      )
      (i64.const 0)
     )
    )
   )
   (loop $for-loop|0
    (if
     (i32.le_s
      (local.get $2)
      (i32.const 6)
     )
     (block $for-break0
      (local.set $1
       (local.get $2)
      )
      (drop
       (br_if $__inlined_func$~lib/as-chain/asset/isValid
        (i32.const 0)
        (i32.eqz
         (select
          (i32.le_u
           (local.tee $0
            (i32.wrap_i64
             (i64.and
              (local.get $3)
              (i64.const 255)
             )
            )
           )
           (i32.const 90)
          )
          (i32.const 0)
          (i32.ge_u
           (local.get $0)
           (i32.const 65)
          )
         )
        )
       )
      )
      (br_if $for-break0
       (i64.eqz
        (i64.and
         (local.tee $3
          (i64.shr_u
           (local.get $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (loop $for-loop|1
    (if
     (i32.le_s
      (local.get $1)
      (i32.const 6)
     )
     (block
      (drop
       (br_if $__inlined_func$~lib/as-chain/asset/isValid
        (i32.const 0)
        (i64.ne
         (i64.and
          (local.tee $3
           (i64.shr_u
            (local.get $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
      )
      (local.set $1
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|1)
     )
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/serializer/Packer#unpack@virtual (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (block $folding-inner2
   (block $folding-inner1
    (block $folding-inner0
     (block $default
      (block $case20
       (block $case19
        (block $case18
         (block $case17
          (block $case16
           (block $case15
            (block $case14
             (block $case13
              (block $case12
               (block $case11
                (block $case10
                 (block $case1
                  (br_table $case14 $default $default $default $case17 $default $default $default $default $default $default $default $case18 $default $default $default $case19 $default $default $default $default $default $default $default $default $default $default $default $default $default $case20 $case16 $case15 $default $default $default $default $default $default $case11 $case10 $folding-inner0 $default $case12 $default $default $case13 $default $folding-inner0 $case1 $folding-inner0 $folding-inner0 $folding-inner1 $folding-inner1 $folding-inner2 $folding-inner1 $folding-inner2 $default
                   (i32.sub
                    (i32.load
                     (i32.sub
                      (local.get $0)
                      (i32.const 8)
                     )
                    )
                    (i32.const 5)
                   )
                  )
                 )
                 (return
                  (call $assembly/factory/factory.contract/createPairAction#unpack
                   (local.get $0)
                   (local.get $1)
                  )
                 )
                )
                (call $~lib/as-chain/name/Name#set:N
                 (local.get $0)
                 (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                  (local.tee $0
                   (call $~lib/as-chain/serializer/Decoder#constructor
                    (local.get $1)
                   )
                  )
                 )
                )
                (return
                 (i32.load offset=4
                  (local.get $0)
                 )
                )
               )
               (call $~lib/as-chain/serializer/Decoder#unpack
                (local.tee $1
                 (call $~lib/as-chain/serializer/Decoder#constructor
                  (local.get $1)
                 )
                )
                (i32.load
                 (local.get $0)
                )
               )
               (return
                (i32.load offset=4
                 (local.get $1)
                )
               )
              )
              (call $~lib/rt/common/BLOCK#set:mmInfo
               (local.get $0)
               (call $~lib/as-chain/serializer/Decoder#unpackName
                (local.tee $1
                 (call $~lib/as-chain/serializer/Decoder#constructor
                  (local.get $1)
                 )
                )
               )
              )
              (call $~lib/rt/common/OBJECT#set:gcInfo
               (local.get $0)
               (call $~lib/as-chain/serializer/Decoder#unpackName
                (local.get $1)
               )
              )
              (return
               (i32.load offset=4
                (local.get $1)
               )
              )
             )
             (return
              (call $~lib/as-chain/action/Action#unpack
               (local.get $0)
               (local.get $1)
              )
             )
            )
            (call $~lib/as-chain/name/Name#set:N
             (local.get $0)
             (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
              (call $~lib/as-chain/serializer/Decoder#constructor
               (local.get $1)
              )
             )
            )
            (return
             (i32.const 8)
            )
           )
           (call $~lib/as-chain/name/Name#set:N
            (local.get $0)
            (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
             (local.tee $1
              (call $~lib/as-chain/serializer/Decoder#constructor
               (local.get $1)
              )
             )
            )
           )
           (call $~lib/as-chain/system/check
            (call $~lib/as-chain/asset/Symbol#isValid
             (local.get $0)
            )
            (i32.const 14064)
           )
           (return
            (i32.load offset=4
             (local.get $1)
            )
           )
          )
          (local.set $3
           (i64.load
            (i32.add
             (i32.load offset=4
              (i32.load
               (local.tee $2
                (call $~lib/as-chain/serializer/Decoder#constructor
                 (local.get $1)
                )
               )
              )
             )
             (i32.load offset=4
              (local.get $2)
             )
            )
           )
          )
          (call $~lib/as-chain/serializer/Decoder#incPos
           (local.get $2)
           (i32.const 8)
          )
          (call $~lib/as-chain/name/Name#set:N
           (local.get $0)
           (local.get $3)
          )
          (call $~lib/as-chain/serializer/Decoder#unpack
           (local.get $2)
           (i32.load offset=8
            (local.get $0)
           )
          )
          (call $~lib/as-chain/system/check
           (if (result i32)
            (if (result i32)
             (i64.ge_s
              (i64.load
               (local.tee $1
                (local.get $0)
               )
              )
              (i64.const -4611686018427387903)
             )
             (i64.le_s
              (i64.load
               (local.get $1)
              )
              (i64.const 4611686018427387903)
             )
             (i32.const 0)
            )
            (call $~lib/as-chain/asset/Symbol#isValid
             (i32.load offset=8
              (local.get $1)
             )
            )
            (i32.const 0)
           )
           (i32.const 14112)
          )
          (return
           (i32.load offset=4
            (local.get $2)
           )
          )
         )
         (return
          (call $assembly/factory/tables/pairs.table/PairsTable#unpack
           (local.get $0)
           (local.get $1)
          )
         )
        )
        (return
         (call $assembly/factory/tables/feesettings.table/FeeSettingsTable#unpack
          (local.get $0)
          (local.get $1)
         )
        )
       )
       (return
        (call $assembly/factory/tables/config.table/ConfigTable#unpack
         (local.get $0)
         (local.get $1)
        )
       )
      )
      (return
       (call $assembly/factory/tables/stat.table/TokenStatTable#unpack
        (local.get $0)
        (local.get $1)
       )
      )
     )
     (unreachable)
    )
    (return
     (call $assembly/factory/factory.contract/initializeAction#unpack
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (return
    (call $assembly/factory/factory.contract/setFeeToAction#unpack
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (call $assembly/factory/factory.contract/getFeeToAction#unpack
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/utils/Utils.calcPackedStringLength (param $0 i32) (result i32)
  (i32.add
   (call $~lib/as-chain/varint/calcPackedVarUint32Length
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.tee $0
      (call $~lib/string/String.UTF8.encode
       (local.get $0)
       (i32.const 0)
      )
     )
    )
   )
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packString (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.tee $1
     (call $~lib/string/String.UTF8.encode
      (local.get $1)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $2
   (i32.add
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (local.get $2)
    (local.get $1)
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.get $1)
    )
   )
  )
  (drop
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $1)
   )
  )
 )
 (func $assembly/factory/factory.contract/createPairAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (i32.add
    (call $~lib/as-chain/utils/Utils.calcPackedStringLength
     (i32.load
      (local.get $0)
     )
    )
    (call $~lib/as-chain/utils/Utils.calcPackedStringLength
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (if
   (i32.eqz
    (i32.load offset=8
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $1
   (i32.add
    (local.get $1)
    (i32.const 8)
   )
  )
  (if
   (i32.eqz
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $1
   (i32.add
    (local.get $1)
    (i32.const 10)
   )
  )
  (if
   (i32.eqz
    (i32.load offset=20
     (local.get $0)
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (local.get $1)
      (i32.const 8)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load offset=8
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (local.get $2)
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=17
    (local.get $0)
   )
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load offset=20
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $assembly/factory/factory.contract/getFeeToAction#pack (result i32)
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (call $~lib/as-chain/serializer/Encoder#constructor
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Packer#pack@virtual (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $folding-inner3
   (block $folding-inner2
    (block $folding-inner1
     (block $folding-inner0
      (block $default
       (block $case20
        (block $case19
         (block $case18
          (block $case17
           (block $case16
            (block $case15
             (block $case14
              (block $case13
               (block $case12
                (block $case11
                 (block $case10
                  (block $case9
                   (block $case8
                    (block $case6
                     (block $case1
                      (br_table $case14 $default $default $default $case17 $default $default $default $default $default $default $default $case18 $default $default $default $case19 $default $default $default $default $default $default $default $default $default $default $default $default $default $case20 $case16 $case15 $default $default $default $default $default $default $case11 $case10 $case9 $default $case12 $default $default $case13 $default $folding-inner0 $case1 $folding-inner0 $folding-inner0 $folding-inner1 $folding-inner1 $case6 $folding-inner1 $case8 $default
                       (i32.sub
                        (i32.load
                         (i32.sub
                          (local.get $0)
                          (i32.const 8)
                         )
                        )
                        (i32.const 5)
                       )
                      )
                     )
                     (return
                      (call $assembly/factory/factory.contract/createPairAction#pack
                       (local.get $0)
                      )
                     )
                    )
                    (return
                     (call $assembly/factory/factory.contract/getFeeToAction#pack)
                    )
                   )
                   (return
                    (call $assembly/factory/factory.contract/getFeeToAction#pack)
                   )
                  )
                  (return
                   (call $assembly/factory/factory.inline/AddPairParams#pack
                    (local.get $0)
                   )
                  )
                 )
                 (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                  (local.tee $1
                   (call $~lib/as-chain/serializer/Encoder#constructor
                    (i32.const 8)
                   )
                  )
                  (i64.load
                   (local.get $0)
                  )
                 )
                 (br $folding-inner3)
                )
                (call $~lib/as-chain/serializer/Encoder#pack
                 (local.tee $1
                  (call $~lib/as-chain/serializer/Encoder#constructor
                   (i32.const 8)
                  )
                 )
                 (i32.load
                  (local.get $0)
                 )
                )
                (br $folding-inner3)
               )
               (call $~lib/as-chain/serializer/Encoder#packName
                (local.tee $1
                 (call $~lib/as-chain/serializer/Encoder#constructor
                  (i32.const 16)
                 )
                )
                (i32.load
                 (local.get $0)
                )
               )
               (call $~lib/as-chain/serializer/Encoder#packName
                (local.get $1)
                (i32.load offset=4
                 (local.get $0)
                )
               )
               (br $folding-inner3)
              )
              (return
               (call $~lib/as-chain/action/Action#pack
                (local.get $0)
               )
              )
             )
             (i64.store
              (i32.load offset=4
               (local.tee $1
                (call $~lib/array/Array<u8>#constructor
                 (i32.const 8)
                )
               )
              )
              (i64.load
               (local.get $0)
              )
             )
             (return
              (local.get $1)
             )
            )
            (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
             (local.tee $1
              (call $~lib/as-chain/serializer/Encoder#constructor
               (i32.const 8)
              )
             )
             (i64.load
              (local.get $0)
             )
            )
            (br $folding-inner3)
           )
           (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
            (local.tee $1
             (call $~lib/as-chain/serializer/Encoder#constructor
              (i32.const 16)
             )
            )
            (i64.load
             (local.get $0)
            )
           )
           (br $folding-inner2)
          )
          (return
           (call $assembly/factory/tables/pairs.table/PairsTable#pack
            (local.get $0)
           )
          )
         )
         (return
          (call $assembly/factory/tables/feesettings.table/FeeSettingsTable#pack
           (local.get $0)
          )
         )
        )
        (return
         (call $assembly/factory/tables/config.table/ConfigTable#pack
          (local.get $0)
         )
        )
       )
       (drop
        (i32.load
         (local.get $0)
        )
       )
       (drop
        (i32.load offset=4
         (local.get $0)
        )
       )
       (drop
        (i32.load offset=8
         (local.get $0)
        )
       )
       (call $~lib/as-chain/serializer/Encoder#pack
        (local.tee $1
         (call $~lib/as-chain/serializer/Encoder#constructor
          (i32.const 40)
         )
        )
        (i32.load
         (local.get $0)
        )
       )
       (call $~lib/as-chain/serializer/Encoder#pack
        (local.get $1)
        (i32.load offset=4
         (local.get $0)
        )
       )
       (br $folding-inner2)
      )
      (unreachable)
     )
     (if
      (i32.eqz
       (i32.load
        (local.tee $1
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (if
      (i32.eqz
       (i32.load offset=4
        (local.get $1)
       )
      )
      (unreachable)
     )
     (local.set $1
      (call $~lib/as-chain/serializer/Encoder#constructor
       (i32.const 16)
      )
     )
     (if
      (i32.eqz
       (local.tee $2
        (i32.load
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/serializer/Encoder#pack
      (local.get $1)
      (local.get $2)
     )
     (if
      (i32.eqz
       (local.tee $0
        (i32.load offset=4
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/serializer/Encoder#pack
      (local.get $1)
      (local.get $0)
     )
     (br $folding-inner3)
    )
    (if
     (i32.eqz
      (i32.load
       (local.get $0)
      )
     )
     (unreachable)
    )
    (local.set $1
     (call $~lib/as-chain/serializer/Encoder#constructor
      (i32.const 8)
     )
    )
    (if
     (i32.eqz
      (local.tee $0
       (i32.load
        (local.get $0)
       )
      )
     )
     (unreachable)
    )
    (call $~lib/as-chain/serializer/Encoder#pack
     (local.get $1)
     (local.get $0)
    )
    (return
     (call $~lib/as-chain/serializer/Encoder#getBytes
      (local.get $1)
     )
    )
   )
   (call $~lib/as-chain/serializer/Encoder#pack
    (local.get $1)
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/array/Array<u64>#__get (param $0 i32) (result i64)
  (if
   (i32.eqz
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (i64.load
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryIterator#constructor (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 20)
     (i32.const 33)
    )
   )
   (local.get $0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $3)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/idxdb/IDXDB#storeEx@virtual (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (local $4 i64)
  (if
   (i32.eq
    (i32.load
     (i32.sub
      (local.get $0)
      (i32.const 8)
     )
    )
    (i32.const 25)
   )
   (block
    (call $~lib/as-chain/system/assert
     (i32.eqz
      (i32.load
       (local.get $2)
      )
     )
     (i32.const 14160)
    )
    (local.set $4
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=4
       (local.get $2)
      )
     )
    )
    (i64.store
     (local.tee $2
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.get $4)
    )
    (drop
     (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
      (call $~lib/as-chain/env/db_idx64_store
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $3)
       (local.get $1)
       (local.get $2)
      )
      (local.get $1)
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (return)
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (i32.load
     (i32.sub
      (local.get $0)
      (i32.const 8)
     )
    )
    (i32.const 25)
   )
   (block
    (local.set $2
     (call $~lib/rt/stub/__alloc
      (i32.const 8)
     )
    )
    (local.set $3
     (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
      (call $~lib/as-chain/env/db_idx64_find_primary
       (i64.load
        (local.get $0)
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $2)
       (local.get $1)
      )
      (local.get $1)
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (call $~lib/array/Array<u64>#__set
     (local.tee $0
      (call $~lib/array/Array<u64>#constructor
       (i32.const 1)
      )
     )
     (i64.load
      (local.get $2)
     )
    )
    (local.set $2
     (call $~lib/as-chain/idxdb/SecondaryValue#constructor
      (local.get $0)
     )
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.tee $0
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 52)
      )
     )
     (local.get $3)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $0)
     (local.get $2)
    )
    (return
     (local.get $0)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#updateEx@virtual (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (local $4 i64)
  (if
   (i32.eq
    (i32.load
     (i32.sub
      (local.get $0)
      (i32.const 8)
     )
    )
    (i32.const 25)
   )
   (block
    (call $~lib/as-chain/system/assert
     (i32.eqz
      (i32.load
       (local.get $2)
      )
     )
     (i32.const 14224)
    )
    (local.set $4
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=4
       (local.get $2)
      )
     )
    )
    (i64.store
     (local.tee $0
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.get $4)
    )
    (call $~lib/as-chain/env/db_idx64_update
     (i32.load
      (local.get $1)
     )
     (local.get $3)
     (local.get $0)
    )
    (return)
   )
  )
  (unreachable)
 )
 (func $~start
  (local $0 i32)
  (global.set $~lib/rt/stub/offset
   (i32.const 14268)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
  (global.set $~lib/as-chain/name/EMPTY_NAME
   (local.get $0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
 )
)
