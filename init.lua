--- Поиск значения в таблице
--

--- Функция поиска
--
-- @param t Таблица
-- @param v Значение
-- @return[1] Найденное значение
-- @return[2] nil
local function find(t, v)
  if t == nil then
    return nil
  end

  for _, _v in pairs(t) do
    if type(v) == 'function' then
      if v(_v) then
        return _v
      end
    elseif _v == v then
      return _v
    end
  end

  return nil
end

--- find
-- @table export
return find
