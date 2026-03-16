class ADF
  def initialize(cadeia)
      @cadeia = cadeia
      @indice = 0
      @max = cadeia.size
      @total = 0 #var p somar os valores
      @erro = false 
  end

  def incrementar_total(val)
    puts "#{@total} + #{val} = #{@total + val}"
    @total += val
  end
  
  # pega apenas um caracter
  def proximo
    if @indice == @max
        "" #retorna vazio
    else
        puts "próximo símbolo: " + @cadeia[@indice]
        @cadeia[@indice] #retorna o prox simbolo 
    end
  end
  
  def iniciar
    estado = "q0"
    puts "cadeia: " + @cadeia 
    puts "Máquina iniciou no estado: " + estado + "\n\n"
      
    loop do
      case [proximo, estado]

      ### TRANSIÇÕES ###
      # iniciais
      in ["M", "q0"]
        incrementar_total(1000)
        estado = "qM"
        
      in ["C", "q0"]
        incrementar_total(100)
        estado = "qC"

      in ["D", "q0"]
        incrementar_total(500)
        estado = "qD"

      in ["X", "q0"]
        incrementar_total(10)
        estado = "qX"

      in ["L", "q0"]
        incrementar_total(50)
        estado = "qL"

      in ["I", "q0"]
        incrementar_total(1)
        estado = "qI"

      in ["V", "q0"]
        incrementar_total(5)
        estado = "qV"

      # milhares
      in ["M", "qM"]
        incrementar_total(1000)
        estado = "qMM"

      in ["C", "qM"]
        incrementar_total(100)
        estado = "qC"

      in ["D", "qM"]
        incrementar_total(500)
        estado = "qD"

      in ["X", "qM"]
        incrementar_total(10)
        estado = "qX"

      in ["L", "qM"]
        incrementar_total(50)
        estado = "qL"

      in ["I", "qM"]
        incrementar_total(1)
        estado = "qI"

      in ["V", "qM"]
        incrementar_total(5)
        estado = "qV"
        
      
      in ["M", "qMM"]
        incrementar_total(1000)
        estado = "qMMM"

      in ["C", "qMM"]
        incrementar_total(100)
        estado = "qC"

      in ["D", "qMM"]
        incrementar_total(500)
        estado = "qD"

      in ["X", "qMM"]
        incrementar_total(10)
        estado = "qX"

      in ["L", "qMM"]
        incrementar_total(50)
        estado = "qL"

      in ["I", "qMM"]
        incrementar_total(1)
        estado = "qI"

      in ["V", "qMM"]
        incrementar_total(5)
        estado = "qV"


      in ["C", "qMMM"]
        incrementar_total(100)
        estado = "qC"

      in ["D", "qMMM"]
        incrementar_total(500)
        estado = "qD"

      in ["X", "qMMM"]
        incrementar_total(10)
        estado = "qX"

      in ["L", "qMMM"]
        incrementar_total(50)
        estado = "qL"

      in ["I", "qMMM"]
        incrementar_total(1)
        estado = "qI"

      in ["V", "qMMM"]
        incrementar_total(5)
        estado = "qV"


      # centenas
      in ["C", "qC"]
        incrementar_total(100)
        estado = "qCC"

      in ["D", "qC"]
        incrementar_total(300)
        estado = "qCD"
        
      in ["M", "qC"]
        incrementar_total(800)
        estado = "qCM"

      in ["X", "qC"]
        incrementar_total(10)
        estado = "qX"

      in ["L", "qC"]
        incrementar_total(50)
        estado = "qL"

      in ["I", "qC"]
        incrementar_total(1)
        estado = "qI"

      in ["V", "qC"]
        incrementar_total(5)
        estado = "qV"


      in ["C", "qCC"]
        incrementar_total(100)
        estado = "qCCC"

      in ["X", "qCC"]
        incrementar_total(10)
        estado = "qX"

      in ["L", "qCC"]
        incrementar_total(50)
        estado = "qL"

      in ["I", "qCC"]
        incrementar_total(1)
        estado = "qI"

      in ["V", "qCC"]
        incrementar_total(5)
        estado = "qV"

        
      in ["X", "qCCC"]
        incrementar_total(10)
        estado = "qX"

      in ["L", "qCCC"]
        incrementar_total(50)
        estado = "qL"

      in ["I", "qCCC"]
        incrementar_total(1)
        estado = "qI"

      in ["V", "qCCC"]
        incrementar_total(5)
        estado = "qV"


      in ["X", "qCD"]
        incrementar_total(10)
        estado = "qX"
      
      in ["L", "qCD"]
        incrementar_total(50)
        estado = "qL"

      in ["I", "qCD"]
        incrementar_total(1)
        estado = "qI"

      in ["V", "qCD"]
        incrementar_total(5)
        estado = "qV"


      in ["X", "qCM"]
        incrementar_total(10)
        estado = "qX"
      
      in ["L", "qCM"]
        incrementar_total(50)
        estado = "qL"

      in ["I", "qCM"]
        incrementar_total(1)
        estado = "qI"

      in ["V", "qCM"]
        incrementar_total(5)
        estado = "qV"

      
      in ["C", "qD"]
        incrementar_total(100)
        estado = "qC"
      
      in ["X", "qD"]
        incrementar_total(10)
        estado = "qX"
      
      in ["L", "qD"]
        incrementar_total(50)
        estado = "qL"
      
      in ["I", "qD"]
        incrementar_total(1)
        estado = "qI"
      
      in ["V", "qD"]
        incrementar_total(5)
        estado = "qV"
      


      in ["C", "qDC"]
        incrementar_total(100)
        estado = "qCC"
      
      in ["X", "qDC"]
        incrementar_total(10)
        estado = "qX"
      
      in ["L", "qDC"]
        incrementar_total(50)
        estado = "qL"
      
      in ["I", "qDC"]
        incrementar_total(1)
        estado = "qI"
      
      in ["V", "qDC"]
        incrementar_total(5)
        estado = "qV"


      # dezenas
      in ["X", "qX"]
        incrementar_total(10)
        estado = "qXX"
      
      in ["L", "qX"]
        incrementar_total(30)
        estado = "qXL"
      
      in ["C", "qX"]
        incrementar_total(80)
        estado = "qXC"
      
      in ["I", "qX"]
        incrementar_total(1)
        estado = "qI"
      
      in ["V", "qX"]
        incrementar_total(5)
        estado = "qV"

      
      in ["X", "qXX"]
        incrementar_total(10)
        estado = "qXXX"
        
      in ["I", "qXX"]
        incrementar_total(1)
        estado = "qI"
      
      in ["V", "qXX"]
        incrementar_total(5)
        estado = "qV"
      
        
      in ["I", "qXXX"]
        incrementar_total(1)
        estado = "qI"
      
      in ["V", "qXXX"]
        incrementar_total(5)
        estado = "qV"

      
      in ["I", "qXL"]
        incrementar_total(1)
        estado = "qI"

      in ["V", "qXL"]
        incrementar_total(5)
        estado = "qV"


      in ["I", "qXC"]
        incrementar_total(1)
        estado = "qI"

      in ["V", "qXC"]
        incrementar_total(5)
        estado = "qV"


      in ["X", "qL"]
        incrementar_total(10)
        estado = "qLX"
      
      in ["I", "qL"]
        incrementar_total(1)
        estado = "qI"

      in ["V", "qL"]
        incrementar_total(5)
        estado = "qV"


      in ["X", "qLX"]
        incrementar_total(10)
        estado = "qXX"
      
      in ["I", "qLX"]
        incrementar_total(1)
        estado = "qI"

      in ["V", "qLX"]
        incrementar_total(5)
        estado = "qV"

      # unidades
      in ["I", "qI"]
        incrementar_total(1)
        estado = "qII"
        
      in ["V", "qI"]
        incrementar_total(3)
        estado = "qIV"
        
      in ["X", "qI"]
        incrementar_total(8)
        estado = "qIX"

        
      in ["I", "qII"]
        incrementar_total(1)
        estado = "qIII"

        
      in ["I", "qV"]
        incrementar_total(1)
        estado = "qVI"


      in ["I", "qVI"]
        incrementar_total(1)
        estado = "qII"
      
      ### ESTADOS DE ACEITACAO ###
      in ["", "qM"]
        puts "Aceito 😀"
        break
      in ["", "qMM"]
        puts "Aceito 😀"
        break
      in ["", "qMMM"]
        puts "Aceito 😀"
        break
      in ["", "qC"]
        puts "Aceito 😀"
        break
      in ["", "qCC"]
        puts "Aceito 😀"
        break
      in ["", "qCCC"]
        puts "Aceito 😀"
        break
      in ["", "qCD"]
        puts "Aceito 😀"
        break
      in ["", "qCM"]
        puts "Aceito 😀"
        break
      in ["", "qD"]
        puts "Aceito 😀"
        break
      in ["", "qDC"]
        puts "Aceito 😀"
        break
      in ["", "qX"]
        puts "Aceito 😀"
        break
      in ["", "qXX"]
        puts "Aceito 😀"
        break
      in ["", "qXXX"]
        puts "Aceito 😀"
        break
      in ["", "qXL"]
        puts "Aceito 😀"
        break
      in ["", "qXC"]
        puts "Aceito 😀"
        break
      in ["", "qL"]
        puts "Aceito 😀"
        break
      in ["", "qLX"]
        puts "Aceito 😀"
        break
      in ["", "qI"]
        puts "Aceito 😀"
        break
      in ["", "qII"]
        puts "Aceito 😀"
        break
      in ["", "qIII"]
        puts "Aceito 😀"
        break
      in ["", "qIV"]
        puts "Aceito 😀"
        break
      in ["", "qIX"]
        puts "Aceito 😀"
        break
      in ["", "qV"]
        puts "Aceito 😀"
        break
      in ["", "qVI"]
        puts "Aceito 😀"
        break
      else
        puts "Erro"
        @erro = true
        break
      end
  
      @indice += 1
      puts "mudou para o estado " + estado + "\n\n"
    end
    
    if !@erro
      puts "resultado traduzido: #{@total}\n\n\n"
    end
    
  end
end

loop = true
while loop
  print "insira uma cadeia para ser validada (0 para sair): "
  input = gets.chomp.upcase
  if input == '0'
    loop = false
  end
  if loop
    adf = ADF.new(input)
    adf.iniciar
  end
end
