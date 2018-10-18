package body primeraentrega with SPARK_Mode is

   function mayoresN (vector : ArrayDeEnteros; n : Entero) return Integer with  SPARK_Mode => Off is
         mayores : Integer := 0;
   begin
      for J in vector'First..vector'Last loop
         if vector(J) > n then
               mayores := mayores + 1;
         end if;        
         pragma Loop_Invariant (vector'Loop_Entry'Length = vector'Length);
      end loop;
      
      return mayores;
   end mayoresN;
   
   
   function sumaContenido (vector : ArrayDeEnteros) return Natural is
      resultado : Natural := 0;
   begin
      if Vector'Length = 0 then
         return 0;
      end if;
      
      for J in vector'First..vector'Last loop
         
         resultado := resultado + vector(J);
  
         pragma Loop_Invariant (Resultado in 0 .. J * 10);
        
      end loop;
   
      return resultado;
   end sumaContenido;
      
   procedure multArray (vector : in out ArrayDeEnteros; n : Entero) with  SPARK_Mode => Off is
   begin
      for J in vector'First..vector'Last loop
         vector(J):=vector(J)*n;
      end loop;
   end multArray;
   
   procedure restaArray (vector : in out ArrayDeEnteros; n : Entero) with  SPARK_Mode => Off is
   begin
      
     for J in vector'First..vector'Last loop
         vector(J):=vector(J)-n;
      end loop;
      
   end restaArray;
   
   function encuentraCoincidencia (vector : ArrayDeEnteros; vector2 : ArrayDeEnteros) return Boolean  with  SPARK_Mode => Off is 
   begin 
      for J in vector'First..vector'Last loop
         for I in vector2'First..vector2'Last loop
            if vector(J) = vector2(I) then
               return True;
            end if;
         end loop;
         
      end loop;
      return False;
   end encuentraCoincidencia;
     
   
      
   
end primeraentrega;
