require_relative "../money_format"


describe MoneyFormat do
  describe "#format number" do

    it "return number" do
      money_format = MoneyFormat.new(number: "1000")
      expect(money_format.print_number).to eq"1000"
    end

    it "format number 1000" do
      money_format = MoneyFormat.new(number: "1000")
      expect(money_format.format_number).to eq"1,000"
    end

    it "format number 1000000000" do
      money_format = MoneyFormat.new(number: "1000000000")
      expect(money_format.format_number).to eq"1,000,000,000"
    end

  end

end
