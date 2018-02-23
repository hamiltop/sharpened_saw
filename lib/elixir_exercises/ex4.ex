defmodule Ex4 do
  @moduledoc """
    In this exercise you will be required to work with Elixir Macros, Structs, and Protocols.
  """

  @doc """
    Execute the first expression. If true, return. Otherwise, execute second expression.

    Example:
    ```
    short_circuit(true, IO.puts "This should not be called")
    ```
    Should return true and nothing should be printed.
  """
  defmacro short_circuit(expr1, expr2) do
    # Add Code Here
  end

  @doc """
    Replace all instances of addition with multiplication in the given expresssion.

    Example:
    ```
    media_math(1 + 2 + 3 + 4 + 5)
    ```
    Should return 120

    For the record, this is an example of something you *can* do, but not an example of something
    you should do.
  """
  defmacro media_math(expr) do
    # Add Code Here
  end

  defmodule Company do
    defstruct employees: [], name: nil, sector: nil

    @doc """
      Provide an implementation for the String.Chars protocol. The string output for a company
      with name BrightRoll, employees Foo, Bar, and Baz and sector Adtech should look like:

      `BrightRoll (composed of Foo, Bar, Baz) is a Adtech company`

      http://elixir-lang.org/docs/stable/elixir/String.Chars.html
    """
    defimpl String.Chars, for: Company do
      # Add Code Here
    end

    @doc """
      Provide an implementation for the Enumerable protocol. By implementing the enumerable
      protocol, all the functions in the Enum module are available to use.

      In the case of a Company, enumeration should happen on the employees of the company.
      Some examples, given a company of three employees (Foo, Bar, and Baz):

      ```
      Enum.sort(company) == ["Bar", "Baz", "Foo"]
      Enum.reverse(company) == ["Baz", "Bar", "Foo"]
      Enum.to_list(company) == ["Foo", "Bar", "Baz"]
      Enum.map(company, fn(x) -> size(x) end) == [3, 3, 3]
      ```

      http://elixir-lang.org/docs/stable/elixir/Enumerable.html
    """
    defimpl Enumerable, for: Company do
      def reduce(_,     {:halt, acc}, _fun),   do: {:halted, acc}
      def reduce(list,  {:suspend, acc}, fun), do: {:suspended, acc, &reduce(list, &1, fun)}
      def reduce([],    {:cont, acc}, _fun),   do: {:done, acc}
      def reduce([h|t], {:cont, acc}, fun),    do: reduce(t, fun.(h, acc), fun)
      def reduce(%Company{employees: employees}, {:cont, acc}, fun),    do: reduce(employees, {:cont, acc}, fun)
    end
  end
end
