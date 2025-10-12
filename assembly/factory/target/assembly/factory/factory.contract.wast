(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $i32_i32_i32_=>_i64 (func (param i32 i32 i32) (result i64)))
 (type $none_=>_none (func))
 (type $i64_=>_none (func (param i64)))
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
 (import "env" "db_lowerbound_i64" (func $~lib/as-chain/env/db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_end_i64" (func $~lib/as-chain/env/db_end_i64 (param i64 i64 i64) (result i32)))
 (import "env" "db_previous_i64" (func $~lib/as-chain/env/db_previous_i64 (param i32 i32) (result i32)))
 (import "env" "current_time" (func $~lib/as-chain/env/current_time (result i64)))
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
 (data (i32.const 3036) "<")
 (data (i32.const 3048) "\01\00\00\00(\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00P\00A\00I\00R\00_\00E\00X\00I\00S\00T\00S")
 (data (i32.const 3100) ",")
 (data (i32.const 3112) "\01\00\00\00\1a\00\00\00b\00a\00d\00 \00d\00b\00 \00i\00n\00d\00e\00x\00!")
 (data (i32.const 3148) "L")
 (data (i32.const 3160) "\01\00\00\00.\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00P\00A\00I\00R\00_\00N\00O\00T\00_\00F\00O\00U\00N\00D")
 (data (i32.const 3228) "L")
 (data (i32.const 3240) "\01\00\00\000\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00v\00a\00l\00u\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00!")
 (data (i32.const 3308) "L")
 (data (i32.const 3320) "\01\00\00\000\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00N\00O\00T\00_\00I\00N\00I\00T\00I\00A\00L\00I\00Z\00E\00D")
 (data (i32.const 3388) "<")
 (data (i32.const 3400) "\01\00\00\00&\00\00\00u\00p\00d\00a\00t\00e\00:\00b\00a\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 3452) "L")
 (data (i32.const 3464) "\01\00\00\00:\00\00\00g\00e\00t\00 \00p\00r\00i\00m\00a\00r\00y\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 3532) "<")
 (data (i32.const 3544) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 3596) "l")
 (data (i32.const 3608) "\01\00\00\00V\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00c\00h\00a\00n\00g\00e\00d\00 \00d\00u\00r\00i\00n\00g\00 \00u\00p\00d\00a\00t\00e\00!")
 (data (i32.const 3708) "L")
 (data (i32.const 3720) "\01\00\00\002\00\00\00F\00a\00c\00t\00o\00r\00y\00:\00 \00C\00O\00N\00F\00I\00G\00_\00N\00O\00T\00_\00F\00O\00U\00N\00D")
 (data (i32.const 3788) "<")
 (data (i32.const 3800) "\01\00\00\00\1e\00\00\00i\00d\00x\006\004\00:\00 \00b\00a\00d\00 \00t\00y\00p\00e")
 (data (i32.const 3852) "<")
 (data (i32.const 3864) "\01\00\00\00 \00\00\00i\00d\00x\006\004\00:\00 \00b\00a\00d\00 \00v\00a\00l\00u\00e")
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
  (i32.store offset=20
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
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $3
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
     (local.get $3)
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
            (local.get $3)
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
             (local.tee $4
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
                      (local.get $4)
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
  (i32.store8
   (local.get $1)
   (i32.const 0)
  )
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
  (local $3 i32)
  (local $4 i32)
  (if
   (local.get $0)
   (return)
  )
  (local.set $4
   (i32.add
    (local.tee $2
     (local.get $1)
    )
    (i32.load offset=16
     (i32.sub
      (local.get $2)
      (i32.const 20)
     )
    )
   )
  )
  (local.set $0
   (i32.const 1)
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $2)
     (local.get $4)
    )
    (block $while-break|0
     (local.set $0
      (if (result i32)
       (i32.lt_u
        (local.tee $3
         (i32.load16_u
          (local.get $2)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (br_if $while-break|0
         (i32.eqz
          (local.get $3)
         )
        )
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $3)
         (i32.const 2048)
        )
        (i32.add
         (local.get $0)
         (i32.const 2)
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $2)
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
              (local.get $2)
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (local.set $2
             (i32.add
              (local.get $2)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.add
          (local.get $0)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__new
    (local.get $0)
    (i32.const 0)
   )
  )
  (call $~lib/string/String.UTF8.encodeUnsafe
   (local.get $1)
   (i32.shr_u
    (i32.load offset=16
     (i32.sub
      (local.get $1)
      (i32.const 20)
     )
    )
    (i32.const 1)
   )
   (local.get $0)
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
   (block $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual (result i32)
    (local.set $0
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
    (block $folding-inner2
     (block $folding-inner1
      (block $folding-inner0
       (block $default
        (block $case14
         (block $case13
          (block $case12
           (block $case11
            (block $case10
             (block $case9
              (block $case1
               (br_table $case11 $default $default $default $case12 $default $default $default $default $default $default $default $case13 $default $default $default $case14 $default $default $default $default $default $default $default $default $default $default $default $default $default $default $case10 $case9 $default $folding-inner0 $case1 $folding-inner0 $folding-inner0 $folding-inner1 $folding-inner1 $folding-inner2 $folding-inner1 $folding-inner2 $default
                (i32.sub
                 (i32.load
                  (i32.sub
                   (local.get $1)
                   (i32.const 8)
                  )
                 )
                 (i32.const 5)
                )
               )
              )
              (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
               (call $assembly/factory/factory.contract/createPairAction#unpack
                (local.get $1)
                (local.get $0)
               )
              )
             )
             (call $~lib/as-chain/name/Name#set:N
              (local.get $1)
              (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
               (local.tee $1
                (call $~lib/as-chain/serializer/Decoder#constructor
                 (local.get $0)
                )
               )
              )
             )
             (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
              (i32.load offset=4
               (local.get $1)
              )
             )
            )
            (call $~lib/as-chain/serializer/Decoder#unpack
             (local.tee $0
              (call $~lib/as-chain/serializer/Decoder#constructor
               (local.get $0)
              )
             )
             (i32.load
              (local.get $1)
             )
            )
            (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
             (i32.load offset=4
              (local.get $0)
             )
            )
           )
           (call $~lib/as-chain/name/Name#set:N
            (local.get $1)
            (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
             (call $~lib/as-chain/serializer/Decoder#constructor
              (local.get $0)
             )
            )
           )
           (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
            (i32.const 8)
           )
          )
          (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
           (call $assembly/factory/tables/pairs.table/PairsTable#unpack
            (local.get $1)
            (local.get $0)
           )
          )
         )
         (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
          (call $assembly/factory/tables/feesettings.table/FeeSettingsTable#unpack
           (local.get $1)
           (local.get $0)
          )
         )
        )
        (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
         (call $assembly/factory/tables/config.table/ConfigTable#unpack
          (local.get $1)
          (local.get $0)
         )
        )
       )
       (unreachable)
      )
      (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
       (call $assembly/factory/factory.contract/initializeAction#unpack
        (local.get $1)
        (local.get $0)
       )
      )
     )
     (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
      (call $assembly/factory/factory.contract/setFeeToAction#unpack
       (local.get $1)
       (local.get $0)
      )
     )
    )
    (call $assembly/factory/factory.contract/getFeeToAction#unpack
     (local.get $1)
     (local.get $0)
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
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/pairs.table/PairsTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
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
     (i32.const 37)
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
 (func $~lib/array/ensureCapacity (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (if
   (i32.lt_u
    (i32.shr_u
     (local.tee $5
      (i32.load offset=8
       (local.get $0)
      )
     )
     (i32.const 3)
    )
    (i32.const 1)
   )
   (block
    (local.set $2
     (local.tee $9
      (i32.load
       (local.get $0)
      )
     )
    )
    (if
     (i32.gt_u
      (local.tee $4
       (select
        (local.tee $1
         (select
          (local.tee $1
           (i32.shl
            (local.get $5)
            (i32.const 1)
           )
          )
          (i32.const 1073741820)
          (i32.lt_u
           (local.get $1)
           (i32.const 1073741820)
          )
         )
        )
        (i32.const 64)
        (i32.gt_u
         (local.get $1)
         (i32.const 64)
        )
       )
      )
      (i32.const 1073741804)
     )
     (unreachable)
    )
    (if
     (i32.eqz
      (select
       (i32.eqz
        (i32.and
         (local.tee $2
          (i32.sub
           (local.get $2)
           (i32.const 16)
          )
         )
         (i32.const 15)
        )
       )
       (i32.const 0)
       (local.get $2)
      )
     )
     (unreachable)
    )
    (local.set $1
     (i32.eq
      (global.get $~lib/rt/stub/offset)
      (i32.add
       (local.get $2)
       (local.tee $7
        (i32.load
         (local.tee $8
          (i32.sub
           (local.get $2)
           (i32.const 4)
          )
         )
        )
       )
      )
     )
    )
    (local.set $3
     (i32.sub
      (i32.and
       (i32.add
        (local.tee $6
         (i32.add
          (local.get $4)
          (i32.const 16)
         )
        )
        (i32.const 19)
       )
       (i32.const -16)
      )
      (i32.const 4)
     )
    )
    (if
     (i32.gt_u
      (local.get $6)
      (local.get $7)
     )
     (if
      (local.get $1)
      (block
       (if
        (i32.gt_u
         (local.get $6)
         (i32.const 1073741820)
        )
        (unreachable)
       )
       (call $~lib/rt/stub/maybeGrowMemory
        (i32.add
         (local.get $2)
         (local.get $3)
        )
       )
       (call $~lib/rt/common/BLOCK#set:mmInfo
        (local.get $8)
        (local.get $3)
       )
      )
      (block
       (call $~lib/memory/memory.copy
        (local.tee $1
         (call $~lib/rt/stub/__alloc
          (select
           (local.get $3)
           (local.tee $1
            (i32.shl
             (local.get $7)
             (i32.const 1)
            )
           )
           (i32.lt_u
            (local.get $1)
            (local.get $3)
           )
          )
         )
        )
        (local.get $2)
        (local.get $7)
       )
       (local.set $2
        (local.get $1)
       )
      )
     )
     (if
      (local.get $1)
      (block
       (global.set $~lib/rt/stub/offset
        (i32.add
         (local.get $2)
         (local.get $3)
        )
       )
       (call $~lib/rt/common/BLOCK#set:mmInfo
        (local.get $8)
        (local.get $3)
       )
      )
     )
    )
    (call $~lib/rt/common/OBJECT#set:rtSize
     (i32.sub
      (local.get $2)
      (i32.const 4)
     )
     (local.get $4)
    )
    (call $~lib/memory/memory.fill
     (i32.add
      (local.get $5)
      (local.tee $1
       (i32.add
        (local.get $2)
        (i32.const 16)
       )
      )
     )
     (i32.sub
      (local.get $4)
      (local.get $5)
     )
    )
    (if
     (i32.ne
      (local.get $1)
      (local.get $9)
     )
     (block
      (i32.store
       (local.get $0)
       (local.get $1)
      )
      (i32.store offset=4
       (local.get $0)
       (local.get $1)
      )
     )
    )
    (i32.store offset=8
     (local.get $0)
     (local.get $4)
    )
   )
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
        (i32.const 3120)
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
 (func $assembly/factory/factory.contract/Factory#createPair (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (call $~lib/as-chain/action/requireAuth
   (local.get $3)
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (local.get $1)
    (local.get $2)
   )
   (i32.const 2912)
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
   (i32.const 2992)
  )
  (local.set $4
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
     (local.set $4
      (local.get $2)
     )
     (local.get $1)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eqz
    (call $assembly/factory/factory.contract/Factory#findPair
     (local.get $0)
     (local.get $4)
     (local.get $2)
    )
   )
   (i32.const 3056)
  )
  (local.set $5
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/factory/tables/pairs.table/PairsTable>#get:availablePrimaryKey
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (local.set $6
   (call $~lib/as-chain/env/current_time)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
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
   (local.get $1)
   (call $~lib/as-chain/time/Microseconds#constructor
    (local.get $6)
   )
  )
  (local.set $1
   (call $assembly/factory/tables/pairs.table/PairsTable#constructor
    (local.get $5)
    (local.get $4)
    (local.get $2)
    (local.get $3)
    (i32.wrap_i64
     (i64.div_s
      (i64.load
       (i32.load
        (local.get $1)
       )
      )
      (i64.const 1000000)
     )
    )
   )
  )
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#find
      (i32.load
       (local.tee $0
        (i32.load offset=12
         (local.get $0)
        )
       )
      )
      (local.tee $5
       (i64.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 1200)
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/pairs.table/PairsTable>#store
   (i32.load
    (local.get $0)
   )
   (local.get $1)
   (local.get $2)
  )
  (if
   (i64.ge_u
    (local.get $5)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
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
   (i32.const 3248)
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
   (i32.const 3168)
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
   (i32.const 3168)
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
   (i32.const 3328)
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
   (i32.const 3408)
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
      (i32.const 3472)
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
   (i32.const 3616)
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
 (func $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/config.table/ConfigTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
    (local.get $1)
   )
   (i32.const 3408)
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
      (i32.const 3472)
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
   (i32.const 3616)
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
  (local $1 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/factory/tables/feesettings.table/FeeSettingsTable>#isOk
    (local.tee $1
     (call $~lib/as-chain/mi/MultiIndex<assembly/factory/tables/config.table/ConfigTable>#find
      (i32.load
       (local.tee $0
        (i32.load offset=20
         (local.get $0)
        )
       )
      )
      (i64.const 0)
     )
    )
   )
   (i32.const 3728)
  )
  (i32.load offset=8
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
 (func $assembly/factory/factory.contract/createPairAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $6)
   (local.get $2)
  )
  (local.set $7
   (call $assembly/factory/factory.contract/Factory#constructor
    (i32.const 0)
    (local.get $3)
    (local.get $4)
    (local.get $6)
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
  (local.set $5
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
            (i32.const 39)
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
        (local.get $5)
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
            (i32.const 12)
            (i32.const 40)
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
         (local.tee $6
          (local.get $3)
         )
        )
        (local.get $5)
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
      (local.set $4
       (local.get $3)
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=4
          (local.get $6)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $6
         (i32.load offset=8
          (local.get $6)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/factory/factory.contract/Factory#createPair
       (local.get $7)
       (local.get $4)
       (local.get $3)
       (local.get $6)
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
            (i32.const 41)
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
        (local.get $5)
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
            (i32.const 42)
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
        (local.get $5)
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
            (i32.const 43)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $5)
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
            (i32.const 44)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $5)
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
         (i32.const 45)
        )
        (local.get $5)
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
            (i32.const 46)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $5)
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
         (i32.const 47)
        )
        (local.get $5)
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
  (block $folding-inner2
   (block $folding-inner1
    (block $folding-inner0
     (block $default
      (block $case14
       (block $case13
        (block $case12
         (block $case11
          (block $case10
           (block $case9
            (block $case8
             (block $case6
              (block $case1
               (br_table $case11 $default $default $default $case12 $default $default $default $default $default $default $default $case13 $default $default $default $case14 $default $default $default $default $default $default $default $default $default $default $default $default $default $default $case10 $case9 $default $folding-inner0 $case1 $folding-inner0 $folding-inner0 $folding-inner1 $folding-inner1 $case6 $folding-inner1 $case8 $default
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
              (call $~lib/as-chain/serializer/Encoder#pack
               (local.get $1)
               (local.get $0)
              )
              (br $folding-inner2)
             )
             (return
              (call $assembly/factory/factory.contract/getFeeToAction#pack)
             )
            )
            (return
             (call $assembly/factory/factory.contract/getFeeToAction#pack)
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
           (br $folding-inner2)
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
          (br $folding-inner2)
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
    (call $~lib/as-chain/serializer/Encoder#pack
     (local.get $1)
     (local.get $0)
    )
    (br $folding-inner2)
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
     (i32.const 3808)
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
       (i32.const 38)
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
     (i32.const 3872)
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
   (i32.const 3916)
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
