config({
  extension: "lua",
  overrides: <<~INIT_LUA
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
INIT_LUA
})

test "lua, global function", <<~END
-function foo()█
+function foo()
+  
+end
END

test "lua, local function", <<~END
-local function foo()█
+local function foo()
+  
+end
END

test "lua, var function", <<~END
-local foo = function()█
+local foo = function()
+  
+end
END

test "lua, table value function", <<~END
-function M.foo()█
+function M.foo()
+  
+end
END

test "lua, do block", <<~END
-do█
+do
+  
+end
END

test "lua, while loop", <<~END
-while true do█
+while true do
+  
+end
END

test "lua, for loop generic clause", <<~END
-for var=exp1,exp2,exp3 do█
+for var=exp1,exp2,exp3 do
+  
+end
END

test "lua, for loop numeric clause", <<~END
-for i=10,1,-1 do print(i) do█
+for i=10,1,-1 do print(i) do
+  
+end
END

test "lua, if stmt", <<~END
-if foo then█
+if foo then
+  
+end
END

test "lua, nested global function", <<~END
-function foobarbaz()
-  function foo()█
-end
+function foobarbaz()
+  function foo()
+    
+  end
+end
END

test "lua, nested local function", <<~END
-function foobarbaz()
-  local function foo()█
-end
+function foobarbaz()
+  local function foo()
+    
+  end
+end
END

test "lua, nested var function", <<~END
-function foobarbaz()
-  local foo = function()█
-end
+function foobarbaz()
+  local foo = function()
+    
+  end
+end
END

test "lua, nested table value function", <<~END
-function foobarbaz()
-  function M.foo()█
-end
+function foobarbaz()
+  function M.foo()
+    
+  end
+end
END

test "lua, nested do block", <<~END
-function foobarbaz()
-  do█
-end
+function foobarbaz()
+  do
+    
+  end
+end
END

test "lua, nested while loop", <<~END
-function foobarbaz()
-  while true do█
-end
+function foobarbaz()
+  while true do
+    
+  end
+end
END

test "lua, nested for loop generic clause", <<~END
-function foobarbaz()
-  for var=exp1,exp2,exp3 do█
-end
+function foobarbaz()
+  for var=exp1,exp2,exp3 do
+    
+  end
+end
END

test "lua, nested for loop numeric clause", <<~END
-function foobarbaz()
-  for i=10,1,-1 do print(i) do█
-end
+function foobarbaz()
+  for i=10,1,-1 do print(i) do
+    
+  end
+end
END

test "lua, nested if stmt", <<~END
-function foobarbaz()
-  if foo then█
-end
+function foobarbaz()
+  if foo then
+    
+  end
+end
END
