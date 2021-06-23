require 'arexp.rb'
require 'rails_helper.rb'

describe ArithmeticExpression do
context "Given an empty string" do
	it "returns 0" do
		ae = ArithmeticExpression.new("")
		expect(ae.calculate).to eql 0
	end
end

context "Given 1" do
	it "returns 1" do
		ae = ArithmeticExpression.new("1")
		expect(ae.calculate).to eql 1
	end
end

context "Given 1,2" do
	it "returns 3" do
		ae = ArithmeticExpression.new("1,2")
		expect(ae.calculate).to eql 3
	end
end

fixtures :all
context "Fixture 1" do
	it "returns 6" do
		me = myexprs(:one)
		ae = ArithmeticExpression.new(me.expr_str)
		expect(ae.calculate).to eql 6
	end
end

end