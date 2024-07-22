--- Поиск значения в таблице
--
-- @module split
local find

--- Функция поиска
--
-- @param tbl (table) Таблица
-- @param value (value, function) Значение или функция-фильтр
-- @return[1] Найденное значение
-- @return[2] nil
-- @usage
  -- local tbl = { 1, 2, 3, 4, 5 }
  -- print(find(tbl, 5)) -- 5
function find(tbl, value)
  if tbl == nil then
    return nil
  end

  for _, val in pairs(tbl) do
    if type(value) == 'function' then
      if value(val) then
        return val
      end
    elseif val == value then
      return val
    end
  end

  return nil
end

return find
