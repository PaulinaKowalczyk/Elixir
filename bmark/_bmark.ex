defmodule TimeMeasurement do
    use Bmark

    bmark :my_sin do
        IO.puts ElixirMixProject.sin(20)
    end

    bmark :lib_sin do
    IO.puts ElixirMixProject.sinusLib(20)
  end

    bmark :my_cos, runs: 30 do
        IO.puts ElixirMixProject.cos(20)
    end

    bmark :lib_cos, runs: 30 do
    IO.puts ElixirMixProject.cosinusLib(20)
  end
end