defmodule ExTweet.StringHelper do
    @moduledoc """
    Module responsible to ensure the strings read from file are well formated and enforce the business rules
    """

    @doc """
    This function will take a string as a parameter, retrieve inline strings, trim them,
    and filter the long ones (more than 140 characters). Finally it will return a random line.

    ## Examples

        iex> ExTweet.StringHelper.filter_string("Some line ")
        "Some line"
    """
    def filter_string(str) do
        str
        |> String.split("\n")
        |> Enum.map(&String.trim/1)
        |> Enum.filter(&String.length(&1) <= 140)
        |> randomize_enum
    end

    def randomize_enum([]), do: ""

    def randomize_enum(list) do
        Enum.random(list)
    end
end