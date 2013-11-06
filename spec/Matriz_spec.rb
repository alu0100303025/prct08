require "Matriz.rb"

describe Matriz do
 before :each do
    #@matriz1 = Matritz.new([1 , 2, 3],[4, 5 , 6],[7, 8, 9])

    @matriz2 = Matriz.new([[1,2],[3,4]])
    @matriz3 = Matriz.new([[5, 6],[7,8]])
  end  

describe "Suma de Matrices" do
    it "Se sumar correctamente" do
	@resultado = @matriz2 + @matriz3
      	@resultado.should == Matriz.new([[6,8],[10,12]]) 
    end
  end

describe "Multiplicacion de Matrices" do
	it "Se multiplicar correctamente" do
	@resultado = @matriz2 * @matriz3
	@resultado.should == Matriz.new([[19,22],[43,50]])
	end

end


end


