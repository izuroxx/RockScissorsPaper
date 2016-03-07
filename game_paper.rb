print "Podaj swoje imię: " 
name  = gets.chomp
puts ("")
puts "PAPIER, NOŻYCE, KAMIEŃ"

puts("")
puts "Zagraj ze mną #{name.downcase.capitalize}!"

puts("")

begin


	print "Czy wyświetlić zasady gry? (T/n) "
	user_ans = gets.chomp

	
	if user_ans == "T"
		puts"""
		Gra składa się z kolejnych tur. W każdej turze obydwaj gracze, na umówiony sygnał, szybko wystawiają przed siebie dłoń, pokazującą symbol papieru, kamienia lub nożyc. Gracz, który pokazał silniejszy symbol, otrzymuje jeden punkt. W przypadku pokazania dwóch takich samych symboli następuje remis – punktu brak. 

		Oto hierarchia symboli:

		* nożyce są silniejsze od papieru, ponieważ go tną,
		* kamień jest silniejszy od nożyc, ponieważ je tępi,
		* papier jest silniejszy od kamienia, ponieważ go owija.

		Gracz, który pierwszy uzyska umówioną wcześniej ilość punktów, wygrywa partię.
		"""

		sleep 1
		puts ("")
		puts "Zaczynamy"
		puts ("")
	elsif user_ans == "n"
		puts ("")
		puts "Zaczynamy!!!"
	else 
		puts "Błędna komenda"
	end
end while user_ans!="T" && user_ans!="n"


begin
	
	symbole = {"nożyce" => "papier", "papier" => "kamień", "kamień" => "nożyce" }
	losowanie = symbole.keys.shuffle.first

	symbol_input = ""
	while symbole.has_key?(symbol_input) == false


		print "Wpisz symbol: "
		symbol_input = gets.chomp


		
		if  symbole.has_key?(symbol_input) == true
			puts "Komputer wylosował: #{losowanie}"

			if symbole[symbol_input] == losowanie
				puts "Gratuluję, WYGRYWASZ!"
			elsif symbol_input == losowanie
				puts "REMIS!"
			else 
				puts "Przykro mi, PRZEGRYWASZ"
			end


		else
			puts "Wprowadzono błędny symbol"
		end
	end

	puts ("")
	print "Czy chcesz zagrać jeszcze raz? (G-graj dalej, cokolwiek innego - wyjdź) "
	user_ans_again = gets.chomp

	if user_ans_again == "G"
		puts "Zaczynamy!"
	elsif user_ans_again == "Z"
	else

	end
end while user_ans_again == "G"