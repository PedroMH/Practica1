package body primeraentrega with SPARK_Mode is

   function mayoresN (vector : ArrayDeEnteros; n : Entero) return Integer is
         mayores : Integer := 0;
   begin
      for J in vector'First..vector'Last loop
         if vector(J) > n then
               mayores := mayores + 1;
         end if;
         
      end loop;
      return mayores;
   end mayoresN;
   
   function primoPequeno (vector : ArrayDeEnteros) return Entero is
      numeroPrimo : Entero := 0;
   begin
      for J in vector'First..vector'Last loop
         for I in 2..vector(J) loop
         if vector(J) rem I = 0 then
               if numeroPrimo > vector(J) then
                  numeroPrimo := vector(J);
               end if;
               
           end if;
         end loop;
         
      end loop;  
      return numeroPrimo;
      
   end primoPequeno;
   
   function sumaContenido (vector : ArrayDeEnteros) return Integer is
      resultado : Integer := 0;
      --J : Integer := vector'First;
   begin
      for J in vector'First..vector'Last loop
         resultado := resultado + Integer(vector(J));
         pragma Loop_Invariant (for all X in vector'First..J =>Integer(vector(X))<=resultado);
         --hace falta un cast para compararlos
      end loop;
      return resultado;
      end sumaContenido;
      
   
      
   function existePrimo (vector : ArrayDeEnteros) return Boolean is
   --esta mal esto, si el primo no es el primero no lo detecta      
   begin
      for J in vector'First..vector'Last loop
         for I in 2..vector(J) loop
           if vector(J) rem I = 0 then
               --en vez de retornar true tiene que pasar al siguiente elemento
               --cuando se cumple que no es primo
           return True;
           end if;
         end loop;
         
      end loop;
      return False;     
   end existePrimo;
   
end primeraentrega;
