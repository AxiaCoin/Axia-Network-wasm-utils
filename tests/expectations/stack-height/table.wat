(module
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (import "env" "foo" (func (;0;) (type 0)))
  (func (;1;) (type 1) (param i32)
    local.get 0
    i32.const 0
    global.get 0
    i32.const 2
    i32.add
    global.set 0
    global.get 0
    i32.const 1024
    i32.gt_u
    if  ;; label = @1
      unreachable
    end
    call 2
    global.get 0
    i32.const 2
    i32.sub
    global.set 0
    drop)
  (func (;2;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add)
  (func (;3;) (type 1) (param i32)
    local.get 0
    global.get 0
    i32.const 2
    i32.add
    global.set 0
    global.get 0
    i32.const 1024
    i32.gt_u
    if  ;; label = @1
      unreachable
    end
    call 1
    global.get 0
    i32.const 2
    i32.sub
    global.set 0)
  (func (;4;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    global.get 0
    i32.const 2
    i32.add
    global.set 0
    global.get 0
    i32.const 1024
    i32.gt_u
    if  ;; label = @1
      unreachable
    end
    call 2
    global.get 0
    i32.const 2
    i32.sub
    global.set 0)
  (table (;0;) 10 funcref)
  (global (;0;) (mut i32) (i32.const 0))
  (export "i32.add" (func 4))
  (elem (;0;) (i32.const 0) func 0 3 4))