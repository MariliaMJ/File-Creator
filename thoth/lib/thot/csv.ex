defmodule Thoth.CSV do
	@header "INVESTMENT DATE, SHARES PURCHASED, CASH PAID, INVESTOR"

	def write_content(file_path) do
		content = produce_rows()

		File.write(file_path, content)
	end

	defp create_row() do
		investment_date = Date.utc_today()
		shares_purchased = Enum.random([70, 80, 60, 50, 40, 100])
		cash_paid = Enum.random([100.0, 120.0, 343.0, 799.0,568.00])
		investor = Enum.random(["Sandy Lerner", "Don Valentine", "Ann Miura-Ko", "Sandy Lerner", "Fred Wilson", "Sally Andberg", "Wilson Smith"])
		
		"#{investment_date}, #{shares_purchased}, #{cash_paid}, #{investor}\n"
	end

	defp produce_rows() do
		row = [create_row()]
		produce_rows(row, 1)
	end
	defp produce_rows(rows, 1000) do
		rows
		|> List.insert_at(0, @header)
		|> Enum.join()
	end
	defp produce_rows(rows, acc) do
		rows = rows ++ [create_row()]

		produce_rows(rows, acc + 1) 
	end
end
