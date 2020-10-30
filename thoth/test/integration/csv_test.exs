defmodule Thoth.CSVIntegrationTest do
  use ExUnit.Case

  alias Thoth.CSV
  
  test "should write content to the specified file" do
    CSV.write_content("./test/support/thoth_csv_example.csv")

    {:ok, content} = File.read("./test/support/thoth_csv_example.csv")

    assert is_binary(content)
  end
end
