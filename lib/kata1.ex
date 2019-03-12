defmodule Kata1 do
  @moduledoc """
  HTD CodeWars Kata 1:
  https://www.codewars.com/kata/550498447451fbbd7600041c
  """

  @doc """
  Given two arrays a and b write a function comp(a, b) (compSame(a, b) in Clojure) that checks whether the two arrays
  have the "same" elements, with the same multiplicities. "Same" means, here, that the elements in b are the elements
  in a squared, regardless of the order.

  ## Examples
      iex> a = [121, 144, 19, 161, 19, 144, 19, 11]
      iex> b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
      iex> Kata1.comp(a, b)
      true

      iex> a = [121, 144, 19, 161, 19, 144, 19, 11]
      iex> b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]
      iex> Kata1.comp(a, b)
      false

      iex> a = [121, 144, 19, 161, 19, 144, 19, 11]
      iex> b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]
      iex> Kata1.comp(a, b)
      false

      iex> a = []
      iex> b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]
      iex> Kata1.comp(a, b)
      false

      iex> a = [121, 144, 19, 161, 19, 144, 19, 11]
      iex> b = []
      iex> Kata1.comp(a, b)
      false

      iex> a = nil
      iex> b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]
      iex> Kata1.comp(a, b)
      false

      iex> a = [121, 144, 19, 161, 19, 144, 19, 11]
      iex> b = nil
      iex> Kata1.comp(a, b)
      false

      iex> a = []
      iex> b = []
      iex> Kata1.comp(a, b)
      true

      iex> a = [2,2,3]
      iex> b = [4,9,9]
      iex> Kata1.comp(a, b)
      false
  """


  def comp([], []),   do: true
  def comp(nil, _),   do: false
  def comp(_, nil),   do: false
  def comp(_, []),    do: false
  def comp([], _),    do: false

  def comp(a1, a2) do
    (a1 |> Enum.map(&(&1/1))) -- (a2 |> Enum.map(&(:math.sqrt(&1))))
    |> Enum.empty?
  end
end
