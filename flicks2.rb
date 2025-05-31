#def sirve para definir un método.
#Se usa snake_case para escribir los nombres de los métodos.
#end se usa para terminar de definir el método.
#La indentación estandar en ruby es de 2 espacios.
#no es necesario usar "return" ya que viene implícito en el lenguaje.
#Se puede quitar puts dentro de método e invocarlo fuera con el nombre del método,
#el resultado es el mismo.
#el método siempre me va a regresar el último valor registrado,
#por ejemplo, si añado esta operación (6 + 5) después del string,
#el método regresará 11 y obviará el string.        
#def movie_info 
#  "Goonies has a rank of 10"
#end    
#Puedo asignar un default a un parametro con = el cual solo se usará.
#si no lo ingreso de antemano.
#Para que no haya problemas con el orden en el cual ingreso los parametros,
#uso los "Keyword Params" osea agrego (:) al final del nombre del param,
#así me aseguro de que cada param tenga el orden correcto sin importar el valor.
def emojis(emoji: "🤠", number:)
  emoji * number
end    

def movie_info(title: , rank: title.length) 
  stars = emojis(emoji: "⭐", number: rank)
  "#{title.upcase} has a rank of #{rank}: #{stars}"
end

puts movie_info(title: "Goonies", rank: 10)
puts movie_info(rank: 9, title: "Ghostbusters")

movie_title = "Seven"
#Aqui debería haber creado la variable movie_rank para almacenar el valor,
#pero preferí usar el lenght de movie_title como prueba
#al final quité el movie_title.lenght para que no haya problemas con,
#los keyword params
puts movie_info(title: movie_title)

movie_title_2 = "Goldfinger"
movie_rank_2 = 3
puts movie_info(title: movie_title_2, rank: movie_rank_2)