defmodule Username do
  def sanitize(~c"") do
    ~c""
  end
  
  def sanitize([head | tail]) do
    case head do
      head when (head >= ?a and head <= ?z) or head == ?_ -> [head] ++ sanitize(tail)
      ?ä -> ~c"ae" ++ sanitize(tail)
      ?ö -> ~c"oe" ++ sanitize(tail)
      ?ü -> ~c"ue" ++ sanitize(tail)
      ?ß -> ~c"ss" ++ sanitize(tail)
      _ -> sanitize(tail)
    end
  end
end
