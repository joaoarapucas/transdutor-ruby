class ADF
  def initialize(cadeia)
      @cadeia = cadeia
      @indice = 0
      @max = cadeia.size
      @total = "" #var p imprimir o valor final (só pra facilitar a leitura)
      @erro = false 
  end

  def incrementar_total(val)
    puts "valor impresso: " + val
    @total << val
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
        incrementar_total("")
        estado = "qM"
        
      in ["C", "q0"]
        incrementar_total("")
        estado = "qC"

      in ["D", "q0"]
        incrementar_total("")
        estado = "qD"

      in ["X", "q0"]
        incrementar_total("")
        estado = "qX"

      in ["L", "q0"]
        incrementar_total("")
        estado = "qL"

      in ["I", "q0"]
        incrementar_total("")
        estado = "qI"

      in ["V", "q0"]
        incrementar_total("")
        estado = "qV"

      # milhares
      in ["M", "qM"]
        incrementar_total("")
        estado = "qMM"

      in ["C", "qM"]
        incrementar_total("1")
        estado = "qC"

      in ["D", "qM"]
        incrementar_total("1")
        estado = "qD"

      in ["X", "qM"]
        incrementar_total("10")
        estado = "qX"

      in ["L", "qM"]
        incrementar_total("10")
        estado = "qL"

      in ["I", "qM"]
        incrementar_total("100")
        estado = "qI"

      in ["V", "qM"]
        incrementar_total("100")
        estado = "qV"
        
      
      in ["M", "qMM"]
        incrementar_total("")
        estado = "qMMM"

      in ["C", "qMM"]
        incrementar_total("2")
        estado = "qC"

      in ["D", "qMM"]
        incrementar_total("2")
        estado = "qD"

      in ["X", "qMM"]
        incrementar_total("20")
        estado = "qX"

      in ["L", "qMM"]
        incrementar_total("20")
        estado = "qL"

      in ["I", "qMM"]
        incrementar_total("200")
        estado = "qI"

      in ["V", "qMM"]
        incrementar_total("200")
        estado = "qV"


      in ["C", "qMMM"]
        incrementar_total("3")
        estado = "qC"

      in ["D", "qMMM"]
        incrementar_total("3")
        estado = "qD"

      in ["X", "qMMM"]
        incrementar_total("30")
        estado = "qX"

      in ["L", "qMMM"]
        incrementar_total("30")
        estado = "qL"

      in ["I", "qMMM"]
        incrementar_total("300")
        estado = "qI"

      in ["V", "qMMM"]
        incrementar_total("300")
        estado = "qV"


      # centenas
      in ["C", "qC"]
        incrementar_total("")
        estado = "qCC"

      in ["D", "qC"]
        incrementar_total("")
        estado = "qCD"
        
      in ["M", "qC"]
        incrementar_total("")
        estado = "qCM"

      in ["X", "qC"]
        incrementar_total("1")
        estado = "qX"

      in ["L", "qC"]
        incrementar_total("1")
        estado = "qL"

      in ["I", "qC"]
        incrementar_total("10")
        estado = "qI"

      in ["V", "qC"]
        incrementar_total("10")
        estado = "qV"


      in ["C", "qCC"]
        incrementar_total("")
        estado = "qCCC"

      in ["X", "qCC"]
        puts "2"
        incrementar_total("2")
        estado = "qX"

      in ["L", "qCC"]
        incrementar_total("2")
        estado = "qL"

      in ["I", "qCC"]
        incrementar_total("20")
        estado = "qI"

      in ["V", "qCC"]
        incrementar_total("20")
        estado = "qV"

        
      in ["X", "qCCC"]
        incrementar_total("3")
        estado = "qX"

      in ["L", "qCCC"]
        incrementar_total("3")
        estado = "qL"

      in ["I", "qCCC"]
        incrementar_total("30")
        estado = "qI"

      in ["V", "qCCC"]
        incrementar_total("30")
        estado = "qV"


      in ["X", "qCD"]
        incrementar_total("4")
        estado = "qX"
      
      in ["L", "qCD"]
        incrementar_total("4")
        estado = "qL"

      in ["I", "qCD"]
        incrementar_total("40")
        estado = "qI"

      in ["V", "qCD"]
        incrementar_total("40")
        estado = "qV"


      in ["X", "qCM"]
        incrementar_total("9")
        estado = "qX"
      
      in ["L", "qCM"]
        incrementar_total("9")
        estado = "qL"

      in ["I", "qCM"]
        incrementar_total("90")
        estado = "qI"

      in ["V", "qCM"]
        incrementar_total("90")
        estado = "qV"

      
      in ["C", "qD"]
        incrementar_total("")
        estado = "qDC"
      
      in ["X", "qD"]
        incrementar_total("5")
        estado = "qX"
      
      in ["L", "qD"]
        incrementar_total("5")
        estado = "qL"
      
      in ["I", "qD"]
        incrementar_total("50")
        estado = "qI"
      
      in ["V", "qD"]
        incrementar_total("50")
        estado = "qV"

      
      in ["C", "qDC"]
        incrementar_total("")
        estado = "qDCC"
      
      in ["X", "qDC"]
        incrementar_total("6")
        estado = "qX"
      
      in ["L", "qDC"]
        incrementar_total("6")
        estado = "qL"
      
      in ["I", "qDC"]
        incrementar_total("60")
        estado = "qI"
      
      in ["V", "qDC"]
        incrementar_total("60")
        estado = "qV"


      in ["C", "qDCC"]
        incrementar_total("")
        estado = "qDCCC"
      
      in ["X", "qDCC"]
        incrementar_total("7")
        estado = "qX"
      
      in ["L", "qDCC"]
        incrementar_total("7")
        estado = "qL"
      
      in ["I", "qDCC"]
        incrementar_total("70")
        estado = "qI"
      
      in ["V", "qDCC"]
        incrementar_total("70")
        estado = "qV"


      in ["X", "qDCCC"]
        incrementar_total("8")
        estado = "qX"
      
      in ["L", "qDCCC"]
        incrementar_total("8")
        estado = "qL"
      
      in ["I", "qDCCC"]
        incrementar_total("80")
        estado = "qI"
      
      in ["V", "qDCCC"]
        incrementar_total("80")
        estado = "qV"

      # dezenas
      in ["X", "qX"]
        incrementar_total("")
        estado = "qXX"
      
      in ["L", "qX"]
        incrementar_total("")
        estado = "qXL"
      
      in ["C", "qX"]
        incrementar_total("")
        estado = "qXC"
      
      in ["I", "qX"]
        incrementar_total("1")
        estado = "qI"
      
      in ["V", "qX"]
        incrementar_total("1")
        estado = "qV"

      
      in ["X", "qXX"]
        incrementar_total("")
        estado = "qXXX"
        
      in ["I", "qXX"]
        incrementar_total("2")
        estado = "qI"
      
      in ["V", "qXX"]
        incrementar_total("2")
        estado = "qV"
      
        
      in ["I", "qXXX"]
        incrementar_total("3")
        estado = "qI"
      
      in ["V", "qXXX"]
        incrementar_total("3")
        estado = "qV"

      
      in ["I", "qXL"]
        incrementar_total("4")
        estado = "qI"

      in ["V", "qXL"]
        incrementar_total("4")
        estado = "qV"


      in ["I", "qXC"]
        incrementar_total("9")
        estado = "qI"

      in ["V", "qXC"]
        incrementar_total("9")
        estado = "qV"


      in ["X", "qL"]
        incrementar_total("")
        estado = "qLX"
      
      in ["I", "qL"]
        incrementar_total("5")
        estado = "qI"

      in ["V", "qL"]
        incrementar_total("5")
        estado = "qV"


      in ["X", "qLX"]
        incrementar_total("")
        estado = "qLXX"
      
      in ["I", "qLX"]
        incrementar_total("6")
        estado = "qI"

      in ["V", "qLX"]
        incrementar_total("6")
        estado = "qV"

      
      in ["X", "qLXX"]
        incrementar_total("")
        estado = "qLXXX"
      
      in ["I", "qLXX"]
        incrementar_total("7")
        estado = "qI"

      in ["V", "qLXX"]
        incrementar_total("7")
        estado = "qV"


      in ["I", "qLXXX"]
        incrementar_total("8")
        estado = "qI"

      in ["V", "qLXXX"]
        incrementar_total("8")
        estado = "qV"


      # unidades
      in ["I", "qI"]
        incrementar_total("")
        estado = "qII"
        
      in ["V", "qI"]
        incrementar_total("")
        estado = "qIV"
        
      in ["X", "qI"]
        incrementar_total("")
        estado = "qIX"

        
      in ["I", "qII"]
        incrementar_total("")
        estado = "qIII"

        
      in ["I", "qV"]
        incrementar_total("")
        estado = "qVI"


      in ["I", "qVI"]
        incrementar_total("")
        estado = "qVII"

      in ["I", "qVII"]
        incrementar_total("")
        estado = "qVIII"
      
      ### ESTADOS DE ACEITACAO ###
      in ["", "qM"]
        incrementar_total("1000")
        puts "Aceito 😀"
        break
      in ["", "qMM"]
        incrementar_total("2000")
        puts "Aceito 😀"
        break
      in ["", "qMMM"]
        incrementar_total("3000")
        puts "Aceito 😀"
        break
      in ["", "qC"]
        incrementar_total("100")
        puts "Aceito 😀"
        break
      in ["", "qCC"]
        incrementar_total("200")
        puts "Aceito 😀"
        break
      in ["", "qCCC"]
        incrementar_total("300")
        puts "Aceito 😀"
        break
      in ["", "qCD"]
        incrementar_total("400")
        puts "Aceito 😀"
        break
      in ["", "qCM"]
        incrementar_total("900")
        puts "Aceito 😀"
        break
      in ["", "qD"]
        incrementar_total("500")
        puts "Aceito 😀"
        break
      in ["", "qDC"]
        incrementar_total("600")
        puts "Aceito 😀"
        break
      in ["", "qDCC"]
        incrementar_total("700")
        puts "Aceito 😀"
        break
      in ["", "qDCCC"]
        incrementar_total("800")
        puts "Aceito 😀"
        break
      in ["", "qX"]
        incrementar_total("10")
        puts "Aceito 😀"
        break
      in ["", "qXX"]
        incrementar_total("20")
        puts "Aceito 😀"
        break
      in ["", "qXXX"]
        incrementar_total("30")
        puts "Aceito 😀"
        break
      in ["", "qXL"]
        incrementar_total("40")
        puts "Aceito 😀"
        break
      in ["", "qXC"]
        incrementar_total("90")
        puts "Aceito 😀"
        break
      in ["", "qL"]
        incrementar_total("50")
        puts "Aceito 😀"
        break
      in ["", "qLX"]
        incrementar_total("60")
        puts "Aceito 😀"
        break
      in ["", "qLXX"]
        incrementar_total("70")
        puts "Aceito 😀"
        break
      in ["", "qLXXX"]
        incrementar_total("80")
        puts "Aceito 😀"
        break
      in ["", "qI"]
        incrementar_total("1")
        puts "Aceito 😀"
        break
      in ["", "qII"]
        incrementar_total("2")
        puts "Aceito 😀"
        break
      in ["", "qIII"]
        incrementar_total("3")
        puts "Aceito 😀"
        break
      in ["", "qIV"]
        incrementar_total("4")
        puts "Aceito 😀"
        break
      in ["", "qIX"]
        incrementar_total("9")
        puts "Aceito 😀"
        break
      in ["", "qV"]
        incrementar_total("5")
        puts "Aceito 😀"
        break
      in ["", "qVI"]
        incrementar_total("6")
        puts "Aceito 😀"
        break
      in ["", "qVII"]
        incrementar_total("7")
        puts "Aceito 😀"
        break
      in ["", "qVIII"]
        incrementar_total("8")
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
      puts "resultado final impresso: #{@total}\n\n\n"
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
