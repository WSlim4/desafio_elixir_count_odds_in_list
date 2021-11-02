defmodule OddsInList do
  require Integer

  def call(list) do
    is_odd_integer = fn
      {result, _base} -> Integer.is_odd(result)
      :error -> false
    end

    Enum.count(list, fn
      element -> is_odd_integer.(Integer.parse(element))
    end)
  end
end
