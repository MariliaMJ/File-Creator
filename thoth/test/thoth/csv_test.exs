defmodule Thoth.CSVTest do
  use ExUnit.Case

  alias Thoth.CSV
  
  test "should return :ok if the file is correctly written" do
    assert CSV.write_content("./test/support/thoth_csv_example.csv") == :ok
  end
end
