-- test/find-test.lua
local luatest = require('luatest')
local g = luatest.group('translit')

-- Функция поиска
local find = require('lua.find.init')

-- Тесты
g.test_find = function()
  local tbl = { 1, 2, 3, 4, 5 }
  luatest.assert_equals(find(tbl, 5), 5)
end

g.test_find_filter = function()
  local tbl = {
    {
      name = 'Anton',
      age = 30
    },
    {
      name = 'Eugene',
      age = 40
    },
    {
      name = 'Bob',
      age = 25
    },
    {
      name = 'Vladimir',
      age = 35
    }
  }

  local function filter(person)
    return person.age > 30
  end

  local person = find(tbl, filter)

  luatest.assert_equals(person.name, 'Eugene')
  luatest.assert_equals(person.age, 40)
end
