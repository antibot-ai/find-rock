# Поиск значения в таблице
Модуль ищет заданное значение в таблице и возвращает это же значение, если оно было найдено.

### Параметры
- **tbl** (table) Таблица, в которой будет происходить поиск
- **value** (value, function) Значение или функция-фильтр

# Установка
### tarantool
```bash
tt rocks install --only-server=https://rocks.antibot.ru find
```
### luarocks
```bash
luarocks install --server=https://rocks.antibot.ru find
```

# Использование
```lua
local find = require('find')

local tbl = { 1, 2, 3, 4, 5 }
print(find(tbl, 5)) -- 5
```

# Генерация ldoc
```bash
ldoc -s '!new' -d ldoc lua
```

# Тестирование
```bash
luatest test/*
```
