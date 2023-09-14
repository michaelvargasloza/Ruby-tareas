# Inicializar una lista de tareas vacía
lista_de_tareas = []

# Función para agregar una tarea a la lista
def agregar_tarea(lista, tarea)
  lista << tarea
  puts "Tarea agregada: #{tarea}"
end

# Función para eliminar una tarea de la lista
def eliminar_tarea(lista, tarea)
  if lista.include?(tarea)
    lista.delete(tarea)
    puts "Tarea eliminada: #{tarea}"
  else
    puts "La tarea '#{tarea}' no existe en la lista."
  end
end

# Función para mostrar la lista de tareas
def mostrar_lista(lista)
  if lista.empty?
    puts "La lista de tareas está vacía."
  else
    puts "Lista de tareas:"
    lista.each_with_index do |tarea, index|
      puts "#{index + 1}. #{tarea}"
    end
  end
end

# Menú principal
loop do
  puts "\nGestión de Tareas"
  puts "1. Agregar Tarea"
  puts "2. Eliminar Tarea"
  puts "3. Mostrar Lista"
  puts "4. Salir"
  print "Seleccione una opción: "

  opcion = gets.chomp.to_i

  case opcion
  when 1
    print "Ingrese la tarea a agregar: "
    nueva_tarea = gets.chomp
    agregar_tarea(lista_de_tareas, nueva_tarea)
  when 2
    print "Ingrese la tarea a eliminar: "
    tarea_a_eliminar = gets.chomp
    eliminar_tarea(lista_de_tareas, tarea_a_eliminar)
  when 3
    mostrar_lista(lista_de_tareas)
  when 4
    puts "Saliendo del programa. ¡Hasta luego!"
    break
  else
    puts "Opción no válida. Por favor, seleccione una opción válida."
  end
end
