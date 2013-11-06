require "Matriz.rb"

describe Matriz do
 before :each do
    #@matriz1 = Matritz.new([1 , 2, 3],[4, 5 , 6],[7, 8, 9])

    @matriz2 = Matritz.new([1,2],[3,4])
    @matriz3 = Matritz.new([5, 6],[7,8])
    @dimensiones=[[@matriz2.length, @matriz2[0].length],[@matriz3.length, @matriz3[0].length]]
    @filas_final = dimensiones[0][0]
    @columnas_final = dimensiones[1][1]
    @resultado = Array.new(filas_final){Array.new(columnas_final, 0)}
  end  

describe "Suma de Matrices" do
    it "Se sumar correctamente" do
	@matriz2 + @matriz3
      	@resultado.should =~ [[5,6],[7,8]] 
    end
  end

describe "Multiplicacion de Matrices" do
	it "Se multiplicar correctamente" do
	@matriz2 * @matriz3
	@resultado.should =~ [[19,22],[43,50]] 
	end

end


end


