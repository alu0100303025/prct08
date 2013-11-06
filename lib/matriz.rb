class Matriz
   attr_reader :filas,:columnas, :valor, :matriz, :m1, :m2
   attr_writer :resultado
   include Comparable

def muestra_matriz(matriz)
	i=0
	rango = 0...matriz[0].length
	rango_txt = rango.to_a
	print "\n   #{rango_txt.join("  ")}\n"
	for fila in matriz
		puts "#{i} #{fila}"
		i += 1
	end
end

def hacer_matriz(filas,columnas, valor)
	array_devolucion = Array.new(filas){Array.new(columnas, valor)}
end

def multiplica_matrices(m1,m2)
        dimensiones=[[m1.length, m1[0].length],[m2.length, m2[0].length]]
        filas_final = dimensiones[0][0]
        columnas_final = dimensiones[1][1]
        resultado = Array.new(filas_final){Array.new(columnas_final, 0)}
        for i in 0...dimensiones[0][0]
                for j in 0...dimensiones[1][1]
                        temp = Array.new(dimensiones[0][0],0)
                        for k in 0...dimensiones[0][1]
                                val1 = m1[i][k]
                                val2 = m2[k][j]
                                temp[k] += val1 * val2
                        end
                        resultado[i][j] = temp.reduce(:+)
                end
        end
        return resultado
end


def suma_matrices(m1,m2)
	dimensiones=[[m1.length, m1[0].length],[m2.length, m2[0].length]]
	filas_final = dimensiones[0][0]
	columnas_final = dimensiones[1][1]
	resultado = Array.new(filas_final){Array.new(columnas_final, 0)}
	for i in 0...dimensiones[0][0]
		for j in 0...dimensiones[1][1]
			resultado[i][j] = m1[i][j] + m2[i][j]
		end 
	end
	return resultado
end
end
