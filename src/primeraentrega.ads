package primeraentrega with SPARK_Mode is
   Max : constant := 4;
   
   subtype Entero is Integer range 0 .. 10;
   type ArrayDeEnteros is array (Positive range 1 .. Max) of Entero;

   function mayoresN (vector : ArrayDeEnteros; n  : Entero) return Integer -- Cantidad de elementos mayores que n
     with Pre => vector'Length > 0,
          Post => mayoresN'Result >= 0 and mayoresN'Result < Integer'Last;

   function sumaContenido (vector : ArrayDeEnteros) return Natural -- Suma todo el contenido el vector
     with Pre => 
       vector'Length > 0 and 
     (for all X in vector'Range => vector(X) <= Entero'Last),
       
     Post => (sumaContenido'Result in 0..40);
   
   procedure multArray (vector : in out ArrayDeEnteros; n : Entero) -- multiplica el vector por un numero
     with Pre => vector'Length > 0,
          Post => (for all X in vector'Range => vector(X) * n  <= Entero'Last);  
   
   procedure restaArray (vector : in out ArrayDeEnteros; n : Entero) -- resta un entero a todos los elementos del array
     with Pre => vector'Length > 0,
          Post => (for all X in vector'Range => vector(X) - n  >= Entero'First);
   
   function encuentraCoincidencia (vector : ArrayDeEnteros; vector2 : ArrayDeEnteros) return Boolean -- Encuentra dos numeros iguales
     with Pre => vector'Length > 0 and vector2'Length > 0 and vector'Length = vector2'Length;
   
   

end primeraentrega;
