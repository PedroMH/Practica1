package body primeraentrega with SPARK_Mode is

   function mayoresN (vector : My_Int_Array; n : My_Int) return Integer is
         mayores : Integer := 0;
   begin
      for J in vector'First..vector'Last loop
         if vector(J) > n then
               mayores := mayores + 1;
         end if;
         
      end loop;
      return mayores;
   end mayoresN;
   
   function primoPequeno (vector : My_Int_Array) return My_Int is
      numeroPrimo : My_Int := 0;
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
   
   function sumaContenido (vector : My_Int_Array) return Integer is
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
      
   
      
   function existePrimo (vector : My_Int_Array) return Boolean is
         
   begin
      for J in vector'First..vector'Last loop
         for I in 2..vector(J) loop
         if vector(J) rem I = 0 then
           return True;
           end if;
         end loop;
         
      end loop;
      return False;     
   end existePrimo;
   
end primeraentrega;
