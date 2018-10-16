package primeraentrega with SPARK_Mode is

   type Entero is range 0 .. 1000;
   type ArrayDeEnteros is array (Natural range <>) of Entero;

   function mayoresN (vector : ArrayDeEnteros; n : Entero) return Integer -- Cantidad de elementos mayores que n
     with Pre => vector'Length > 0,
          Post => mayoresN'Result >= 0;
   
   function primoPequeno (vector : ArrayDeEnteros) return Entero -- Encuentra el numero primo mas pequeno del vector
     with Pre => existePrimo(vector) = True,
     Post => (for all X in vector'Range => primoPequeno'Result <= vector(X)) and 
             (for some X in vector'Range => primoPequeno'Result = vector(X));
   
   function sumaContenido (vector : ArrayDeEnteros) return Integer -- Suma todo el contenido el vector
     with Pre => vector'Length > 0,
     Post => (for all X in vector'Range => Integer(vector(X)) >= sumaContenido'Result);
   
   function existePrimo (vector : ArrayDeEnteros) return Boolean; -- Comprueba si existe al menos un primo
   
   

end primeraentrega;
