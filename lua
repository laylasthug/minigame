-- Define a função que gera um número aleatório entre 1 e 100
function random_number()
  return math.random(1, 100)
end

-- Define a função que solicita ao usuário um número e retorna-o
function get_user_number()
  io.write("Digite um número entre 1 e 100: ")
  local user_number = tonumber(io.read())
  return user_number
end

-- Define a função que verifica se o número do usuário é igual ao número aleatório
function is_equal(user_number, random_number)
  return user_number == random_number
end

-- Define a função que verifica se o número do usuário é maior ou menor que o número aleatório
function is_higher_or_lower(user_number, random_number)
  return user_number > random_number
end

-- Define a função que exibe a mensagem de vitória
function print_win_message()
  print("Parabéns! Você acertou o número!")
end

-- Define a função que exibe a mensagem de derrota
function print_lose_message()
  print("Que pena! Você errou o número!")
end

-- Define a função que exibe a mensagem de tentativas esgotadas
function print_out_of_attempts_message()
  print("Você esgotou suas tentativas!")
end

-- Define a função que exibe a mensagem de número inválido
function print_invalid_number_message()
  print("Você digitou um número inválido!")
end

-- Define a função que exibe a mensagem de número muito alto
function print_too_high_message()
  print("Você digitou um número muito alto!")
end

-- Define a função que exibe a mensagem de número muito baixo
function print_too_low_message()
  print("Você digitou um número muito baixo!")
end

-- Define a função principal do jogo
function main()
  local random_number = random_number()
  local attempts = 10
  local user_number

  while attempts > 0 do
    user_number = get_user_number()

    if user_number == nil then
      print_invalid_number_message()
    elseif is_equal(user_number, random_number) then
      print_win_message()
      break
    elseif is_higher_or_lower(user_number, random_number) then
      attempts = attempts - 1
      if attempts == 1 then
        print_too_high_message()
      else
        print_too_high_message()
        print("Você tem " .. attempts .. " tentativa(s) restante(s).")
      end
    else
      attempts = attempts - 1
      if attempts == 1 then
        print_too_low_message()
      else
        print_too_low_message()
        print("Você tem " .. attempts .. " tentativa(s) restante(s).")
      end
    end
  end

  if attempts == 0 then
    print_out_of_attempts_message()
  end
end

-- Executa a função principal do jogo
main()
