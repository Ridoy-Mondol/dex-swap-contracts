(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i64_i64_i64_i64_=>_i64 (func (param i64 i64 i64 i64) (result i64)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (type $none_=>_none (func))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i64_i64_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i64_i64_i64_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i64_i64_i64_i64_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i32 i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i64_i32_i64_=>_none (func (param i32 i64 i32 i64)))
 (type $i64_i64_i64_=>_none (func (param i64 i64 i64)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i64_i32_i32_=>_i32 (func (param i64 i32 i32) (result i32)))
 (type $i64_i32_i32_i32_i32_i32_i32_=>_i32 (func (param i64 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $i64_i64_=>_i32 (func (param i64 i64) (result i32)))
 (type $i64_i64_i32_i64_=>_i32 (func (param i64 i64 i32 i64) (result i32)))
 (type $i64_i64_i64_=>_i32 (func (param i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i32_i64_i64_i64_i32_=>_i64 (func (param i32 i64 i64 i64 i32) (result i64)))
 (type $i64_i64_i64_=>_i64 (func (param i64 i64 i64) (result i64)))
 (import "env" "require_auth" (func $~lib/as-chain/env/require_auth (param i64)))
 (import "env" "eosio_assert" (func $~lib/as-chain/env/eosio_assert (param i32 i32)))
 (import "env" "db_find_i64" (func $~lib/as-chain/env/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $~lib/as-chain/env/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "memcpy" (func $~lib/as-chain/env/memcpy (param i32 i32 i32) (result i32)))
 (import "env" "db_store_i64" (func $~lib/as-chain/env/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "current_time" (func $~lib/as-chain/env/current_time (result i64)))
 (import "env" "db_remove_i64" (func $~lib/as-chain/env/db_remove_i64 (param i32)))
 (import "env" "send_inline" (func $~lib/as-chain/env/send_inline (param i32 i32)))
 (import "env" "db_update_i64" (func $~lib/as-chain/env/db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "db_lowerbound_i64" (func $~lib/as-chain/env/db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_end_i64" (func $~lib/as-chain/env/db_end_i64 (param i64 i64 i64) (result i32)))
 (import "env" "db_previous_i64" (func $~lib/as-chain/env/db_previous_i64 (param i32 i32) (result i32)))
 (import "env" "action_data_size" (func $~lib/as-chain/env/action_data_size (result i32)))
 (import "env" "read_action_data" (func $~lib/as-chain/env/read_action_data (param i32 i32) (result i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/name/EMPTY_NAME (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/as-chain/bignum/globals/__res128_hi (mut i64) (i64.const 0))
 (global $~lib/as-chain/bignum/globals/__divmod_quot_hi (mut i64) (i64.const 0))
 (global $assembly/amm/amm.contract/ammContract i32 (i32.const 7))
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
 (data (i32.const 2332) "\1c")
 (data (i32.const 2364) "<")
 (data (i32.const 2376) "\01\00\00\00(\00\00\00A\00M\00M\00:\00 \00I\00N\00V\00A\00L\00I\00D\00_\00F\00A\00C\00T\00O\00R\00Y")
 (data (i32.const 2428) "<")
 (data (i32.const 2440) "\01\00\00\00\"\00\00\00A\00M\00M\00:\00 \00F\00E\00E\00_\00T\00O\00O\00_\00H\00I\00G\00H")
 (data (i32.const 2492) "\\")
 (data (i32.const 2504) "\01\00\00\00>\00\00\00D\00e\00c\00o\00d\00e\00r\00.\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2588) "L")
 (data (i32.const 2600) "\01\00\00\000\00\00\00A\00M\00M\00:\00 \00A\00L\00R\00E\00A\00D\00Y\00_\00I\00N\00I\00T\00I\00A\00L\00I\00Z\00E\00D")
 (data (i32.const 2668) "L")
 (data (i32.const 2680) "\01\00\00\00.\00\00\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2748) "L")
 (data (i32.const 2760) "\01\00\00\002\00\00\00c\00h\00e\00c\00k\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2828) "<")
 (data (i32.const 2840) "\01\00\00\00&\00\00\00n\00o\00 \00s\00e\00c\00o\00n\00d\00a\00r\00y\00 \00v\00a\00l\00u\00e\00!")
 (data (i32.const 2892) "<")
 (data (i32.const 2904) "\01\00\00\00(\00\00\00A\00M\00M\00:\00 \00N\00O\00T\00_\00I\00N\00I\00T\00I\00A\00L\00I\00Z\00E\00D")
 (data (i32.const 2956) "<")
 (data (i32.const 2968) "\01\00\00\00\"\00\00\00A\00M\00M\00:\00 \00Z\00E\00R\00O\00_\00A\00D\00D\00R\00E\00S\00S")
 (data (i32.const 3020) "L")
 (data (i32.const 3032) "\01\00\00\000\00\00\00A\00M\00M\00:\00 \00I\00D\00E\00N\00T\00I\00C\00A\00L\00_\00A\00D\00D\00R\00E\00S\00S\00E\00S")
 (data (i32.const 3100) "<")
 (data (i32.const 3112) "\01\00\00\00 \00\00\00A\00M\00M\00:\00 \00P\00A\00I\00R\00_\00E\00X\00I\00S\00T\00S")
 (data (i32.const 3164) "<")
 (data (i32.const 3176) "\01\00\00\00&\00\00\00A\00M\00M\00:\00 \00P\00A\00I\00R\00_\00N\00O\00T\00_\00F\00O\00U\00N\00D")
 (data (i32.const 3228) "L")
 (data (i32.const 3240) "\01\00\00\00.\00\00\00A\00M\00M\00:\00 \00P\00A\00I\00R\00_\00H\00A\00S\00_\00L\00I\00Q\00U\00I\00D\00I\00T\00Y")
 (data (i32.const 3308) "L")
 (data (i32.const 3320) "\01\00\00\000\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00v\00a\00l\00u\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00!")
 (data (i32.const 3388) "L")
 (data (i32.const 3400) "\01\00\00\002\00\00\00A\00M\00M\00:\00 \00I\00N\00S\00U\00F\00F\00I\00C\00I\00E\00N\00T\00_\00A\00M\00O\00U\00N\00T\00S")
 (data (i32.const 3468) "L")
 (data (i32.const 3480) "\01\00\00\000\00\00\00A\00M\00M\00:\00 \00I\00N\00S\00U\00F\00F\00I\00C\00I\00E\00N\00T\00_\00A\00M\00O\00U\00N\00T")
 (data (i32.const 3548) "L")
 (data (i32.const 3560) "\01\00\00\006\00\00\00A\00M\00M\00:\00 \00I\00N\00S\00U\00F\00F\00I\00C\00I\00E\00N\00T\00_\00L\00I\00Q\00U\00I\00D\00I\00T\00Y")
 (data (i32.const 3628) "L")
 (data (i32.const 3640) "\01\00\00\004\00\00\00A\00M\00M\00:\00 \00I\00N\00S\00U\00F\00F\00I\00C\00I\00E\00N\00T\00_\001\00_\00A\00M\00O\00U\00N\00T")
 (data (i32.const 3708) "<")
 (data (i32.const 3720) "\01\00\00\00(\00\00\00A\00M\00M\00:\00 \00I\00N\00V\00A\00L\00I\00D\00_\00A\00M\00O\00U\00N\00T\00S")
 (data (i32.const 3772) "L")
 (data (i32.const 3784) "\01\00\00\004\00\00\00A\00M\00M\00:\00 \00I\00N\00S\00U\00F\00F\00I\00C\00I\00E\00N\00T\00_\000\00_\00A\00M\00O\00U\00N\00T")
 (data (i32.const 3852) "\\")
 (data (i32.const 3864) "\01\00\00\00D\00\00\00A\00M\00M\00:\00 \00I\00N\00S\00U\00F\00F\00I\00C\00I\00E\00N\00T\00_\00L\00I\00Q\00U\00I\00D\00I\00T\00Y\00_\00M\00I\00N\00T\00E\00D")
 (data (i32.const 3948) "<")
 (data (i32.const 3960) "\01\00\00\00\1e\00\00\00b\00a\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 4012) "<")
 (data (i32.const 4024) "\01\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 4076) "<")
 (data (i32.const 4088) "\01\00\00\00*\00\00\00A\00d\00d\00 \00l\00i\00q\00u\00i\00d\00i\00t\00y\00:\00 \00t\00o\00k\00e\00n\000")
 (data (i32.const 4140) ",")
 (data (i32.const 4152) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00:\00 ")
 (data (i32.const 4188) "\1c")
 (data (i32.const 4200) "\01")
 (data (i32.const 4220) "\1c")
 (data (i32.const 4232) "+\00\00\00\0c\00\00\00@\10\00\00\00\00\00\00p\10")
 (data (i32.const 4252) ",")
 (data (i32.const 4264) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00 ")
 (data (i32.const 4300) "\1c")
 (data (i32.const 4312) "+\00\00\00\0c\00\00\00\b0\10\00\00\00\00\00\00p\10")
 (data (i32.const 4332) ",")
 (data (i32.const 4344) "\01\00\00\00\10\00\00\00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 4380) "<")
 (data (i32.const 4392) "\01\00\00\00*\00\00\00A\00d\00d\00 \00l\00i\00q\00u\00i\00d\00i\00t\00y\00:\00 \00t\00o\00k\00e\00n\001")
 (data (i32.const 4444) "<")
 (data (i32.const 4456) "\01\00\00\00&\00\00\00u\00p\00d\00a\00t\00e\00:\00b\00a\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 4508) "L")
 (data (i32.const 4520) "\01\00\00\00:\00\00\00g\00e\00t\00 \00p\00r\00i\00m\00a\00r\00y\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 4588) "<")
 (data (i32.const 4600) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 4652) "l")
 (data (i32.const 4664) "\01\00\00\00V\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00c\00h\00a\00n\00g\00e\00d\00 \00d\00u\00r\00i\00n\00g\00 \00u\00p\00d\00a\00t\00e\00!")
 (data (i32.const 4764) "\\")
 (data (i32.const 4776) "\01\00\00\00D\00\00\00A\00M\00M\00:\00 \00I\00N\00S\00U\00F\00F\00I\00C\00I\00E\00N\00T\00_\00L\00I\00Q\00U\00I\00D\00I\00T\00Y\00_\00B\00U\00R\00N\00E\00D")
 (data (i32.const 4860) "<")
 (data (i32.const 4872) "\01\00\00\00\"\00\00\00A\00M\00M\00:\00 \00N\00O\00_\00L\00I\00Q\00U\00I\00D\00I\00T\00Y")
 (data (i32.const 4924) "L")
 (data (i32.const 4936) "\01\00\00\002\00\00\00A\00M\00M\00:\00 \00I\00N\00S\00U\00F\00F\00I\00C\00I\00E\00N\00T\00_\00B\00A\00L\00A\00N\00C\00E")
 (data (i32.const 5004) "L")
 (data (i32.const 5016) "\01\00\00\002\00\00\00A\00M\00M\00:\00 \00N\00O\00_\00L\00I\00Q\00U\00I\00D\00I\00T\00Y\00_\00I\00N\00_\00P\00A\00I\00R")
 (data (i32.const 5084) "L")
 (data (i32.const 5096) "\01\00\00\000\00\00\00R\00e\00m\00o\00v\00e\00 \00l\00i\00q\00u\00i\00d\00i\00t\00y\00:\00 \00t\00o\00k\00e\00n\000")
 (data (i32.const 5164) "L")
 (data (i32.const 5176) "\01\00\00\000\00\00\00R\00e\00m\00o\00v\00e\00 \00l\00i\00q\00u\00i\00d\00i\00t\00y\00:\00 \00t\00o\00k\00e\00n\001")
 (data (i32.const 5244) "L")
 (data (i32.const 5256) "\01\00\00\00<\00\00\00A\00M\00M\00:\00 \00I\00N\00S\00U\00F\00F\00I\00C\00I\00E\00N\00T\00_\00I\00N\00P\00U\00T\00_\00A\00M\00O\00U\00N\00T")
 (data (i32.const 5324) "\\")
 (data (i32.const 5336) "\01\00\00\00>\00\00\00A\00M\00M\00:\00 \00I\00N\00S\00U\00F\00F\00I\00C\00I\00E\00N\00T\00_\00O\00U\00T\00P\00U\00T\00_\00A\00M\00O\00U\00N\00T")
 (data (i32.const 5420) ",")
 (data (i32.const 5432) "\01\00\00\00\16\00\00\00S\00w\00a\00p\00:\00 \00i\00n\00p\00u\00t")
 (data (i32.const 5468) ",")
 (data (i32.const 5480) "\01\00\00\00\18\00\00\00S\00w\00a\00p\00:\00 \00o\00u\00t\00p\00u\00t")
 (data (i32.const 5516) "L")
 (data (i32.const 5528) "\01\00\00\002\00\00\00A\00M\00M\00:\00 \00K\00_\00I\00N\00V\00A\00R\00I\00A\00N\00T\00_\00V\00I\00O\00L\00A\00T\00E\00D")
 (data (i32.const 5596) "<")
 (data (i32.const 5608) "\01\00\00\00 \00\00\00A\00M\00M\00:\00 \00I\00N\00V\00A\00L\00I\00D\00_\00F\00E\00E")
 (data (i32.const 5660) ",")
 (data (i32.const 5672) "\01\00\00\00\1c\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 5708) ",")
 (data (i32.const 5720) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00s\00s\00e\00t")
 (table $0 2 funcref)
 (elem $0 (i32.const 1) $start:~lib/as-chain/name~anonymous|0)
 (export "ammContract" (global $assembly/amm/amm.contract/ammContract))
 (export "ammContract#get:receiver" (func $~lib/as-chain/helpers/Contract#get:receiver))
 (export "ammContract#set:receiver" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "ammContract#get:firstReceiver" (func $~lib/as-chain/helpers/Contract#get:firstReceiver))
 (export "ammContract#set:firstReceiver" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "ammContract#get:action" (func $~lib/as-chain/helpers/Contract#get:action))
 (export "ammContract#set:action" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "ammContract#constructor" (func $assembly/amm/amm.contract/ammContract#constructor))
 (export "ammContract#initialize" (func $assembly/amm/amm.contract/ammContract#initialize))
 (export "ammContract#addPair" (func $assembly/amm/amm.contract/ammContract#addPair))
 (export "ammContract#removePair" (func $assembly/amm/amm.contract/ammContract#removePair))
 (export "ammContract#addLiquidity" (func $assembly/amm/amm.contract/ammContract#addLiquidity))
 (export "ammContract#removeLiquidity" (func $assembly/amm/amm.contract/ammContract#removeLiquidity))
 (export "ammContract#swap" (func $assembly/amm/amm.contract/ammContract#swap))
 (export "ammContract#getReserves" (func $assembly/amm/amm.contract/ammContract#getReserves))
 (export "ammContract#getAmountOut" (func $assembly/amm/amm.contract/ammContract#getAmountOut))
 (export "ammContract#getLiquidity" (func $assembly/amm/amm.contract/ammContract#getLiquidity))
 (export "ammContract#setSwapFee" (func $assembly/amm/amm.contract/ammContract#setSwapFee))
 (export "apply" (func $assembly/amm/amm.contract/apply))
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
 (func $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0 (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1 (param $0 i32) (param $1 i64)
  (i64.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/amm/tables/pairData.table/PairDataTable#set:totalSupply (param $0 i32) (param $1 i64)
  (i64.store offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/amm/tables/pairData.table/PairDataTable#set:kLast (param $0 i32) (param $1 i32)
  (i32.store offset=40
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/amm/tables/pairData.table/PairDataTable#set:blockTimestampLast (param $0 i32) (param $1 i32)
  (i32.store offset=44
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/amm/tables/pairData.table/PairDataTable#set:price0CumulativeLast (param $0 i32) (param $1 i32)
  (i32.store offset=48
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/amm/tables/pairData.table/PairDataTable#set:price1CumulativeLast (param $0 i32) (param $1 i32)
  (i32.store offset=52
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/amm/tables/pairData.table/PairDataTable#constructor (param $0 i64) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (local $7 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $7
    (call $~lib/rt/stub/__new
     (i32.const 56)
     (i32.const 9)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $7)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $7)
   (local.get $2)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
   (local.get $7)
   (i64.const 0)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
   (local.get $7)
   (i64.const 0)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:totalSupply
   (local.get $7)
   (i64.const 0)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:kLast
   (local.get $7)
   (local.get $3)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:blockTimestampLast
   (local.get $7)
   (local.get $4)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:price0CumulativeLast
   (local.get $7)
   (local.get $5)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:price1CumulativeLast
   (local.get $7)
   (local.get $6)
  )
  (local.get $7)
 )
 (func $~lib/as-chain/bignum/integer/u128/u128#set:hi (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/bignum/integer/u128/u128#constructor (param $0 i64) (param $1 i64) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 12)
    )
   )
   (local.get $0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $assembly/amm/tables/pairData.table/PairDataTable#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $10of10
   (block $9of10
    (block $8of10
     (block $6of10
      (block $2of10
       (block $1of10
        (block $outOfRange
         (br_table $1of10 $1of10 $2of10 $6of10 $6of10 $6of10 $6of10 $8of10 $8of10 $9of10 $10of10 $outOfRange
          (global.get $~argumentsLength)
         )
        )
        (unreachable)
       )
       (local.set $0
        (global.get $~lib/as-chain/name/EMPTY_NAME)
       )
      )
      (local.set $1
       (global.get $~lib/as-chain/name/EMPTY_NAME)
      )
     )
     (local.set $4
      (call $~lib/as-chain/bignum/integer/u128/u128#constructor
       (i64.const 0)
       (i64.const 0)
      )
     )
    )
    (local.set $3
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (i64.const 0)
      (i64.const 0)
     )
    )
   )
   (local.set $2
    (call $~lib/as-chain/bignum/integer/u128/u128#constructor
     (i64.const 0)
     (i64.const 0)
    )
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#constructor
   (i64.const 0)
   (local.get $0)
   (local.get $1)
   (local.get $4)
   (i32.const 0)
   (local.get $3)
   (local.get $2)
  )
 )
 (func $assembly/amm/tables/pairData.table/PairDataTable.get:tableName (result i32)
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
   (i64.const -6224690900249870336)
  )
  (local.get $0)
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
 (func $assembly/amm/tables/liquidity.table/LiquidityTable#constructor (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i64) (result i32)
  (local $4 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 32)
     (i32.const 18)
    )
   )
   (local.get $0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $4)
   (local.get $2)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $assembly/amm/tables/liquidity.table/LiquidityTable.get:tableName (result i32)
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
   (i64.const -8381859550454611968)
  )
  (local.get $0)
 )
 (func $assembly/amm/tables/ammConfig.table/AmmConfigTable#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 22)
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
 (func $assembly/amm/tables/ammConfig.table/AmmConfigTable.get:tableName (result i32)
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
   (i64.const 3793308851321700352)
  )
  (local.get $0)
 )
 (func $assembly/amm/amm.contract/ammContract#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
          (i32.const 36)
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
     (i32.const 13)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $2)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/amm/tables/pairData.table/PairDataTable#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $5
   (call $assembly/amm/tables/pairData.table/PairDataTable.get:tableName)
  )
  (drop
   (i64.load
    (call $assembly/amm/tables/pairData.table/PairDataTable.get:tableName)
   )
  )
  (local.set $6
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 17)
    (i32.const 2288)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 14)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
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
     (i32.const 15)
    )
   )
   (local.get $7)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $3)
   (local.get $8)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
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
  (call $~lib/rt/common/OBJECT#set:rtId
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
     (i32.const 19)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $2)
   (i64.const -1)
  )
  (drop
   (call $assembly/amm/tables/liquidity.table/LiquidityTable#constructor
    (i64.const 0)
    (i64.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i64.const 0)
   )
  )
  (local.set $5
   (call $assembly/amm/tables/liquidity.table/LiquidityTable.get:tableName)
  )
  (drop
   (i64.load
    (call $assembly/amm/tables/liquidity.table/LiquidityTable.get:tableName)
   )
  )
  (local.set $6
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 17)
    (i32.const 2320)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 20)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
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
     (i32.const 21)
    )
   )
   (local.get $7)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $3)
   (local.get $8)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
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
     (i32.const 23)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $2)
   (i64.const -1)
  )
  (drop
   (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#constructor
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i32.const 30)
   )
  )
  (local.set $5
   (call $assembly/amm/tables/ammConfig.table/AmmConfigTable.get:tableName)
  )
  (drop
   (i64.load
    (call $assembly/amm/tables/ammConfig.table/AmmConfigTable.get:tableName)
   )
  )
  (local.set $6
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 17)
    (i32.const 2352)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 24)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
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
     (i32.const 25)
    )
   )
   (local.get $7)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $3)
   (local.get $8)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
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
  (i32.store offset=20
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
   (local.get $0)
   (i64.const 1000)
  )
  (i32.store offset=32
   (local.get $0)
   (i32.const 10000)
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
 (func $~lib/as-chain/system/check (param $0 i32) (param $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (local.get $0)
   )
   (block
    (local.set $1
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
      (local.get $1)
     )
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.tee $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 27)
      )
     )
     (i32.const 0)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $0)
     (i32.const 0)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $0)
     (i32.const 0)
    )
    (if
     (i32.or
      (i32.lt_u
       (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
        (local.get $1)
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
     (local.get $0)
     (local.get $1)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $0)
     (local.get $1)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $0)
     (local.get $2)
    )
    (call $~lib/as-chain/env/eosio_assert
     (i32.const 0)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#set:validPrimary (param $0 i32) (param $1 i32)
  (i32.store8 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
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
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/ammConfig.table/AmmConfigTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/amm/tables/ammConfig.table/AmmConfigTable>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/amm/tables/ammConfig.table/AmmConfigTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk (param $0 i32) (result i32)
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
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u32> (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (i32.load
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
   (i32.const 4)
  )
  (local.get $1)
 )
 (func $assembly/amm/tables/ammConfig.table/AmmConfigTable#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/ammConfig.table/AmmConfigTable>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#unpack
    (local.tee $0
     (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#constructor
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (i32.const 30)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/ammConfig.table/AmmConfigTable>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/ammConfig.table/AmmConfigTable>#getEx
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
 (func $~lib/as-chain/serializer/Encoder#packNumber<u32> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 4)
  )
  (i32.store
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
 (func $assembly/amm/tables/ammConfig.table/AmmConfigTable#pack (param $0 i32) (result i32)
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
      (i32.const 20)
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
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
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
 (func $assembly/amm/tables/ammConfig.table/AmmConfigTable#getSecondaryValue (result i32)
  (local $0 i32)
  (local $1 i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 2848)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/memory/memory.fill
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 64)
     (i32.const 0)
    )
   )
   (i32.const 64)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (i32.const 64)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (i32.const 0)
  )
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
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/ammConfig.table/AmmConfigTable>#store (param $0 i32) (param $1 i32) (param $2 i32)
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
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/ammConfig.table/AmmConfigTable>#find
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
     (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#constructor
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
      (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#getSecondaryValue)
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
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
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
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
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
 (func $assembly/amm/amm.contract/ammContract#initialize (param $0 i32) (param $1 i32) (param $2 i32)
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
   (i32.const 2384)
  )
  (call $~lib/as-chain/system/check
   (select
    (i32.le_u
     (local.get $2)
     (i32.const 100)
    )
    (i32.const 0)
    (local.get $2)
   )
   (i32.const 2448)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/amm/tables/ammConfig.table/AmmConfigTable>#getByKey (result i32)
     (drop
      (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/amm/tables/ammConfig.table/AmmConfigTable>#getByKey
       (i32.const 0)
       (i32.eqz
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
         (local.tee $4
          (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/ammConfig.table/AmmConfigTable>#find
           (local.tee $3
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
     (call $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/ammConfig.table/AmmConfigTable>#get
      (i32.load
       (local.get $3)
      )
      (local.get $4)
     )
    )
   )
   (i32.const 2608)
  )
  (local.set $1
   (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#constructor
    (local.get $1)
    (local.get $2)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/ammConfig.table/AmmConfigTable>#store
   (i32.load offset=20
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/ammConfig.table/AmmConfigTable>#requireGet (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
    (local.tee $1
     (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/ammConfig.table/AmmConfigTable>#find
      (i32.load
       (local.get $0)
      )
      (i64.const 0)
     )
    )
   )
   (i32.const 2912)
  )
  (if (result i32)
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/ammConfig.table/AmmConfigTable>#get
     (i32.load
      (i32.load
       (local.get $0)
      )
     )
     (local.get $1)
    )
   )
   (local.get $0)
   (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#constructor
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i32.const 30)
   )
  )
 )
 (func $~lib/array/Array<~lib/as-chain/name/Name>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $assembly/amm/amm.contract/ammContract#sortTokens (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/system/check
   (i64.ne
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
   )
   (i32.const 3040)
  )
  (if
   (i64.lt_u
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
   )
   (block
    (drop
     (i32.load offset=4
      (local.tee $2
       (call $~lib/rt/__newArray
        (i32.const 2)
        (i32.const 2)
        (i32.const 34)
        (i32.const 0)
       )
      )
     )
    )
    (call $~lib/array/Array<~lib/as-chain/name/Name>#__uset
     (local.get $2)
     (i32.const 0)
     (local.get $0)
    )
    (call $~lib/array/Array<~lib/as-chain/name/Name>#__uset
     (local.get $2)
     (i32.const 1)
     (local.get $1)
    )
   )
   (block
    (drop
     (i32.load offset=4
      (local.tee $2
       (call $~lib/rt/__newArray
        (i32.const 2)
        (i32.const 2)
        (i32.const 34)
        (i32.const 0)
       )
      )
     )
    )
    (call $~lib/array/Array<~lib/as-chain/name/Name>#__uset
     (local.get $2)
     (i32.const 0)
     (local.get $1)
    )
    (call $~lib/array/Array<~lib/as-chain/name/Name>#__uset
     (local.get $2)
     (i32.const 1)
     (local.get $0)
    )
   )
  )
  (local.get $2)
 )
 (func $assembly/amm/amm.contract/ammContract#computePairId (param $0 i32) (param $1 i32) (result i64)
  (i64.xor
   (i64.load
    (local.get $0)
   )
   (i64.load
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/pairData.table/PairDataTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 35)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
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
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/pairData.table/PairDataTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/amm/tables/pairData.table/PairDataTable>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/amm/tables/pairData.table/PairDataTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/pairData.table/PairDataTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/pairData.table/PairDataTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $assembly/amm/tables/pairData.table/PairDataTable#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:totalSupply
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/bignum/integer/u128/u128#constructor
     (i64.const 0)
     (i64.const 0)
    )
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:kLast
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:blockTimestampLast
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/bignum/integer/u128/u128#constructor
     (i64.const 0)
     (i64.const 0)
    )
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:price0CumulativeLast
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/bignum/integer/u128/u128#constructor
     (i64.const 0)
     (i64.const 0)
    )
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:price1CumulativeLast
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/pairData.table/PairDataTable>#getEx (param $0 i32) (param $1 i32) (result i32)
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
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/amm/tables/pairData.table/PairDataTable#unpack
    (local.tee $0
     (call $assembly/amm/tables/pairData.table/PairDataTable#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/pairData.table/PairDataTable>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/pairData.table/PairDataTable>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/time/Microseconds#constructor (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 37)
    )
   )
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/system/currentTimeSec (result i32)
  (local $0 i32)
  (local $1 i64)
  (local.set $1
   (call $~lib/as-chain/env/current_time)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 36)
    )
   )
   (call $~lib/as-chain/time/Microseconds#constructor
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/time/Microseconds#constructor
    (local.get $1)
   )
  )
  (i32.wrap_i64
   (i64.div_s
    (i64.load
     (i32.load
      (local.get $0)
     )
    )
    (i64.const 1000000)
   )
  )
 )
 (func $assembly/amm/tables/pairData.table/PairDataTable#pack (param $0 i32) (result i32)
  (local $1 i32)
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
   (i32.load offset=40
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=48
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=52
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.const 100)
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
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $1)
   (i32.load offset=44
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=48
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=52
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/pairData.table/PairDataTable>#store (param $0 i32) (param $1 i32) (param $2 i32)
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
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/pairData.table/PairDataTable>#find
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
     (call $assembly/amm/tables/pairData.table/PairDataTable#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/pairData.table/PairDataTable>#constructor
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
      (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#getSecondaryValue)
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
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
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
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
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
 (func $assembly/amm/amm.contract/ammContract#addPair (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load offset=8
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/ammConfig.table/AmmConfigTable>#requireGet
     (i32.load offset=20
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i64.ne
     (i64.load
      (local.get $1)
     )
     (i64.load
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (i64.ne
     (i64.load
      (local.get $2)
     )
     (i64.load
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (i32.const 0)
   )
   (i32.const 2976)
  )
  (call $~lib/as-chain/system/check
   (i64.ne
    (i64.load
     (local.get $1)
    )
    (i64.load
     (local.get $2)
    )
   )
   (i32.const 3040)
  )
  (local.set $3
   (call $assembly/amm/amm.contract/ammContract#computePairId
    (local.tee $2
     (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
      (local.tee $1
       (call $assembly/amm/amm.contract/ammContract#sortTokens
        (local.get $1)
        (local.get $2)
       )
      )
      (i32.const 0)
     )
    )
    (local.tee $1
     (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
      (local.get $1)
      (i32.const 1)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/amm/tables/pairData.table/PairDataTable>#getByKey (result i32)
     (drop
      (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/amm/tables/pairData.table/PairDataTable>#getByKey
       (i32.const 0)
       (i32.eqz
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
         (local.tee $5
          (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/pairData.table/PairDataTable>#find
           (local.tee $4
            (i32.load
             (i32.load offset=12
              (local.get $0)
             )
            )
           )
           (local.get $3)
          )
         )
        )
       )
      )
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/pairData.table/PairDataTable>#get
      (i32.load
       (local.get $4)
      )
      (local.get $5)
     )
    )
   )
   (i32.const 3120)
  )
  (local.set $1
   (call $assembly/amm/tables/pairData.table/PairDataTable#constructor
    (local.get $3)
    (local.get $2)
    (local.get $1)
    (call $~lib/as-chain/bignum/integer/u128/u128#constructor
     (i64.const 0)
     (i64.const 0)
    )
    (call $~lib/as-chain/system/currentTimeSec)
    (call $~lib/as-chain/bignum/integer/u128/u128#constructor
     (i64.const 0)
     (i64.const 0)
    )
    (call $~lib/as-chain/bignum/integer/u128/u128#constructor
     (i64.const 0)
     (i64.const 0)
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/pairData.table/PairDataTable>#store
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/pairData.table/PairDataTable>#requireGet (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
    (local.tee $2
     (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/pairData.table/PairDataTable>#find
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
   (i32.const 3184)
  )
  (if (result i32)
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/pairData.table/PairDataTable>#get
     (i32.load
      (i32.load
       (local.get $0)
      )
     )
     (local.get $2)
    )
   )
   (local.get $0)
   (block (result i32)
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (call $assembly/amm/tables/pairData.table/PairDataTable#constructor@varargs
     (global.get $~lib/as-chain/name/EMPTY_NAME)
     (global.get $~lib/as-chain/name/EMPTY_NAME)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/pairData.table/PairDataTable>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/pairData.table/PairDataTable>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/pairData.table/PairDataTable>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/env/db_remove_i64
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryIterator#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $assembly/amm/amm.contract/ammContract#removePair (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load offset=8
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/ammConfig.table/AmmConfigTable>#requireGet
     (i32.load offset=20
      (local.get $0)
     )
    )
   )
  )
  (local.set $3
   (call $assembly/amm/amm.contract/ammContract#computePairId
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
     (local.tee $1
      (call $assembly/amm/amm.contract/ammContract#sortTokens
       (local.get $1)
       (local.get $2)
      )
     )
     (i32.const 0)
    )
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
     (local.get $1)
     (i32.const 1)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eqz
    (i64.load offset=32
     (local.tee $1
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/pairData.table/PairDataTable>#requireGet
       (i32.load offset=12
        (local.get $0)
       )
       (local.get $3)
      )
     )
    )
   )
   (i32.const 3248)
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/pairData.table/PairDataTable>#requireFind
    (i32.load
     (local.tee $2
      (i32.load offset=12
       (local.get $0)
      )
     )
    )
    (local.tee $3
     (i64.load
      (local.get $1)
     )
    )
    (i32.const 1648)
   )
  )
  (local.set $0
   (i32.const 0)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/pairData.table/PairDataTable>#find
      (local.tee $1
       (i32.load
        (local.get $2)
       )
      )
      (local.get $3)
     )
    )
   )
   (i32.const 3328)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/pairData.table/PairDataTable>#remove
   (i32.load
    (local.get $1)
   )
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $0)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $1)
      )
     )
    )
    (block
     (if
      (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
       (i32.load
        (local.tee $4
         (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (i32.load offset=4
            (local.get $1)
           )
           (local.get $0)
          )
         )
        )
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $1)
        )
        (local.get $0)
       )
       (i32.load
        (local.get $4)
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.eq
    (local.get $3)
    (i64.sub
     (i64.load offset=8
      (local.get $2)
     )
     (i64.const 1)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $2)
    (i64.const -1)
   )
  )
 )
 (func $assembly/amm/amm.contract/ammContract#quote (param $0 i64) (param $1 i64) (param $2 i64) (result i64)
  (call $~lib/as-chain/system/check
   (i64.ne
    (local.get $0)
    (i64.const 0)
   )
   (i32.const 3488)
  )
  (call $~lib/as-chain/system/check
   (select
    (i64.ne
     (local.get $2)
     (i64.const 0)
    )
    (i32.const 0)
    (i64.ne
     (local.get $1)
     (i64.const 0)
    )
   )
   (i32.const 3568)
  )
  (i64.div_u
   (i64.mul
    (local.get $0)
    (local.get $2)
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/bignum/globals/__multi3 (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (result i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local.set $6
   (i64.mul
    (local.tee $4
     (i64.and
      (local.get $0)
      (i64.const 4294967295)
     )
    )
    (local.tee $5
     (i64.and
      (local.get $2)
      (i64.const 4294967295)
     )
    )
   )
  )
  (local.set $4
   (i64.add
    (i64.mul
     (local.get $4)
     (local.tee $7
      (i64.shr_u
       (local.get $2)
       (i64.const 32)
      )
     )
    )
    (i64.and
     (local.tee $5
      (i64.add
       (i64.mul
        (local.tee $8
         (i64.shr_u
          (local.get $0)
          (i64.const 32)
         )
        )
        (local.get $5)
       )
       (i64.shr_u
        (local.get $6)
        (i64.const 32)
       )
      )
     )
     (i64.const 4294967295)
    )
   )
  )
  (global.set $~lib/as-chain/bignum/globals/__res128_hi
   (i64.add
    (i64.add
     (i64.add
      (i64.add
       (i64.mul
        (local.get $7)
        (local.get $8)
       )
       (i64.shr_u
        (local.get $5)
        (i64.const 32)
       )
      )
      (i64.mul
       (local.get $1)
       (local.get $2)
      )
     )
     (i64.mul
      (local.get $0)
      (local.get $3)
     )
    )
    (i64.shr_u
     (local.get $4)
     (i64.const 32)
    )
   )
  )
  (i64.or
   (i64.and
    (local.get $6)
    (i64.const 4294967295)
   )
   (i64.shl
    (local.get $4)
    (i64.const 32)
   )
  )
 )
 (func $~lib/as-chain/bignum/globals/__udivmod128core (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (result i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 i32)
  (local $15 i64)
  (local.set $4
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (local.get $0)
    (local.get $1)
   )
  )
  (local.set $13
   (i64.extend_i32_s
    (local.tee $11
     (i32.and
      (i32.sub
       (local.tee $10
        (i32.add
         (i32.wrap_i64
          (i64.clz
           (i64.or
            (i64.and
             (local.get $3)
             (i64.xor
              (local.tee $15
               (i64.shr_s
                (i64.xor
                 (local.get $3)
                 (i64.sub
                  (local.get $3)
                  (i64.const 1)
                 )
                )
                (i64.const 63)
               )
              )
              (i64.const -1)
             )
            )
            (i64.and
             (local.get $2)
             (local.get $15)
            )
           )
          )
         )
         (i32.and
          (i32.wrap_i64
           (local.get $15)
          )
          (i32.const 64)
         )
        )
       )
       (local.tee $7
        (i32.add
         (i32.wrap_i64
          (i64.clz
           (i64.or
            (i64.and
             (local.get $1)
             (i64.xor
              (local.tee $15
               (i64.shr_s
                (i64.xor
                 (local.get $1)
                 (i64.sub
                  (local.get $1)
                  (i64.const 1)
                 )
                )
                (i64.const 63)
               )
              )
              (i64.const -1)
             )
            )
            (i64.and
             (local.get $0)
             (local.get $15)
            )
           )
          )
         )
         (i32.and
          (i32.wrap_i64
           (local.get $15)
          )
          (i32.const 64)
         )
        )
       )
      )
      (i32.const 127)
     )
    )
   )
  )
  (local.set $5
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.and
     (local.tee $0
      (i64.shl
       (local.tee $1
        (i64.load
         (local.tee $6
          (local.tee $9
           (call $~lib/as-chain/bignum/integer/u128/u128#constructor
            (local.get $2)
            (local.get $3)
           )
          )
         )
        )
       )
       (local.tee $2
        (i64.and
         (local.get $13)
         (i64.const 63)
        )
       )
      )
     )
     (local.tee $15
      (i64.sub
       (i64.shr_u
        (local.get $13)
        (i64.const 6)
       )
       (i64.const 1)
      )
     )
    )
    (i64.or
     (i64.and
      (local.get $15)
      (i64.or
       (i64.and
        (i64.sub
         (i64.shr_u
          (i64.and
           (i64.or
            (local.get $13)
            (i64.add
             (local.get $13)
             (i64.const 127)
            )
           )
           (i64.const 64)
          )
          (i64.const 6)
         )
         (i64.const 1)
        )
        (i64.shr_u
         (local.get $1)
         (i64.sub
          (i64.const 64)
          (local.get $2)
         )
        )
       )
       (i64.shl
        (i64.load offset=8
         (local.get $6)
        )
        (local.get $2)
       )
      )
     )
     (i64.and
      (local.get $0)
      (i64.xor
       (local.get $15)
       (i64.const -1)
      )
     )
    )
   )
  )
  (local.set $14
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.const 0)
    (i64.const 0)
   )
  )
  (drop
   (i32.load
    (i32.sub
     (local.get $4)
     (i32.const 8)
    )
   )
  )
  (local.set $4
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.load
     (local.get $4)
    )
    (i64.load offset=8
     (local.get $4)
    )
   )
  )
  (local.set $12
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (block (result i64)
     (drop
      (i32.load
       (i32.sub
        (local.tee $6
         (call $~lib/as-chain/bignum/integer/u128/u128#constructor
          (i64.and
           (local.tee $0
            (i64.shl
             (local.tee $1
              (i64.load
               (local.tee $6
                (call $~lib/as-chain/bignum/integer/u128/u128#constructor
                 (i64.const 1)
                 (i64.const 0)
                )
               )
              )
             )
             (local.tee $2
              (i64.and
               (local.tee $13
                (i64.extend_i32_s
                 (i32.and
                  (i32.sub
                   (i32.const 128)
                   (local.get $10)
                  )
                  (i32.const 127)
                 )
                )
               )
               (i64.const 63)
              )
             )
            )
           )
           (local.tee $3
            (i64.sub
             (i64.shr_u
              (local.get $13)
              (i64.const 6)
             )
             (i64.const 1)
            )
           )
          )
          (i64.or
           (i64.and
            (local.get $3)
            (i64.or
             (i64.and
              (i64.sub
               (i64.shr_u
                (i64.and
                 (i64.or
                  (local.get $13)
                  (i64.add
                   (local.get $13)
                   (i64.const 127)
                  )
                 )
                 (i64.const 64)
                )
                (i64.const 6)
               )
               (i64.const 1)
              )
              (i64.shr_u
               (local.get $1)
               (i64.sub
                (i64.const 64)
                (local.get $2)
               )
              )
             )
             (i64.shl
              (i64.load offset=8
               (local.get $6)
              )
              (local.get $2)
             )
            )
           )
           (i64.and
            (local.get $0)
            (i64.xor
             (local.get $3)
             (i64.const -1)
            )
           )
          )
         )
        )
        (i32.const 8)
       )
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $6)
      (i64.sub
       (i64.load offset=8
        (local.get $6)
       )
       (i64.extend_i32_u
        (i64.gt_u
         (local.tee $0
          (i64.sub
           (local.tee $1
            (i64.load
             (local.get $6)
            )
           )
           (i64.const 1)
          )
         )
         (local.get $1)
        )
       )
      )
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $6)
      (local.get $0)
     )
     (i64.and
      (local.tee $0
       (i64.shl
        (local.tee $1
         (i64.load
          (local.get $6)
         )
        )
        (local.tee $2
         (i64.and
          (local.tee $3
           (i64.extend_i32_s
            (local.get $11)
           )
          )
          (i64.const 63)
         )
        )
       )
      )
      (local.tee $15
       (i64.sub
        (i64.shr_u
         (local.get $3)
         (i64.const 6)
        )
        (i64.const 1)
       )
      )
     )
    )
    (i64.or
     (i64.and
      (local.get $15)
      (i64.or
       (i64.and
        (i64.sub
         (i64.shr_u
          (i64.and
           (i64.or
            (local.get $3)
            (i64.add
             (local.get $3)
             (i64.const 127)
            )
           )
           (i64.const 64)
          )
          (i64.const 6)
         )
         (i64.const 1)
        )
        (i64.shr_u
         (local.get $1)
         (i64.sub
          (i64.const 64)
          (local.get $2)
         )
        )
       )
       (i64.shl
        (i64.load offset=8
         (local.get $6)
        )
        (local.get $2)
       )
      )
     )
     (i64.and
      (local.get $0)
      (i64.xor
       (local.get $15)
       (i64.const -1)
      )
     )
    )
   )
  )
  (loop $while-continue|0
   (if
    (i32.eqz
     (if (result i32)
      (i64.eq
       (local.tee $0
        (i64.load offset=8
         (local.get $9)
        )
       )
       (local.tee $1
        (i64.load offset=8
         (local.get $4)
        )
       )
      )
      (i64.lt_u
       (i64.load
        (local.get $4)
       )
       (i64.load
        (local.get $9)
       )
      )
      (i64.gt_u
       (local.get $0)
       (local.get $1)
      )
     )
    )
    (block
     (local.set $8
      (i32.add
       (local.get $8)
       (i32.const 1)
      )
     )
     (local.set $14
      (call $~lib/as-chain/bignum/integer/u128/u128#constructor
       (i64.shl
        (local.tee $1
         (i64.load
          (local.get $14)
         )
        )
        (i64.const 1)
       )
       (i64.or
        (i64.shl
         (i64.load offset=8
          (local.get $14)
         )
         (i64.const 1)
        )
        (i64.shr_u
         (local.get $1)
         (i64.const 63)
        )
       )
      )
     )
     (local.set $11
      (local.tee $6
       (call $~lib/as-chain/bignum/integer/u128/u128#constructor
        (i64.and
         (i64.load
          (local.get $4)
         )
         (i64.load
          (local.get $12)
         )
        )
        (i64.and
         (i64.load offset=8
          (local.get $4)
         )
         (i64.load offset=8
          (local.get $12)
         )
        )
       )
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i64.eq
         (local.tee $1
          (i64.load offset=8
           (local.get $6)
          )
         )
         (local.tee $0
          (i64.load offset=8
           (local.tee $6
            (local.get $5)
           )
          )
         )
        )
        (i64.lt_u
         (i64.load
          (local.get $11)
         )
         (i64.load
          (local.get $6)
         )
        )
        (i64.gt_u
         (local.get $0)
         (local.get $1)
        )
       )
      )
      (local.set $4
       (block (result i32)
        (drop
         (i32.load
          (i32.sub
           (local.get $14)
           (i32.const 8)
          )
         )
        )
        (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
         (local.get $14)
         (i64.add
          (i64.load offset=8
           (local.get $14)
          )
          (i64.extend_i32_u
           (i64.lt_u
            (local.tee $0
             (i64.add
              (local.tee $1
               (i64.load
                (local.get $14)
               )
              )
              (i64.const 1)
             )
            )
            (local.get $1)
           )
          )
         )
        )
        (call $~lib/as-chain/name/Name#set:N
         (local.get $14)
         (local.get $0)
        )
        (call $~lib/as-chain/bignum/integer/u128/u128#constructor
         (local.tee $0
          (i64.sub
           (local.tee $1
            (i64.load
             (local.get $4)
            )
           )
           (i64.load
            (local.get $6)
           )
          )
         )
         (i64.sub
          (i64.sub
           (i64.load offset=8
            (local.get $4)
           )
           (i64.load offset=8
            (local.get $6)
           )
          )
          (i64.extend_i32_u
           (i64.gt_u
            (local.get $0)
            (local.get $1)
           )
          )
         )
        )
       )
      )
     )
     (local.set $1
      (i64.shr_u
       (local.tee $0
        (i64.load offset=8
         (local.get $12)
        )
       )
       (i64.const 1)
      )
     )
     (local.set $6
      (call $~lib/as-chain/bignum/integer/u128/u128#constructor
       (i64.or
        (i64.shl
         (local.get $0)
         (i64.const 63)
        )
        (i64.shr_u
         (i64.load
          (local.get $12)
         )
         (i64.const 1)
        )
       )
       (local.get $1)
      )
     )
     (local.set $12
      (call $~lib/as-chain/bignum/integer/u128/u128#constructor
       (i64.or
        (i64.load
         (local.get $12)
        )
        (i64.load
         (local.get $6)
        )
       )
       (i64.or
        (i64.load offset=8
         (local.get $12)
        )
        (i64.load offset=8
         (local.get $6)
        )
       )
      )
     )
     (local.set $1
      (i64.shr_u
       (local.tee $0
        (i64.load offset=8
         (local.get $5)
        )
       )
       (i64.const 1)
      )
     )
     (local.set $5
      (call $~lib/as-chain/bignum/integer/u128/u128#constructor
       (i64.or
        (i64.shl
         (local.get $0)
         (i64.const 63)
        )
        (i64.shr_u
         (i64.load
          (local.get $5)
         )
         (i64.const 1)
        )
       )
       (local.get $1)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (global.set $~lib/as-chain/bignum/globals/__divmod_quot_hi
   (i64.load offset=8
    (local.tee $6
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (i64.and
       (local.tee $0
        (i64.shl
         (local.tee $1
          (i64.load
           (local.get $14)
          )
         )
         (local.tee $2
          (i64.and
           (local.tee $15
            (i64.extend_i32_s
             (i32.and
              (i32.add
               (i32.sub
                (i32.sub
                 (local.get $10)
                 (local.get $7)
                )
                (local.get $8)
               )
               (i32.const 1)
              )
              (i32.const 127)
             )
            )
           )
           (i64.const 63)
          )
         )
        )
       )
       (local.tee $3
        (i64.sub
         (i64.shr_u
          (local.get $15)
          (i64.const 6)
         )
         (i64.const 1)
        )
       )
      )
      (i64.or
       (i64.and
        (local.get $3)
        (i64.or
         (i64.and
          (i64.sub
           (i64.shr_u
            (i64.and
             (i64.or
              (local.get $15)
              (i64.add
               (local.get $15)
               (i64.const 127)
              )
             )
             (i64.const 64)
            )
            (i64.const 6)
           )
           (i64.const 1)
          )
          (i64.shr_u
           (local.get $1)
           (i64.sub
            (i64.const 64)
            (local.get $2)
           )
          )
         )
         (i64.shl
          (i64.load offset=8
           (local.get $14)
          )
          (local.get $2)
         )
        )
       )
       (i64.and
        (local.get $0)
        (i64.xor
         (local.get $3)
         (i64.const -1)
        )
       )
      )
     )
    )
   )
  )
  (drop
   (i64.load
    (local.get $4)
   )
  )
  (drop
   (i64.load offset=8
    (local.get $4)
   )
  )
  (i64.load
   (local.get $6)
  )
 )
 (func $~lib/as-chain/bignum/globals/__udivmod128 (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (result i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eq
    (local.tee $5
     (i32.add
      (i32.wrap_i64
       (i64.clz
        (i64.or
         (i64.and
          (local.get $3)
          (i64.xor
           (local.tee $4
            (i64.shr_s
             (i64.xor
              (local.get $3)
              (i64.sub
               (local.get $3)
               (i64.const 1)
              )
             )
             (i64.const 63)
            )
           )
           (i64.const -1)
          )
         )
         (i64.and
          (local.get $2)
          (local.get $4)
         )
        )
       )
      )
      (i32.and
       (i32.wrap_i64
        (local.get $4)
       )
       (i32.const 64)
      )
     )
    )
    (i32.const 128)
   )
   (unreachable)
  )
  (local.set $6
   (i32.add
    (i32.wrap_i64
     (i64.ctz
      (i64.or
       (i64.and
        (local.get $3)
        (local.tee $4
         (i64.shr_s
          (i64.xor
           (local.get $2)
           (i64.sub
            (local.get $2)
            (i64.const 1)
           )
          )
          (i64.const 63)
         )
        )
       )
       (i64.and
        (local.get $2)
        (i64.xor
         (local.get $4)
         (i64.const -1)
        )
       )
      )
     )
    )
    (i32.and
     (i32.wrap_i64
      (local.get $4)
     )
     (i32.const 64)
    )
   )
  )
  (if
   (i64.eqz
    (i64.or
     (local.get $0)
     (local.get $1)
    )
   )
   (block
    (global.set $~lib/as-chain/bignum/globals/__divmod_quot_hi
     (i64.const 0)
    )
    (return
     (i64.const 0)
    )
   )
  )
  (if
   (i32.eq
    (local.get $5)
    (i32.const 127)
   )
   (block
    (global.set $~lib/as-chain/bignum/globals/__divmod_quot_hi
     (local.get $1)
    )
    (return
     (local.get $0)
    )
   )
  )
  (if
   (select
    (i64.eq
     (local.get $1)
     (local.get $3)
    )
    (i32.const 0)
    (i64.eq
     (local.get $0)
     (local.get $2)
    )
   )
   (block
    (global.set $~lib/as-chain/bignum/globals/__divmod_quot_hi
     (i64.const 0)
    )
    (return
     (i64.const 1)
    )
   )
  )
  (if
   (i64.eqz
    (i64.or
     (local.get $1)
     (local.get $3)
    )
   )
   (block
    (global.set $~lib/as-chain/bignum/globals/__divmod_quot_hi
     (i64.const 0)
    )
    (if
     (i64.eqz
      (i64.and
       (local.get $2)
       (i64.sub
        (local.get $2)
        (i64.const 1)
       )
      )
     )
     (return
      (i64.shr_u
       (local.get $0)
       (i64.extend_i32_s
        (local.get $6)
       )
      )
     )
     (return
      (i64.div_u
       (local.get $0)
       (local.get $2)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/bignum/globals/__udivmod128core
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
 )
 (func $assembly/amm/amm.contract/ammContract#sqrtU128 (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local.set $2
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.const 4)
    (i64.const 0)
   )
  )
  (if
   (if (result i32)
    (i64.eq
     (local.tee $3
      (i64.load offset=8
       (local.tee $1
        (local.get $0)
       )
      )
     )
     (local.tee $4
      (i64.load offset=8
       (local.get $2)
      )
     )
    )
    (i64.lt_u
     (i64.load
      (local.get $1)
     )
     (i64.load
      (local.get $2)
     )
    )
    (i64.lt_u
     (local.get $3)
     (local.get $4)
    )
   )
   (block
    (local.set $1
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (i64.const 0)
      (i64.const 0)
     )
    )
    (if
     (if (result i32)
      (i64.eq
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=8
        (local.get $1)
       )
      )
      (i64.eq
       (i64.load
        (local.get $0)
       )
       (i64.load
        (local.get $1)
       )
      )
      (i32.const 0)
     )
     (return
      (i64.const 0)
     )
    )
    (return
     (i64.const 1)
    )
   )
  )
  (local.set $2
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.const 2)
    (i64.const 0)
   )
  )
  (local.set $2
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (call $~lib/as-chain/bignum/globals/__udivmod128
     (i64.load
      (local.get $1)
     )
     (i64.load offset=8
      (local.get $1)
     )
     (i64.load
      (local.get $2)
     )
     (i64.load offset=8
      (local.get $2)
     )
    )
    (global.get $~lib/as-chain/bignum/globals/__divmod_quot_hi)
   )
  )
  (local.set $5
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.const 1)
    (i64.const 0)
   )
  )
  (local.set $2
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (local.tee $4
     (i64.add
      (local.tee $3
       (i64.load
        (local.get $2)
       )
      )
      (i64.load
       (local.get $5)
      )
     )
    )
    (i64.add
     (i64.extend_i32_u
      (i64.gt_u
       (local.get $3)
       (local.get $4)
      )
     )
     (i64.add
      (i64.load offset=8
       (local.get $2)
      )
      (i64.load offset=8
       (local.get $5)
      )
     )
    )
   )
  )
  (loop $while-continue|0
   (if
    (if (result i32)
     (i64.eq
      (local.tee $3
       (i64.load offset=8
        (local.get $2)
       )
      )
      (local.tee $4
       (i64.load offset=8
        (local.get $1)
       )
      )
     )
     (i64.lt_u
      (i64.load
       (local.get $2)
      )
      (i64.load
       (local.get $1)
      )
     )
     (i64.lt_u
      (local.get $3)
      (local.get $4)
     )
    )
    (block
     (local.set $2
      (call $~lib/as-chain/bignum/integer/u128/u128#constructor
       (local.tee $4
        (i64.add
         (local.tee $3
          (i64.load
           (local.tee $2
            (call $~lib/as-chain/bignum/integer/u128/u128#constructor
             (call $~lib/as-chain/bignum/globals/__udivmod128
              (i64.load
               (local.get $0)
              )
              (i64.load offset=8
               (local.get $0)
              )
              (i64.load
               (local.tee $1
                (local.get $2)
               )
              )
              (i64.load offset=8
               (local.get $2)
              )
             )
             (global.get $~lib/as-chain/bignum/globals/__divmod_quot_hi)
            )
           )
          )
         )
         (i64.load
          (local.get $1)
         )
        )
       )
       (i64.add
        (i64.extend_i32_u
         (i64.gt_u
          (local.get $3)
          (local.get $4)
         )
        )
        (i64.add
         (i64.load offset=8
          (local.get $2)
         )
         (i64.load offset=8
          (local.get $1)
         )
        )
       )
      )
     )
     (local.set $5
      (call $~lib/as-chain/bignum/integer/u128/u128#constructor
       (i64.const 2)
       (i64.const 0)
      )
     )
     (local.set $2
      (call $~lib/as-chain/bignum/integer/u128/u128#constructor
       (call $~lib/as-chain/bignum/globals/__udivmod128
        (i64.load
         (local.get $2)
        )
        (i64.load offset=8
         (local.get $2)
        )
        (i64.load
         (local.get $5)
        )
        (i64.load offset=8
         (local.get $5)
        )
       )
       (global.get $~lib/as-chain/bignum/globals/__divmod_quot_hi)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (i64.load
   (local.get $1)
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
 (func $~lib/as-chain/asset/Symbol#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 40)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/system/check
   (i32.le_s
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 7)
   )
   (i32.const 3968)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (loop $for-loop|0
   (if
    (i32.gt_s
     (call $~lib/string/String#get:length
      (local.get $0)
     )
     (local.get $3)
    )
    (block
     (call $~lib/as-chain/system/check
      (select
       (i64.le_u
        (local.tee $4
         (i64.extend_i32_s
          (call $~lib/string/String#charCodeAt
           (local.get $0)
           (i32.sub
            (i32.sub
             (call $~lib/string/String#get:length
              (local.get $0)
             )
             (i32.const 1)
            )
            (local.get $3)
           )
          )
         )
        )
        (i64.const 90)
       )
       (i32.const 0)
       (i64.ge_u
        (local.get $4)
        (i64.const 65)
       )
      )
      (i32.const 4032)
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $2)
      (i64.or
       (local.get $4)
       (i64.load
        (local.get $2)
       )
      )
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $2)
      (i64.shl
       (i64.load
        (local.get $2)
       )
       (i64.const 8)
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
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.or
    (i64.load
     (local.get $2)
    )
    (i64.extend_i32_u
     (i32.and
      (local.get $1)
      (i32.const 255)
     )
    )
   )
  )
  (local.get $2)
 )
 (func $~lib/as-chain/asset/Asset#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 39)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $assembly/amm/amm.contract/ammContract#createAsset (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (call $~lib/as-chain/asset/Asset#constructor
   (local.get $0)
   (call $~lib/as-chain/asset/Symbol#constructor
    (local.get $1)
    (local.get $2)
   )
  )
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32)
  (i32.store offset=4
   (local.get $0)
   (i32.const 4352)
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
      (i32.const 4208)
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
     (i32.const 4208)
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
      (i32.const 4208)
     )
    )
   )
   (local.set $0
    (i32.const 4208)
   )
   (local.set $4
    (call $~lib/string/String#get:length
     (i32.const 4208)
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
         (i32.const 4208)
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
 (func $~lib/as-chain/name/S2N (result i64)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local.set $1
   (i32.le_s
    (call $~lib/string/String#get:length
     (i32.const 4352)
    )
    (i32.const 13)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 4240)
  )
  (call $~lib/as-chain/system/check
   (local.get $1)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 4240)
   )
  )
  (loop $for-loop|0
   (if
    (i32.le_s
     (local.get $0)
     (i32.const 12)
    )
    (block
     (local.set $2
      (i64.const 0)
     )
     (if
      (select
       (i32.le_s
        (local.get $0)
        (i32.const 12)
       )
       (i32.const 0)
       (i32.gt_s
        (call $~lib/string/String#get:length
         (i32.const 4352)
        )
        (local.get $0)
       )
      )
      (block
       (local.set $1
        (call $~lib/string/String#charCodeAt
         (i32.const 4352)
         (local.get $0)
        )
       )
       (global.set $~argumentsLength
        (i32.const 1)
       )
       (if
        (i64.eq
         (local.tee $2
          (i64.extend_i32_u
           (i32.and
            (call_indirect (type $i32_=>_i32)
             (local.get $1)
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
          (i32.const 4320)
         )
         (call $~lib/as-chain/system/check
          (i32.const 0)
          (call $~lib/staticarray/StaticArray<~lib/string/String>#join
           (i32.const 4320)
          )
         )
         (return
          (i64.const 0)
         )
        )
       )
      )
     )
     (local.set $3
      (i64.or
       (local.get $3)
       (select
        (i64.shl
         (i64.and
          (local.get $2)
          (i64.const 31)
         )
         (i64.sub
          (i64.const 64)
          (i64.mul
           (i64.extend_i32_s
            (local.tee $1
             (i32.add
              (local.get $0)
              (i32.const 1)
             )
            )
           )
           (i64.const 5)
          )
         )
        )
        (i64.and
         (local.get $2)
         (i64.const 15)
        )
        (i32.lt_s
         (local.get $0)
         (i32.const 12)
        )
       )
      )
     )
     (local.set $0
      (local.get $1)
     )
     (br $for-loop|0)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/helpers/InlineAction<assembly/amm/amm.inline/TokenTransfer>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 42)
    )
   )
   (i32.const 0)
  )
  (local.set $2
   (call $~lib/as-chain/name/S2N)
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
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $1)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/action/PermissionLevel#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 44)
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
 (func $~lib/as-chain/helpers/InlineAction<assembly/amm/amm.inline/TokenTransfer>#act (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 45)
    )
   )
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (local.get $0)
 )
 (func $assembly/amm/amm.inline/TokenTransfer#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 41)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
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
 (func $assembly/amm/amm.inline/TokenTransfer#pack (param $0 i32) (result i32)
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
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (i32.add
       (call $~lib/as-chain/utils/Utils.calcPackedStringLength
        (i32.load offset=12
         (local.get $0)
        )
       )
       (i32.const 32)
      )
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
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packName (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $0)
   (i64.load
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
 (func $~lib/as-chain/helpers/InlineActionAct<assembly/amm/amm.inline/TokenTransfer>#send (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (drop
   (i32.load offset=4
    (local.tee $2
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 46)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/name/Name>#__uset
   (local.get $2)
   (i32.const 0)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $0)
   )
  )
  (local.set $4
   (i32.load
    (local.get $0)
   )
  )
  (local.set $1
   (call $assembly/amm/amm.inline/TokenTransfer#pack
    (local.get $1)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 47)
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
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $1)
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
 (func $assembly/amm/amm.contract/ammContract#transferFrom (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $6
   (call $~lib/as-chain/helpers/InlineAction<assembly/amm/amm.inline/TokenTransfer>#constructor)
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
   (i64.const 3617214756542218240)
  )
  (call $~lib/as-chain/helpers/InlineActionAct<assembly/amm/amm.inline/TokenTransfer>#send
   (call $~lib/as-chain/helpers/InlineAction<assembly/amm/amm.inline/TokenTransfer>#act
    (local.get $6)
    (local.get $0)
    (call $~lib/as-chain/action/PermissionLevel#constructor
     (local.get $1)
     (local.get $5)
    )
   )
   (call $assembly/amm/amm.inline/TokenTransfer#constructor
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (local.get $4)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/pairData.table/PairDataTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
    (local.get $1)
   )
   (i32.const 4464)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $5
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/pairData.table/PairDataTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
       (local.get $1)
      )
      (i32.const 4528)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/pairData.table/PairDataTable>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $6
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/pairData.table/PairDataTable>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/pairData.table/PairDataTable>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/pairData.table/PairDataTable>#getEx
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
     (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
      (local.get $1)
      (i64.load
       (local.get $6)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 4672)
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
     (call $assembly/amm/tables/pairData.table/PairDataTable#pack
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
     (local.get $4)
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
        (local.get $4)
       )
      )
     )
     (local.set $2
      (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#getSecondaryValue)
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
        (local.get $4)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
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
    (local.get $5)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $5)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $5)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/pairData.table/PairDataTable>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local.set $3
   (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/pairData.table/PairDataTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/pairData.table/PairDataTable>#update
   (i32.load
    (local.get $0)
   )
   (local.get $3)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/liquidity.table/LiquidityTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 48)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
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
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/liquidity.table/LiquidityTable>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/liquidity.table/LiquidityTable>#constructor
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
 (func $assembly/amm/tables/liquidity.table/LiquidityTable#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
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
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/liquidity.table/LiquidityTable>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $assembly/amm/tables/liquidity.table/LiquidityTable#unpack
    (local.tee $0
     (call $assembly/amm/tables/liquidity.table/LiquidityTable#constructor
      (i64.const 0)
      (i64.const 0)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (i64.const 0)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/liquidity.table/LiquidityTable>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/liquidity.table/LiquidityTable>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/liquidity.table/LiquidityTable>#get:availablePrimaryKey (param $0 i32) (result i64)
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
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/liquidity.table/LiquidityTable>#constructor
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
      (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/liquidity.table/LiquidityTable>#end
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/liquidity.table/LiquidityTable>#end
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
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/liquidity.table/LiquidityTable>#constructor
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
        (if (result i32)
         (local.tee $1
          (call $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/liquidity.table/LiquidityTable>#get
           (i32.load
            (i32.load
             (local.get $0)
            )
           )
           (local.get $1)
          )
         )
         (local.get $1)
         (call $assembly/amm/tables/liquidity.table/LiquidityTable#constructor
          (i64.const 0)
          (i64.const 0)
          (global.get $~lib/as-chain/name/EMPTY_NAME)
          (i64.const 0)
         )
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $4)
       (i64.const -2)
      )
      (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
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
 (func $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/liquidity.table/LiquidityTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/amm/tables/liquidity.table/LiquidityTable>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/amm/tables/liquidity.table/LiquidityTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/liquidity.table/LiquidityTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/liquidity.table/LiquidityTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $assembly/amm/amm.contract/ammContract#findLiquidityPosition (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local.set $5
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/liquidity.table/LiquidityTable>#get:availablePrimaryKey
    (i32.load offset=16
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
         (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/amm/tables/liquidity.table/LiquidityTable>#getByKey (result i32)
          (drop
           (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/amm/tables/liquidity.table/LiquidityTable>#getByKey
            (i32.const 0)
            (i32.eqz
             (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
              (local.tee $6
               (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/liquidity.table/LiquidityTable>#find
                (local.tee $3
                 (i32.load
                  (i32.load offset=16
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
          (call $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/liquidity.table/LiquidityTable>#get
           (i32.load
            (local.get $3)
           )
           (local.get $6)
          )
         )
        )
        (i64.eq
         (local.get $1)
         (i64.load offset=8
          (local.get $3)
         )
        )
        (i32.const 0)
       )
       (i64.eq
        (i64.load
         (i32.load offset=16
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
       (local.get $3)
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
  (i32.const 0)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/liquidity.table/LiquidityTable>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/liquidity.table/LiquidityTable>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $assembly/amm/tables/liquidity.table/LiquidityTable#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load offset=16
        (local.get $0)
       )
      )
      (i32.const 32)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/liquidity.table/LiquidityTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
    (local.get $1)
   )
   (i32.const 4464)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $5
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/liquidity.table/LiquidityTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
       (local.get $1)
      )
      (i32.const 4528)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/liquidity.table/LiquidityTable>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $6
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/liquidity.table/LiquidityTable>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/liquidity.table/LiquidityTable>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/liquidity.table/LiquidityTable>#getEx
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
     (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
      (local.get $1)
      (i64.load
       (local.get $6)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 4672)
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
     (call $assembly/amm/tables/liquidity.table/LiquidityTable#pack
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
     (local.get $4)
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
        (local.get $4)
       )
      )
     )
     (local.set $2
      (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#getSecondaryValue)
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
        (local.get $4)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
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
    (local.get $5)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $5)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $5)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/liquidity.table/LiquidityTable>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local.set $3
   (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/liquidity.table/LiquidityTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/liquidity.table/LiquidityTable>#update
   (i32.load
    (local.get $0)
   )
   (local.get $3)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/liquidity.table/LiquidityTable>#store (param $0 i32) (param $1 i32) (param $2 i32)
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
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/liquidity.table/LiquidityTable>#find
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
     (call $assembly/amm/tables/liquidity.table/LiquidityTable#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/liquidity.table/LiquidityTable>#constructor
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
      (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#getSecondaryValue)
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
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
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
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
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
 (func $assembly/amm/amm.contract/ammContract#addLiquidity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i64) (param $6 i64) (param $7 i64) (param $8 i64) (param $9 i32) (param $10 i32) (param $11 i32) (param $12 i32) (param $13 i32)
  (local $14 i64)
  (local $15 i64)
  (local $16 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $13)
  )
  (call $~lib/as-chain/system/check
   (select
    (i64.ne
     (local.get $6)
     (i64.const 0)
    )
    (i32.const 0)
    (i64.ne
     (local.get $5)
     (i64.const 0)
    )
   )
   (i32.const 3408)
  )
  (local.set $15
   (call $assembly/amm/amm.contract/ammContract#computePairId
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
     (local.tee $1
      (call $assembly/amm/amm.contract/ammContract#sortTokens
       (local.get $1)
       (local.get $2)
      )
     )
     (i32.const 0)
    )
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
     (local.get $1)
     (i32.const 1)
    )
   )
  )
  (if
   (i32.eqz
    (if (result i32)
     (i64.eqz
      (i64.load offset=16
       (local.tee $1
        (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/pairData.table/PairDataTable>#requireGet
         (i32.load offset=12
          (local.get $0)
         )
         (local.get $15)
        )
       )
      )
     )
     (i64.eqz
      (i64.load offset=24
       (local.get $1)
      )
     )
     (i32.const 0)
    )
   )
   (if
    (i64.ge_u
     (local.get $6)
     (local.tee $14
      (call $assembly/amm/amm.contract/ammContract#quote
       (local.get $5)
       (i64.load offset=16
        (local.get $1)
       )
       (i64.load offset=24
        (local.get $1)
       )
      )
     )
    )
    (block
     (call $~lib/as-chain/system/check
      (i64.le_u
       (local.get $8)
       (local.get $14)
      )
      (i32.const 3648)
     )
     (local.set $6
      (local.get $14)
     )
    )
    (block
     (call $~lib/as-chain/system/check
      (i64.ge_u
       (local.get $5)
       (local.tee $5
        (call $assembly/amm/amm.contract/ammContract#quote
         (local.get $6)
         (i64.load offset=24
          (local.get $1)
         )
         (i64.load offset=16
          (local.get $1)
         )
        )
       )
      )
      (i32.const 3728)
     )
     (call $~lib/as-chain/system/check
      (i64.ge_u
       (local.get $5)
       (local.get $7)
      )
      (i32.const 3792)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.ne
    (local.tee $7
     (if (result i64)
      (i64.eqz
       (i64.load offset=32
        (local.get $1)
       )
      )
      (block (result i64)
       (local.set $2
        (call $~lib/as-chain/bignum/integer/u128/u128#constructor
         (local.get $5)
         (i64.const 0)
        )
       )
       (local.set $16
        (call $~lib/as-chain/bignum/integer/u128/u128#constructor
         (local.get $6)
         (i64.const 0)
        )
       )
       (call $~lib/as-chain/system/check
        (i64.gt_u
         (local.tee $7
          (call $assembly/amm/amm.contract/ammContract#sqrtU128
           (call $~lib/as-chain/bignum/integer/u128/u128#constructor
            (call $~lib/as-chain/bignum/globals/__multi3
             (i64.load
              (local.get $2)
             )
             (i64.load offset=8
              (local.get $2)
             )
             (i64.load
              (local.get $16)
             )
             (i64.load offset=8
              (local.get $16)
             )
            )
            (global.get $~lib/as-chain/bignum/globals/__res128_hi)
           )
          )
         )
         (i64.load offset=24
          (local.get $0)
         )
        )
        (i32.const 3872)
       )
       (i64.sub
        (local.get $7)
        (i64.load offset=24
         (local.get $0)
        )
       )
      )
      (select
       (local.tee $7
        (i64.div_u
         (i64.mul
          (local.get $5)
          (i64.load offset=32
           (local.get $1)
          )
         )
         (i64.load offset=16
          (local.get $1)
         )
        )
       )
       (local.tee $8
        (i64.div_u
         (i64.mul
          (local.get $6)
          (i64.load offset=32
           (local.get $1)
          )
         )
         (i64.load offset=24
          (local.get $1)
         )
        )
       )
       (i64.lt_u
        (local.get $7)
        (local.get $8)
       )
      )
     )
    )
    (i64.const 0)
   )
   (i32.const 3872)
  )
  (local.set $2
   (call $assembly/amm/amm.contract/ammContract#createAsset
    (local.get $5)
    (local.get $9)
    (local.get $11)
   )
  )
  (call $assembly/amm/amm.contract/ammContract#transferFrom
   (local.get $3)
   (local.get $13)
   (i32.load
    (local.get $0)
   )
   (local.get $2)
   (i32.const 4096)
  )
  (local.set $2
   (call $assembly/amm/amm.contract/ammContract#createAsset
    (local.get $6)
    (local.get $10)
    (local.get $12)
   )
  )
  (call $assembly/amm/amm.contract/ammContract#transferFrom
   (local.get $4)
   (local.get $13)
   (i32.load
    (local.get $0)
   )
   (local.get $2)
   (i32.const 4400)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
   (local.get $1)
   (i64.add
    (local.get $5)
    (i64.load offset=16
     (local.get $1)
    )
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
   (local.get $1)
   (i64.add
    (local.get $6)
    (i64.load offset=24
     (local.get $1)
    )
   )
  )
  (if
   (i64.eqz
    (i64.load offset=32
     (local.get $1)
    )
   )
   (call $assembly/amm/tables/pairData.table/PairDataTable#set:totalSupply
    (local.get $1)
    (i64.add
     (local.get $7)
     (i64.load offset=24
      (local.get $0)
     )
    )
   )
   (call $assembly/amm/tables/pairData.table/PairDataTable#set:totalSupply
    (local.get $1)
    (i64.add
     (local.get $7)
     (i64.load offset=32
      (local.get $1)
     )
    )
   )
  )
  (local.set $2
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.load offset=16
     (local.get $1)
    )
    (i64.const 0)
   )
  )
  (local.set $3
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.load offset=24
     (local.get $1)
    )
    (i64.const 0)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:kLast
   (local.get $1)
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (call $~lib/as-chain/bignum/globals/__multi3
     (i64.load
      (local.get $2)
     )
     (i64.load offset=8
      (local.get $2)
     )
     (i64.load
      (local.get $3)
     )
     (i64.load offset=8
      (local.get $3)
     )
    )
    (global.get $~lib/as-chain/bignum/globals/__res128_hi)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:blockTimestampLast
   (local.get $1)
   (call $~lib/as-chain/system/currentTimeSec)
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/pairData.table/PairDataTable>#update
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
  (if
   (local.tee $1
    (call $assembly/amm/amm.contract/ammContract#findLiquidityPosition
     (local.get $0)
     (local.get $15)
     (local.get $13)
    )
   )
   (block
    (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
     (local.get $1)
     (i64.add
      (local.get $7)
      (i64.load offset=24
       (local.get $1)
      )
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/liquidity.table/LiquidityTable>#update
     (i32.load offset=16
      (local.get $0)
     )
     (local.get $1)
     (i32.load
      (local.get $0)
     )
    )
   )
   (block
    (local.set $1
     (call $assembly/amm/tables/liquidity.table/LiquidityTable#constructor
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/liquidity.table/LiquidityTable>#get:availablePrimaryKey
       (i32.load offset=16
        (local.get $0)
       )
      )
      (local.get $15)
      (local.get $13)
      (local.get $7)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/liquidity.table/LiquidityTable>#store
     (i32.load offset=16
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
 (func $assembly/amm/amm.contract/ammContract#transfer (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local.set $6
   (call $~lib/as-chain/helpers/InlineAction<assembly/amm/amm.inline/TokenTransfer>#constructor)
  )
  (local.set $7
   (i32.load
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
   (i64.const 3617214756542218240)
  )
  (call $~lib/as-chain/helpers/InlineActionAct<assembly/amm/amm.inline/TokenTransfer>#send
   (call $~lib/as-chain/helpers/InlineAction<assembly/amm/amm.inline/TokenTransfer>#act
    (local.get $6)
    (local.get $1)
    (call $~lib/as-chain/action/PermissionLevel#constructor
     (local.get $7)
     (local.get $0)
    )
   )
   (call $assembly/amm/amm.inline/TokenTransfer#constructor
    (local.get $2)
    (local.get $3)
    (local.get $4)
    (local.get $5)
   )
  )
 )
 (func $assembly/amm/amm.contract/ammContract#removeLiquidity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i64) (param $6 i64) (param $7 i64) (param $8 i32) (param $9 i32) (param $10 i32) (param $11 i32) (param $12 i32)
  (local $13 i32)
  (local $14 i64)
  (local $15 i32)
  (local $16 i64)
  (local $17 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $12)
  )
  (call $~lib/as-chain/system/check
   (i64.ne
    (local.get $5)
    (i64.const 0)
   )
   (i32.const 4784)
  )
  (local.set $14
   (call $assembly/amm/amm.contract/ammContract#computePairId
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
     (local.tee $1
      (call $assembly/amm/amm.contract/ammContract#sortTokens
       (local.get $1)
       (local.get $2)
      )
     )
     (i32.const 0)
    )
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
     (local.get $1)
     (i32.const 1)
    )
   )
  )
  (local.set $13
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/pairData.table/PairDataTable>#requireGet
    (i32.load offset=12
     (local.get $0)
    )
    (local.get $14)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (local.tee $2
     (call $assembly/amm/amm.contract/ammContract#findLiquidityPosition
      (local.get $0)
      (local.get $14)
      (local.get $12)
     )
    )
    (i32.const 0)
   )
   (i32.const 4880)
  )
  (call $~lib/as-chain/system/check
   (i64.le_u
    (local.get $5)
    (i64.load offset=24
     (local.tee $1
      (if (result i32)
       (local.get $2)
       (local.get $2)
       (unreachable)
      )
     )
    )
   )
   (i32.const 4944)
  )
  (call $~lib/as-chain/system/check
   (i64.ne
    (i64.load offset=32
     (local.get $13)
    )
    (i64.const 0)
   )
   (i32.const 5024)
  )
  (call $~lib/as-chain/system/check
   (select
    (i64.ne
     (local.tee $14
      (i64.div_u
       (i64.mul
        (local.get $5)
        (i64.load offset=24
         (local.get $13)
        )
       )
       (i64.load offset=32
        (local.get $13)
       )
      )
     )
     (i64.const 0)
    )
    (i32.const 0)
    (i64.ne
     (local.tee $16
      (i64.div_u
       (i64.mul
        (local.get $5)
        (i64.load offset=16
         (local.get $13)
        )
       )
       (i64.load offset=32
        (local.get $13)
       )
      )
     )
     (i64.const 0)
    )
   )
   (i32.const 4784)
  )
  (call $~lib/as-chain/system/check
   (i64.le_u
    (local.get $6)
    (local.get $16)
   )
   (i32.const 3792)
  )
  (call $~lib/as-chain/system/check
   (i64.le_u
    (local.get $7)
    (local.get $14)
   )
   (i32.const 3648)
  )
  (if
   (i32.eqz
    (local.get $2)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (local.get $2)
   )
   (unreachable)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
   (local.get $1)
   (i64.sub
    (i64.load offset=24
     (local.get $2)
    )
    (local.get $5)
   )
  )
  (if
   (i32.eqz
    (local.get $2)
   )
   (unreachable)
  )
  (if
   (i64.eqz
    (i64.load offset=24
     (local.get $2)
    )
   )
   (block
    (local.set $15
     (i32.load offset=16
      (local.get $0)
     )
    )
    (if
     (i32.eqz
      (local.get $2)
     )
     (unreachable)
    )
    (drop
     (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/liquidity.table/LiquidityTable>#requireFind
      (i32.load
       (local.get $15)
      )
      (local.tee $6
       (i64.load
        (local.get $2)
       )
      )
      (i32.const 1648)
     )
    )
    (local.set $1
     (i32.const 0)
    )
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
      (local.tee $17
       (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/liquidity.table/LiquidityTable>#find
        (local.tee $2
         (i32.load
          (local.get $15)
         )
        )
        (local.get $6)
       )
      )
     )
     (i32.const 3328)
    )
    (call $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/pairData.table/PairDataTable>#remove
     (i32.load
      (local.get $2)
     )
     (local.get $17)
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $1)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $2)
        )
       )
      )
      (block
       (if
        (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
         (i32.load
          (local.tee $17
           (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
            (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
             (i32.load offset=4
              (local.get $2)
             )
             (local.get $1)
            )
           )
          )
         )
        )
        (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
         (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
          (i32.load offset=4
           (local.get $2)
          )
          (local.get $1)
         )
         (i32.load
          (local.get $17)
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
    (if
     (i64.eq
      (local.get $6)
      (i64.sub
       (i64.load offset=8
        (local.get $15)
       )
       (i64.const 1)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $15)
      (i64.const -1)
     )
    )
   )
   (block
    (local.set $1
     (i32.load offset=16
      (local.get $0)
     )
    )
    (if
     (i32.eqz
      (local.get $2)
     )
     (unreachable)
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/liquidity.table/LiquidityTable>#update
     (local.get $1)
     (local.get $2)
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
   (local.get $13)
   (i64.sub
    (i64.load offset=16
     (local.get $13)
    )
    (local.get $16)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
   (local.get $13)
   (i64.sub
    (i64.load offset=24
     (local.get $13)
    )
    (local.get $14)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:totalSupply
   (local.get $13)
   (i64.sub
    (i64.load offset=32
     (local.get $13)
    )
    (local.get $5)
   )
  )
  (local.set $1
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.load offset=16
     (local.get $13)
    )
    (i64.const 0)
   )
  )
  (local.set $2
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.load offset=24
     (local.get $13)
    )
    (i64.const 0)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:kLast
   (local.get $13)
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (call $~lib/as-chain/bignum/globals/__multi3
     (i64.load
      (local.get $1)
     )
     (i64.load offset=8
      (local.get $1)
     )
     (i64.load
      (local.get $2)
     )
     (i64.load offset=8
      (local.get $2)
     )
    )
    (global.get $~lib/as-chain/bignum/globals/__res128_hi)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:blockTimestampLast
   (local.get $13)
   (call $~lib/as-chain/system/currentTimeSec)
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/pairData.table/PairDataTable>#update
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $13)
   (i32.load
    (local.get $0)
   )
  )
  (local.set $1
   (call $assembly/amm/amm.contract/ammContract#createAsset
    (local.get $16)
    (local.get $8)
    (local.get $10)
   )
  )
  (call $assembly/amm/amm.contract/ammContract#transfer
   (local.get $0)
   (local.get $3)
   (i32.load
    (local.get $0)
   )
   (local.get $12)
   (local.get $1)
   (i32.const 5104)
  )
  (local.set $1
   (call $assembly/amm/amm.contract/ammContract#createAsset
    (local.get $14)
    (local.get $9)
    (local.get $11)
   )
  )
  (call $assembly/amm/amm.contract/ammContract#transfer
   (local.get $0)
   (local.get $4)
   (i32.load
    (local.get $0)
   )
   (local.get $12)
   (local.get $1)
   (i32.const 5184)
  )
 )
 (func $assembly/amm/amm.contract/ammContract#computeAmountOut (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i32) (result i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (call $~lib/as-chain/system/check
   (i64.ne
    (local.get $1)
    (i64.const 0)
   )
   (i32.const 5264)
  )
  (call $~lib/as-chain/system/check
   (select
    (i64.ne
     (local.get $3)
     (i64.const 0)
    )
    (i32.const 0)
    (i64.ne
     (local.get $2)
     (i64.const 0)
    )
   )
   (i32.const 3568)
  )
  (local.set $4
   (i32.sub
    (i32.load offset=32
     (local.get $0)
    )
    (local.get $4)
   )
  )
  (local.set $6
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (local.get $1)
    (i64.const 0)
   )
  )
  (local.set $5
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.extend_i32_u
     (local.get $4)
    )
    (i64.const 0)
   )
  )
  (local.set $7
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (local.get $2)
    (i64.const 0)
   )
  )
  (local.set $4
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (local.get $3)
    (i64.const 0)
   )
  )
  (local.set $0
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.extend_i32_u
     (i32.load offset=32
      (local.get $0)
     )
    )
    (i64.const 0)
   )
  )
  (local.set $4
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (call $~lib/as-chain/bignum/globals/__multi3
     (i64.load
      (local.tee $5
       (call $~lib/as-chain/bignum/integer/u128/u128#constructor
        (call $~lib/as-chain/bignum/globals/__multi3
         (i64.load
          (local.get $6)
         )
         (i64.load offset=8
          (local.get $6)
         )
         (i64.load
          (local.get $5)
         )
         (i64.load offset=8
          (local.get $5)
         )
        )
        (global.get $~lib/as-chain/bignum/globals/__res128_hi)
       )
      )
     )
     (i64.load offset=8
      (local.get $5)
     )
     (i64.load
      (local.get $4)
     )
     (i64.load offset=8
      (local.get $4)
     )
    )
    (global.get $~lib/as-chain/bignum/globals/__res128_hi)
   )
  )
  (local.set $0
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (local.tee $1
     (i64.add
      (local.tee $2
       (i64.load
        (local.tee $0
         (call $~lib/as-chain/bignum/integer/u128/u128#constructor
          (call $~lib/as-chain/bignum/globals/__multi3
           (i64.load
            (local.get $7)
           )
           (i64.load offset=8
            (local.get $7)
           )
           (i64.load
            (local.get $0)
           )
           (i64.load offset=8
            (local.get $0)
           )
          )
          (global.get $~lib/as-chain/bignum/globals/__res128_hi)
         )
        )
       )
      )
      (i64.load
       (local.get $5)
      )
     )
    )
    (i64.add
     (i64.extend_i32_u
      (i64.lt_u
       (local.get $1)
       (local.get $2)
      )
     )
     (i64.add
      (i64.load offset=8
       (local.get $0)
      )
      (i64.load offset=8
       (local.get $5)
      )
     )
    )
   )
  )
  (i64.load
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (call $~lib/as-chain/bignum/globals/__udivmod128
     (i64.load
      (local.get $4)
     )
     (i64.load offset=8
      (local.get $4)
     )
     (i64.load
      (local.get $0)
     )
     (i64.load offset=8
      (local.get $0)
     )
    )
    (global.get $~lib/as-chain/bignum/globals/__divmod_quot_hi)
   )
  )
 )
 (func $assembly/amm/amm.contract/ammContract#updatePriceAccumulators (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (if
   (if (result i32)
    (if (result i32)
     (local.tee $7
      (i32.sub
       (call $~lib/as-chain/system/currentTimeSec)
       (i32.load offset=44
        (local.get $0)
       )
      )
     )
     (i64.ne
      (i64.load offset=16
       (local.get $0)
      )
      (i64.const 0)
     )
     (i32.const 0)
    )
    (i64.ne
     (i64.load offset=24
      (local.get $0)
     )
     (i64.const 0)
    )
    (i32.const 0)
   )
   (block
    (local.set $2
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (i64.load offset=16
       (local.get $0)
      )
      (i64.const 0)
     )
    )
    (local.set $3
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (i64.load offset=24
       (local.get $0)
      )
      (i64.const 0)
     )
    )
    (drop
     (i64.load offset=8
      (local.tee $1
       (call $~lib/as-chain/bignum/integer/u128/u128#constructor
        (i64.const 1)
        (i64.const 0)
       )
      )
     )
    )
    (local.set $1
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (i64.const 0)
      (i64.shl
       (i64.load
        (local.get $1)
       )
       (i64.const 48)
      )
     )
    )
    (local.set $4
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (call $~lib/as-chain/bignum/globals/__udivmod128
       (i64.load
        (local.tee $4
         (call $~lib/as-chain/bignum/integer/u128/u128#constructor
          (call $~lib/as-chain/bignum/globals/__multi3
           (i64.load
            (local.get $3)
           )
           (i64.load offset=8
            (local.get $3)
           )
           (i64.load
            (local.get $1)
           )
           (i64.load offset=8
            (local.get $1)
           )
          )
          (global.get $~lib/as-chain/bignum/globals/__res128_hi)
         )
        )
       )
       (i64.load offset=8
        (local.get $4)
       )
       (i64.load
        (local.get $2)
       )
       (i64.load offset=8
        (local.get $2)
       )
      )
      (global.get $~lib/as-chain/bignum/globals/__divmod_quot_hi)
     )
    )
    (local.set $2
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (call $~lib/as-chain/bignum/globals/__udivmod128
       (i64.load
        (local.tee $2
         (call $~lib/as-chain/bignum/integer/u128/u128#constructor
          (call $~lib/as-chain/bignum/globals/__multi3
           (i64.load
            (local.get $2)
           )
           (i64.load offset=8
            (local.get $2)
           )
           (i64.load
            (local.get $1)
           )
           (i64.load offset=8
            (local.get $1)
           )
          )
          (global.get $~lib/as-chain/bignum/globals/__res128_hi)
         )
        )
       )
       (i64.load offset=8
        (local.get $2)
       )
       (i64.load
        (local.get $3)
       )
       (i64.load offset=8
        (local.get $3)
       )
      )
      (global.get $~lib/as-chain/bignum/globals/__divmod_quot_hi)
     )
    )
    (local.set $3
     (i32.load offset=48
      (local.get $0)
     )
    )
    (local.set $1
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (i64.extend_i32_u
       (local.get $7)
      )
      (i64.const 0)
     )
    )
    (local.set $1
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (call $~lib/as-chain/bignum/globals/__multi3
       (i64.load
        (local.get $4)
       )
       (i64.load offset=8
        (local.get $4)
       )
       (i64.load
        (local.get $1)
       )
       (i64.load offset=8
        (local.get $1)
       )
      )
      (global.get $~lib/as-chain/bignum/globals/__res128_hi)
     )
    )
    (call $assembly/amm/tables/pairData.table/PairDataTable#set:price0CumulativeLast
     (local.get $0)
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (local.tee $6
       (i64.add
        (local.tee $5
         (i64.load
          (local.get $3)
         )
        )
        (i64.load
         (local.get $1)
        )
       )
      )
      (i64.add
       (i64.extend_i32_u
        (i64.gt_u
         (local.get $5)
         (local.get $6)
        )
       )
       (i64.add
        (i64.load offset=8
         (local.get $3)
        )
        (i64.load offset=8
         (local.get $1)
        )
       )
      )
     )
    )
    (local.set $3
     (i32.load offset=52
      (local.get $0)
     )
    )
    (local.set $1
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (i64.extend_i32_u
       (local.get $7)
      )
      (i64.const 0)
     )
    )
    (local.set $2
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (call $~lib/as-chain/bignum/globals/__multi3
       (i64.load
        (local.get $2)
       )
       (i64.load offset=8
        (local.get $2)
       )
       (i64.load
        (local.get $1)
       )
       (i64.load offset=8
        (local.get $1)
       )
      )
      (global.get $~lib/as-chain/bignum/globals/__res128_hi)
     )
    )
    (call $assembly/amm/tables/pairData.table/PairDataTable#set:price1CumulativeLast
     (local.get $0)
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (local.tee $6
       (i64.add
        (local.tee $5
         (i64.load
          (local.get $3)
         )
        )
        (i64.load
         (local.get $2)
        )
       )
      )
      (i64.add
       (i64.extend_i32_u
        (i64.gt_u
         (local.get $5)
         (local.get $6)
        )
       )
       (i64.add
        (i64.load offset=8
         (local.get $3)
        )
        (i64.load offset=8
         (local.get $2)
        )
       )
      )
     )
    )
   )
  )
 )
 (func $assembly/amm/amm.contract/ammContract#swap (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i64) (param $6 i64) (param $7 i32) (param $8 i32) (param $9 i32) (param $10 i32) (param $11 i32)
  (local $12 i64)
  (local $13 i64)
  (call $~lib/as-chain/action/requireAuth
   (local.get $11)
  )
  (call $~lib/as-chain/system/check
   (i64.ne
    (local.get $5)
    (i64.const 0)
   )
   (i32.const 5264)
  )
  (call $~lib/as-chain/system/check
   (i64.ne
    (i64.load
     (local.get $1)
    )
    (i64.load
     (local.get $2)
    )
   )
   (i32.const 3040)
  )
  (local.set $12
   (call $assembly/amm/amm.contract/ammContract#computePairId
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
     (local.tee $2
      (call $assembly/amm/amm.contract/ammContract#sortTokens
       (local.get $1)
       (local.get $2)
      )
     )
     (i32.const 0)
    )
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
     (local.get $2)
     (i32.const 1)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i64.ne
     (i64.load offset=16
      (local.tee $2
       (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/pairData.table/PairDataTable>#requireGet
        (i32.load offset=12
         (local.get $0)
        )
        (local.get $12)
       )
      )
     )
     (i64.const 0)
    )
    (i64.ne
     (i64.load offset=24
      (local.get $2)
     )
     (i64.const 0)
    )
    (i32.const 0)
   )
   (i32.const 3568)
  )
  (local.set $12
   (if (result i64)
    (local.tee $1
     (i64.eq
      (i64.load
       (local.get $1)
      )
      (i64.load
       (i32.load offset=8
        (local.get $2)
       )
      )
     )
    )
    (block (result i64)
     (local.set $13
      (i64.load offset=16
       (local.get $2)
      )
     )
     (i64.load offset=24
      (local.get $2)
     )
    )
    (block (result i64)
     (local.set $13
      (i64.load offset=24
       (local.get $2)
      )
     )
     (i64.load offset=16
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.le_u
    (local.get $6)
    (local.tee $6
     (call $assembly/amm/amm.contract/ammContract#computeAmountOut
      (local.get $0)
      (local.get $5)
      (local.get $13)
      (local.get $12)
      (i32.load offset=12
       (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/ammConfig.table/AmmConfigTable>#requireGet
        (i32.load offset=20
         (local.get $0)
        )
       )
      )
     )
    )
   )
   (i32.const 5344)
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (local.get $6)
    (local.get $12)
   )
   (i32.const 3568)
  )
  (local.set $7
   (call $assembly/amm/amm.contract/ammContract#createAsset
    (local.get $5)
    (local.get $7)
    (local.get $9)
   )
  )
  (call $assembly/amm/amm.contract/ammContract#transferFrom
   (local.get $3)
   (local.get $11)
   (i32.load
    (local.get $0)
   )
   (local.get $7)
   (i32.const 5440)
  )
  (local.set $3
   (call $assembly/amm/amm.contract/ammContract#createAsset
    (local.get $6)
    (local.get $8)
    (local.get $10)
   )
  )
  (call $assembly/amm/amm.contract/ammContract#transfer
   (local.get $0)
   (local.get $4)
   (i32.load
    (local.get $0)
   )
   (local.get $11)
   (local.get $3)
   (i32.const 5488)
  )
  (if
   (local.get $1)
   (block
    (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
     (local.get $2)
     (i64.add
      (local.get $5)
      (i64.load offset=16
       (local.get $2)
      )
     )
    )
    (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
     (local.get $2)
     (i64.sub
      (i64.load offset=24
       (local.get $2)
      )
      (local.get $6)
     )
    )
   )
   (block
    (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
     (local.get $2)
     (i64.add
      (local.get $5)
      (i64.load offset=24
       (local.get $2)
      )
     )
    )
    (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
     (local.get $2)
     (i64.sub
      (i64.load offset=16
       (local.get $2)
      )
      (local.get $6)
     )
    )
   )
  )
  (local.set $1
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.load offset=16
     (local.get $2)
    )
    (i64.const 0)
   )
  )
  (local.set $3
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.load offset=24
     (local.get $2)
    )
    (i64.const 0)
   )
  )
  (local.set $7
   (local.tee $4
    (call $~lib/as-chain/bignum/integer/u128/u128#constructor
     (call $~lib/as-chain/bignum/globals/__multi3
      (i64.load
       (local.get $1)
      )
      (i64.load offset=8
       (local.get $1)
      )
      (i64.load
       (local.get $3)
      )
      (i64.load offset=8
       (local.get $3)
      )
     )
     (global.get $~lib/as-chain/bignum/globals/__res128_hi)
    )
   )
  )
  (local.set $1
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (local.get $13)
    (i64.const 0)
   )
  )
  (local.set $3
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (local.get $12)
    (i64.const 0)
   )
  )
  (local.set $1
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (call $~lib/as-chain/bignum/globals/__multi3
     (i64.load
      (local.get $1)
     )
     (i64.load offset=8
      (local.get $1)
     )
     (i64.load
      (local.get $3)
     )
     (i64.load offset=8
      (local.get $3)
     )
    )
    (global.get $~lib/as-chain/bignum/globals/__res128_hi)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (if (result i32)
     (i64.eq
      (local.tee $5
       (i64.load offset=8
        (local.get $4)
       )
      )
      (local.tee $6
       (i64.load offset=8
        (local.get $1)
       )
      )
     )
     (i64.lt_u
      (i64.load
       (local.get $7)
      )
      (i64.load
       (local.get $1)
      )
     )
     (i64.lt_u
      (local.get $5)
      (local.get $6)
     )
    )
   )
   (i32.const 5536)
  )
  (call $assembly/amm/amm.contract/ammContract#updatePriceAccumulators
   (local.get $2)
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:blockTimestampLast
   (local.get $2)
   (call $~lib/as-chain/system/currentTimeSec)
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/pairData.table/PairDataTable>#update
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $2)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/amm/amm.contract/ammContract#getReserves (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local.set $3
   (call $assembly/amm/amm.contract/ammContract#computePairId
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
     (local.tee $1
      (call $assembly/amm/amm.contract/ammContract#sortTokens
       (local.get $1)
       (local.get $2)
      )
     )
     (i32.const 0)
    )
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
     (local.get $1)
     (i32.const 1)
    )
   )
  )
  (drop
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/pairData.table/PairDataTable>#requireGet
    (i32.load offset=12
     (local.get $0)
    )
    (local.get $3)
   )
  )
 )
 (func $assembly/amm/amm.contract/ammContract#getAmountOut (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (local $4 i64)
  (call $~lib/as-chain/system/check
   (i64.ne
    (local.get $3)
    (i64.const 0)
   )
   (i32.const 5264)
  )
  (local.set $4
   (call $assembly/amm/amm.contract/ammContract#computePairId
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
     (local.tee $2
      (call $assembly/amm/amm.contract/ammContract#sortTokens
       (local.get $1)
       (local.get $2)
      )
     )
     (i32.const 0)
    )
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
     (local.get $2)
     (i32.const 1)
    )
   )
  )
  (local.set $2
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/pairData.table/PairDataTable>#requireGet
    (i32.load offset=12
     (local.get $0)
    )
    (local.get $4)
   )
  )
  (drop
   (call $assembly/amm/amm.contract/ammContract#computeAmountOut
    (local.get $0)
    (local.get $3)
    (if (result i64)
     (i64.eq
      (i64.load
       (local.get $1)
      )
      (i64.load
       (i32.load offset=8
        (local.get $2)
       )
      )
     )
     (block (result i64)
      (local.set $3
       (i64.load offset=24
        (local.get $2)
       )
      )
      (i64.load offset=16
       (local.get $2)
      )
     )
     (block (result i64)
      (local.set $3
       (i64.load offset=16
        (local.get $2)
       )
      )
      (i64.load offset=24
       (local.get $2)
      )
     )
    )
    (local.get $3)
    (i32.load offset=12
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/ammConfig.table/AmmConfigTable>#requireGet
      (i32.load offset=20
       (local.get $0)
      )
     )
    )
   )
  )
 )
 (func $assembly/amm/amm.contract/ammContract#getLiquidity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (drop
   (call $assembly/amm/amm.contract/ammContract#findLiquidityPosition
    (local.get $0)
    (call $assembly/amm/amm.contract/ammContract#computePairId
     (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
      (local.tee $0
       (call $assembly/amm/amm.contract/ammContract#sortTokens
        (local.get $1)
        (local.get $2)
       )
      )
      (i32.const 0)
     )
     (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
      (local.get $0)
      (i32.const 1)
     )
    )
    (local.get $3)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/ammConfig.table/AmmConfigTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
    (local.get $1)
   )
   (i32.const 4464)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $5
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
       (local.get $1)
      )
      (i32.const 4528)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $6
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/amm/tables/ammConfig.table/AmmConfigTable>#getEx
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
     (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
      (local.get $1)
      (i64.load
       (local.get $6)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 4672)
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
     (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#pack
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
     (local.get $4)
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
        (local.get $4)
       )
      )
     )
     (local.set $2
      (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#getSecondaryValue)
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
        (local.get $4)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
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
    (local.get $5)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $5)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $5)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $assembly/amm/amm.contract/ammContract#setSwapFee (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (select
    (i32.le_u
     (local.get $1)
     (i32.const 100)
    )
    (i32.const 0)
    (local.get $1)
   )
   (i32.const 5616)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.tee $2
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/amm/tables/ammConfig.table/AmmConfigTable>#requireGet
     (i32.load offset=20
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
  (local.set $1
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/amm/tables/ammConfig.table/AmmConfigTable>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/ammConfig.table/AmmConfigTable>#find
      (i32.load
       (local.tee $0
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
  (call $~lib/as-chain/mi/MultiIndex<assembly/amm/tables/ammConfig.table/AmmConfigTable>#update
   (i32.load
    (local.get $0)
   )
   (local.get $3)
   (local.get $2)
   (local.get $1)
  )
 )
 (func $assembly/amm/amm.contract/initializeAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/amm/amm.contract/addPairAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/amm/amm.contract/addLiquidityAction#set:amount1Min (param $0 i32) (param $1 i64)
  (i64.store offset=40
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/amm/amm.contract/addLiquidityAction#set:token0Precision (param $0 i32) (param $1 i32)
  (i32.store8 offset=56
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/amm/amm.contract/addLiquidityAction#set:token1Precision (param $0 i32) (param $1 i32)
  (i32.store8 offset=57
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/amm/amm.contract/addLiquidityAction#set:provider (param $0 i32) (param $1 i32)
  (i32.store offset=60
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
  (call $~lib/string/String.UTF8.decodeUnsafe
   (local.tee $0
    (i32.load
     (local.get $2)
    )
   )
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $assembly/amm/amm.contract/addLiquidityAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:totalSupply
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/amm/amm.contract/addLiquidityAction#set:amount1Min
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:price0CumulativeLast
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:price1CumulativeLast
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $assembly/amm/amm.contract/addLiquidityAction#set:token0Precision
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $assembly/amm/amm.contract/addLiquidityAction#set:token1Precision
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
  (call $assembly/amm/amm.contract/addLiquidityAction#set:provider
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/amm/amm.contract/removeLiquidityAction#set:token0Precision (param $0 i32) (param $1 i32)
  (i32.store8 offset=48
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/amm/amm.contract/removeLiquidityAction#set:token1Precision (param $0 i32) (param $1 i32)
  (i32.store8 offset=49
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/amm/amm.contract/removeLiquidityAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:totalSupply
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:kLast
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:blockTimestampLast
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $assembly/amm/amm.contract/removeLiquidityAction#set:token0Precision
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $assembly/amm/amm.contract/removeLiquidityAction#set:token1Precision
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
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:price1CumulativeLast
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/amm/amm.contract/swapAction#set:tokenInSymbol (param $0 i32) (param $1 i32)
  (i32.store offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/amm/amm.contract/swapAction#set:tokenOutSymbol (param $0 i32) (param $1 i32)
  (i32.store offset=36
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/amm/amm.contract/swapAction#set:tokenInPrecision (param $0 i32) (param $1 i32)
  (i32.store8 offset=40
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/amm/amm.contract/swapAction#set:tokenOutPrecision (param $0 i32) (param $1 i32)
  (i32.store8 offset=41
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/amm/amm.contract/swapAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/amm/amm.contract/swapAction#set:tokenInSymbol
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $assembly/amm/amm.contract/swapAction#set:tokenOutSymbol
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $assembly/amm/amm.contract/swapAction#set:tokenInPrecision
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $assembly/amm/amm.contract/swapAction#set:tokenOutPrecision
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
  (call $assembly/amm/tables/pairData.table/PairDataTable#set:blockTimestampLast
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/amm/amm.contract/getAmountOutAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/amm/amm.contract/getLiquidityAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/amm/amm.contract/setSwapFeeAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.tee $0
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $assembly/amm/amm.contract/apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i64)
  (local $15 i64)
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
   (local.get $1)
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
   (local.get $2)
  )
  (local.set $6
   (call $assembly/amm/amm.contract/ammContract#constructor
    (i32.const 0)
    (local.get $3)
    (local.get $5)
    (local.get $4)
   )
  )
  (drop
   (call $~lib/as-chain/env/read_action_data
    (i32.load offset=4
     (local.tee $5
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
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 8)
         (i32.const 49)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $assembly/amm/amm.contract/initializeAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/amm/amm.contract/ammContract#initialize
       (local.get $6)
       (local.get $4)
       (i32.load offset=4
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 3626333637294686208)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 8)
         (i32.const 50)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $assembly/amm/amm.contract/addPairAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/amm/amm.contract/ammContract#addPair
       (local.get $6)
       (local.get $4)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4997502816165183488)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 8)
         (i32.const 51)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $assembly/amm/amm.contract/addPairAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/amm/amm.contract/ammContract#removePair
       (local.get $6)
       (local.get $4)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 3626267805886428128)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 64)
         (i32.const 52)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtId
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
       (local.get $3)
       (i64.const 0)
      )
      (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
       (local.get $3)
       (i64.const 0)
      )
      (call $assembly/amm/tables/pairData.table/PairDataTable#set:totalSupply
       (local.get $3)
       (i64.const 0)
      )
      (call $assembly/amm/amm.contract/addLiquidityAction#set:amount1Min
       (local.get $3)
       (i64.const 0)
      )
      (call $assembly/amm/tables/pairData.table/PairDataTable#set:price0CumulativeLast
       (local.get $3)
       (i32.const 4208)
      )
      (call $assembly/amm/tables/pairData.table/PairDataTable#set:price1CumulativeLast
       (local.get $3)
       (i32.const 4208)
      )
      (call $assembly/amm/amm.contract/addLiquidityAction#set:token0Precision
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/amm/amm.contract/addLiquidityAction#set:token1Precision
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/amm/amm.contract/addLiquidityAction#set:provider
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $assembly/amm/amm.contract/addLiquidityAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $7
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $8
         (i32.load offset=8
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $9
         (i32.load offset=12
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (local.set $0
       (i64.load offset=16
        (local.get $3)
       )
      )
      (local.set $1
       (i64.load offset=24
        (local.get $3)
       )
      )
      (local.set $14
       (i64.load offset=32
        (local.get $3)
       )
      )
      (local.set $15
       (i64.load offset=40
        (local.get $3)
       )
      )
      (local.set $10
       (i32.load offset=48
        (local.get $3)
       )
      )
      (local.set $11
       (i32.load offset=52
        (local.get $3)
       )
      )
      (local.set $12
       (i32.load8_u offset=56
        (local.get $3)
       )
      )
      (local.set $13
       (i32.load8_u offset=57
        (local.get $3)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=60
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/amm/amm.contract/ammContract#addLiquidity
       (local.get $6)
       (local.get $4)
       (local.get $7)
       (local.get $8)
       (local.get $9)
       (local.get $0)
       (local.get $1)
       (local.get $14)
       (local.get $15)
       (local.get $10)
       (local.get $11)
       (local.get $12)
       (local.get $13)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4997562530574650400)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 56)
         (i32.const 53)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtId
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
       (local.get $3)
       (i64.const 0)
      )
      (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
       (local.get $3)
       (i64.const 0)
      )
      (call $assembly/amm/tables/pairData.table/PairDataTable#set:totalSupply
       (local.get $3)
       (i64.const 0)
      )
      (call $assembly/amm/tables/pairData.table/PairDataTable#set:kLast
       (local.get $3)
       (i32.const 4208)
      )
      (call $assembly/amm/tables/pairData.table/PairDataTable#set:blockTimestampLast
       (local.get $3)
       (i32.const 4208)
      )
      (call $assembly/amm/amm.contract/removeLiquidityAction#set:token0Precision
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/amm/amm.contract/removeLiquidityAction#set:token1Precision
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/amm/tables/pairData.table/PairDataTable#set:price1CumulativeLast
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $assembly/amm/amm.contract/removeLiquidityAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $7
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $8
         (i32.load offset=8
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $9
         (i32.load offset=12
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (local.set $0
       (i64.load offset=16
        (local.get $3)
       )
      )
      (local.set $1
       (i64.load offset=24
        (local.get $3)
       )
      )
      (local.set $14
       (i64.load offset=32
        (local.get $3)
       )
      )
      (local.set $10
       (i32.load offset=40
        (local.get $3)
       )
      )
      (local.set $11
       (i32.load offset=44
        (local.get $3)
       )
      )
      (local.set $12
       (i32.load8_u offset=48
        (local.get $3)
       )
      )
      (local.set $13
       (i32.load8_u offset=49
        (local.get $3)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=52
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/amm/amm.contract/ammContract#removeLiquidity
       (local.get $6)
       (local.get $4)
       (local.get $7)
       (local.get $8)
       (local.get $9)
       (local.get $0)
       (local.get $1)
       (local.get $14)
       (local.get $10)
       (local.get $11)
       (local.get $12)
       (local.get $13)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4103535724534431744)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 48)
         (i32.const 54)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtId
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve0
       (local.get $3)
       (i64.const 0)
      )
      (call $assembly/amm/tables/pairData.table/PairDataTable#set:reserve1
       (local.get $3)
       (i64.const 0)
      )
      (call $assembly/amm/amm.contract/swapAction#set:tokenInSymbol
       (local.get $3)
       (i32.const 4208)
      )
      (call $assembly/amm/amm.contract/swapAction#set:tokenOutSymbol
       (local.get $3)
       (i32.const 4208)
      )
      (call $assembly/amm/amm.contract/swapAction#set:tokenInPrecision
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/amm/amm.contract/swapAction#set:tokenOutPrecision
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/amm/tables/pairData.table/PairDataTable#set:blockTimestampLast
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $assembly/amm/amm.contract/swapAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $7
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $8
         (i32.load offset=8
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $9
         (i32.load offset=12
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (local.set $0
       (i64.load offset=16
        (local.get $3)
       )
      )
      (local.set $1
       (i64.load offset=24
        (local.get $3)
       )
      )
      (local.set $10
       (i32.load offset=32
        (local.get $3)
       )
      )
      (local.set $11
       (i32.load offset=36
        (local.get $3)
       )
      )
      (local.set $12
       (i32.load8_u offset=40
        (local.get $3)
       )
      )
      (local.set $13
       (i32.load8_u offset=41
        (local.get $3)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=44
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/amm/amm.contract/ammContract#swap
       (local.get $6)
       (local.get $4)
       (local.get $7)
       (local.get $8)
       (local.get $9)
       (local.get $0)
       (local.get $1)
       (local.get $10)
       (local.get $11)
       (local.get $12)
       (local.get $13)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 7112157297494372352)
     )
     (block
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
      (drop
       (call $assembly/amm/amm.contract/addPairAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/amm/amm.contract/ammContract#getReserves
       (local.get $6)
       (local.get $4)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 7111862568180594064)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 16)
         (i32.const 56)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
       (local.get $3)
       (i64.const 0)
      )
      (drop
       (call $assembly/amm/amm.contract/getAmountOutAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $7
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/amm/amm.contract/ammContract#getAmountOut
       (local.get $6)
       (local.get $4)
       (local.get $7)
       (i64.load offset=8
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 7112053917471192032)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 12)
         (i32.const 57)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $assembly/amm/amm.contract/getLiquidityAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $7
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (unreachable)
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
      (call $assembly/amm/amm.contract/ammContract#getLiquidity
       (local.get $6)
       (local.get $4)
       (local.get $7)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417030564325720064)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 4)
         (i32.const 58)
        )
       )
       (i32.const 0)
      )
      (drop
       (call $assembly/amm/amm.contract/setSwapFeeAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (call $assembly/amm/amm.contract/ammContract#setSwapFee
       (local.get $6)
       (i32.load
        (local.get $3)
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
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
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
  (local.set $3
   (local.tee $9
    (call $~lib/as-chain/serializer/Decoder#unpackLength
     (local.get $2)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 46)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $3)
    (i32.const 268435455)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $1
    (call $~lib/rt/stub/__new
     (local.tee $5
      (i32.shl
       (select
        (local.get $3)
        (i32.const 8)
        (i32.gt_u
         (local.get $3)
         (i32.const 8)
        )
       )
       (i32.const 2)
      )
     )
     (i32.const 0)
    )
   )
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $6)
     (local.get $9)
    )
    (block
     (local.set $10
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
       (local.get $6)
       (i32.load offset=12
        (local.tee $1
         (i32.load offset=8
          (local.get $0)
         )
        )
       )
      )
      (block
       (if
        (i32.lt_s
         (local.get $6)
         (i32.const 0)
        )
        (unreachable)
       )
       (if
        (i32.gt_u
         (local.tee $7
          (local.tee $11
           (i32.add
            (local.get $6)
            (i32.const 1)
           )
          )
         )
         (i32.shr_u
          (local.tee $8
           (i32.load offset=8
            (local.get $1)
           )
          )
          (i32.const 2)
         )
        )
        (block
         (if
          (i32.gt_u
           (local.get $7)
           (i32.const 268435455)
          )
          (unreachable)
         )
         (call $~lib/memory/memory.fill
          (i32.add
           (local.get $8)
           (local.tee $3
            (call $~lib/rt/stub/__renew
             (local.tee $4
              (i32.load
               (local.get $1)
              )
             )
             (local.tee $5
              (select
               (local.tee $3
                (select
                 (local.tee $5
                  (i32.shl
                   (local.get $8)
                   (i32.const 1)
                  )
                 )
                 (i32.const 1073741820)
                 (i32.lt_u
                  (local.get $5)
                  (i32.const 1073741820)
                 )
                )
               )
               (local.tee $5
                (i32.shl
                 (select
                  (local.get $7)
                  (i32.const 8)
                  (i32.gt_u
                   (local.get $7)
                   (i32.const 8)
                  )
                 )
                 (i32.const 2)
                )
               )
               (i32.gt_u
                (local.get $3)
                (local.get $5)
               )
              )
             )
            )
           )
          )
          (i32.sub
           (local.get $5)
           (local.get $8)
          )
         )
         (if
          (i32.ne
           (local.get $3)
           (local.get $4)
          )
          (block
           (i32.store
            (local.get $1)
            (local.get $3)
           )
           (i32.store offset=4
            (local.get $1)
            (local.get $3)
           )
          )
         )
         (i32.store offset=8
          (local.get $1)
          (local.get $5)
         )
        )
       )
       (call $~lib/rt/common/OBJECT#set:rtId
        (local.get $1)
        (local.get $11)
       )
      )
     )
     (call $~lib/array/Array<~lib/as-chain/name/Name>#__uset
      (local.get $1)
      (local.get $6)
      (local.get $10)
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
       (local.tee $6
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
    (local.get $6)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $2)
   (local.get $6)
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
  (block $folding-inner1
   (block $folding-inner0
    (block $default
     (block $case21
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
                   (block $case7
                    (block $case5
                     (block $case4
                      (block $case3
                       (block $case0
                        (br_table $case15 $default $default $default $case18 $default $default $case21 $default $default $default $default $default $case19 $default $default $default $case20 $default $default $default $default $default $default $default $default $default $default $default $default $default $case12 $case11 $default $case17 $case16 $case10 $default $default $case13 $default $default $case14 $default $case0 $folding-inner0 $folding-inner0 $case3 $case4 $case5 $folding-inner0 $case7 $case8 $case9 $default
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
                        (call $assembly/amm/amm.contract/initializeAction#unpack
                         (local.get $0)
                         (local.get $1)
                        )
                       )
                      )
                      (return
                       (call $assembly/amm/amm.contract/addLiquidityAction#unpack
                        (local.get $0)
                        (local.get $1)
                       )
                      )
                     )
                     (return
                      (call $assembly/amm/amm.contract/removeLiquidityAction#unpack
                       (local.get $0)
                       (local.get $1)
                      )
                     )
                    )
                    (return
                     (call $assembly/amm/amm.contract/swapAction#unpack
                      (local.get $0)
                      (local.get $1)
                     )
                    )
                   )
                   (return
                    (call $assembly/amm/amm.contract/getAmountOutAction#unpack
                     (local.get $0)
                     (local.get $1)
                    )
                   )
                  )
                  (return
                   (call $assembly/amm/amm.contract/getLiquidityAction#unpack
                    (local.get $0)
                    (local.get $1)
                   )
                  )
                 )
                 (return
                  (call $assembly/amm/amm.contract/setSwapFeeAction#unpack
                   (local.get $0)
                   (local.get $1)
                  )
                 )
                )
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
                (global.set $~argumentsLength
                 (i32.const 0)
                )
                (call $~lib/as-chain/serializer/Decoder#unpack
                 (local.get $1)
                 (local.tee $2
                  (call $~lib/as-chain/asset/Asset#constructor
                   (i64.const 0)
                   (call $~lib/as-chain/asset/Symbol#constructor
                    (i32.const 4208)
                    (i32.const 0)
                   )
                  )
                 )
                )
                (call $~lib/rt/common/OBJECT#set:gcInfo2
                 (local.get $0)
                 (local.get $2)
                )
                (call $~lib/rt/common/OBJECT#set:rtId
                 (local.get $0)
                 (call $~lib/as-chain/serializer/Decoder#unpackString
                  (local.get $1)
                 )
                )
                (br $folding-inner1)
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
              (br $folding-inner1)
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
             (br $folding-inner1)
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
           (i32.const 5680)
          )
          (br $folding-inner1)
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
          (i32.const 5728)
         )
         (return
          (i32.load offset=4
           (local.get $2)
          )
         )
        )
        (return
         (call $assembly/amm/tables/pairData.table/PairDataTable#unpack
          (local.get $0)
          (local.get $1)
         )
        )
       )
       (return
        (call $assembly/amm/tables/liquidity.table/LiquidityTable#unpack
         (local.get $0)
         (local.get $1)
        )
       )
      )
      (return
       (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#unpack
        (local.get $0)
        (local.get $1)
       )
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
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $0)
      (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
       (local.get $1)
      )
     )
     (return
      (i32.const 16)
     )
    )
    (unreachable)
   )
   (return
    (call $assembly/amm/amm.contract/addPairAction#unpack
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/amm/amm.contract/addLiquidityAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (i32.load
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.load offset=4
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.load offset=8
     (local.get $0)
    )
   )
   (unreachable)
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
    (i32.add
     (call $~lib/as-chain/utils/Utils.calcPackedStringLength
      (i32.load offset=48
       (local.get $0)
      )
     )
     (call $~lib/as-chain/utils/Utils.calcPackedStringLength
      (i32.load offset=52
       (local.get $0)
      )
     )
    )
    (i32.const 66)
   )
  )
  (if
   (i32.eqz
    (i32.load offset=60
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $1
   (call $~lib/as-chain/serializer/Encoder#constructor
    (i32.add
     (local.get $1)
     (i32.const 8)
    )
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
    (local.tee $2
     (i32.load offset=4
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
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=48
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=52
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=56
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=57
    (local.get $0)
   )
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load offset=60
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
 (func $assembly/amm/amm.contract/removeLiquidityAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (i32.load
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.load offset=4
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.load offset=8
     (local.get $0)
    )
   )
   (unreachable)
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
    (i32.add
     (call $~lib/as-chain/utils/Utils.calcPackedStringLength
      (i32.load offset=40
       (local.get $0)
      )
     )
     (call $~lib/as-chain/utils/Utils.calcPackedStringLength
      (i32.load offset=44
       (local.get $0)
      )
     )
    )
    (i32.const 58)
   )
  )
  (if
   (i32.eqz
    (i32.load offset=52
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $1
   (call $~lib/as-chain/serializer/Encoder#constructor
    (i32.add
     (local.get $1)
     (i32.const 8)
    )
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
    (local.tee $2
     (i32.load offset=4
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
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=44
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=48
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=49
    (local.get $0)
   )
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load offset=52
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
 (func $assembly/amm/amm.contract/swapAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (i32.load
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.load offset=4
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.load offset=8
     (local.get $0)
    )
   )
   (unreachable)
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
    (i32.add
     (call $~lib/as-chain/utils/Utils.calcPackedStringLength
      (i32.load offset=32
       (local.get $0)
      )
     )
     (call $~lib/as-chain/utils/Utils.calcPackedStringLength
      (i32.load offset=36
       (local.get $0)
      )
     )
    )
    (i32.const 50)
   )
  )
  (if
   (i32.eqz
    (i32.load offset=44
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $1
   (call $~lib/as-chain/serializer/Encoder#constructor
    (i32.add
     (local.get $1)
     (i32.const 8)
    )
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
    (local.tee $2
     (i32.load offset=4
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
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=36
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=41
    (local.get $0)
   )
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load offset=44
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
 (func $~lib/as-chain/serializer/Packer#pack@virtual (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $folding-inner2
   (return
    (block (result i32)
     (block $folding-inner1
      (block $folding-inner0
       (block $default
        (block $case21
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
                      (block $case7
                       (block $case5
                        (block $case4
                         (block $case3
                          (block $case0
                           (br_table $case15 $default $default $default $case18 $default $default $case21 $default $default $default $default $default $case19 $default $default $default $case20 $default $default $default $default $default $default $default $default $default $default $default $default $default $case12 $case11 $default $case17 $case16 $case10 $default $default $case13 $default $default $case14 $default $case0 $folding-inner0 $folding-inner0 $case3 $case4 $case5 $folding-inner0 $case7 $case8 $case9 $default
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
                            (i32.const 12)
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
                          (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                           (local.get $1)
                           (i32.load offset=4
                            (local.get $0)
                           )
                          )
                          (br $folding-inner1)
                         )
                         (return
                          (call $assembly/amm/amm.contract/addLiquidityAction#pack
                           (local.get $0)
                          )
                         )
                        )
                        (return
                         (call $assembly/amm/amm.contract/removeLiquidityAction#pack
                          (local.get $0)
                         )
                        )
                       )
                       (return
                        (call $assembly/amm/amm.contract/swapAction#pack
                         (local.get $0)
                        )
                       )
                      )
                      (if
                       (i32.eqz
                        (i32.load
                         (local.get $0)
                        )
                       )
                       (unreachable)
                      )
                      (if
                       (i32.eqz
                        (i32.load offset=4
                         (local.get $0)
                        )
                       )
                       (unreachable)
                      )
                      (local.set $1
                       (call $~lib/as-chain/serializer/Encoder#constructor
                        (i32.const 24)
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
                        (local.tee $2
                         (i32.load offset=4
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
                      (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                       (local.get $1)
                       (i64.load offset=8
                        (local.get $0)
                       )
                      )
                      (br $folding-inner1)
                     )
                     (if
                      (i32.eqz
                       (i32.load
                        (local.get $0)
                       )
                      )
                      (unreachable)
                     )
                     (if
                      (i32.eqz
                       (i32.load offset=4
                        (local.get $0)
                       )
                      )
                      (unreachable)
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
                      (call $~lib/as-chain/serializer/Encoder#constructor
                       (i32.const 24)
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
                       (local.tee $2
                        (i32.load offset=4
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
                        (i32.load offset=8
                         (local.get $0)
                        )
                       )
                      )
                      (unreachable)
                     )
                     (br $folding-inner2)
                    )
                    (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                     (local.tee $1
                      (call $~lib/as-chain/serializer/Encoder#constructor
                       (i32.const 4)
                      )
                     )
                     (i32.load
                      (local.get $0)
                     )
                    )
                    (br $folding-inner1)
                   )
                   (return
                    (call $assembly/amm/amm.inline/TokenTransfer#pack
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
                  (br $folding-inner1)
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
                 (br $folding-inner1)
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
                (br $folding-inner1)
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
             (br $folding-inner1)
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
            (call $~lib/as-chain/serializer/Encoder#pack
             (local.get $1)
             (i32.load offset=8
              (local.get $0)
             )
            )
            (br $folding-inner1)
           )
           (return
            (call $assembly/amm/tables/pairData.table/PairDataTable#pack
             (local.get $0)
            )
           )
          )
          (return
           (call $assembly/amm/tables/liquidity.table/LiquidityTable#pack
            (local.get $0)
           )
          )
         )
         (return
          (call $assembly/amm/tables/ammConfig.table/AmmConfigTable#pack
           (local.get $0)
          )
         )
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
        (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
         (local.get $1)
         (i64.load offset=8
          (local.get $0)
         )
        )
        (br $folding-inner1)
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (i32.load
         (local.get $0)
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (i32.load offset=4
         (local.get $0)
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
      (br $folding-inner2)
     )
     (call $~lib/as-chain/serializer/Encoder#getBytes
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/IDXDB#storeEx@virtual (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (drop
   (i32.load
    (i32.sub
     (local.get $0)
     (i32.const 8)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual (param $0 i32) (result i32)
  (drop
   (i32.load
    (i32.sub
     (local.get $0)
     (i32.const 8)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#remove@virtual (param $0 i32) (param $1 i32)
  (drop
   (i32.load
    (i32.sub
     (local.get $0)
     (i32.const 8)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#updateEx@virtual (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (drop
   (i32.load
    (i32.sub
     (local.get $0)
     (i32.const 8)
    )
   )
  )
  (unreachable)
 )
 (func $~start
  (local $0 i32)
  (global.set $~lib/rt/stub/offset
   (i32.const 5756)
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
