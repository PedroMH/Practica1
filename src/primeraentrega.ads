package primeraentrega with SPARK_Mode is

   type My_Int is range 0 .. 1000;

   type My_Int_Array is array (Natural range <>) of My_Int;

   function mayoresN (vector : My_Int_Array; n : My_Int) return Integer -- Cantidad de elementos mayores que n
     with Pre => vector'Length > 0,
          Post => mayoresN'Result >= 0 and mayoresN'Result <= 50;
   
   function primoPequeno (vector : My_Int_Array) return My_Int -- Calcula el numero primo mas pequeno del vector
     with Pre => existePrimo(vector) = True,
     Post => (for all X in vector'Range => primoPequeno'Result <= vector(X)) and 
             (for some X in vector'Range => primoPequeno'Result = vector(X));
   
   function sumaContenido (vector : My_Int_Array) return Integer -- Suma todo el contenido el vector
     with Pre => vector'Length > 0,
     Post => (for all X in vector'Range => Integer(vector(X)) >= sumaContenido'Result);
   
   function existePrimo (vector : My_Int_Array) return Boolean; -- Comprueba si existe al menos un primo
   
   

end primeraentrega;
