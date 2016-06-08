# Ivan y Mauricio
# Utiliza Pseudocodigo
# Martes 7 de Junio 2016

# Se declara la vairable students que es un arreglo multidimensional.
# El arreglo students esta dividido en cuatro arreglo (gurpos) 
# y cada arreglo (grupo) tiene cuatro arreglos (alumnos y calificaciones)
students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],
 [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
 [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
 [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]


def best_students(students) #Se define un metodo llamado best_students que recibe un parametro students
  best_students = [] ## declaracion de arreglo vacio
  x, y        = 0, 0 ## delaracion de "x" y "y" con un valor de 0

   while y < students.length ## un loop que permite entrar en grupo de los alumnos
    current_student  = students[y][x] ## asignamos a current_student el alumno a evaluar

    if current_student[1] == 10 ## si la calificacion del alumno a validar es 10 entra en arreglo vacio de best_students
      best_students.push(current_student[0]) ## pasamos al arreglo de best_students el nombre del alumno con calificacion igual a 10
    end

    if x == (students[y].length - 1) ## una ciclo condicional que permite evaluar perimte evaluar cada alumno en cada grupo de alumnos
      x = 0
      y += 1
    else # mientras x sea al students[y].length - 1  --> x +=1 hasata que se cumpla la condicion
      x += 1
    end
  end
  best_students ## regresa el resultado del arreglo de best_students
end 

p best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"] ## imprimios el metodo best_students pidiento un argumento de alumnos que es un array declarado anteriormente.
p
