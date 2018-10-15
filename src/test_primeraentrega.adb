with Ada.Text_IO; use Ada.Text_IO;
with Assertions;  use Assertions;
with primeraentrega;      use primeraentrega;

procedure test_primeraentrega is

   procedure Test_1 is
      Msg   : constant String := "Test_1: mayoresN";
      Table : My_Int_Array (1..5) := (5, 4, 3, 2, 1);
      N : My_Int := 3;
   begin
      Assert_True (mayoresN (Table, N) = 2, Msg);
      Assert_True (mayoresN (Table, 0) = 5, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_1;
   
   

--     procedure Test_2 is
--        Msg   : constant String := "Test_2: Linear_Search";
--        Msg2  : constant String := "Test_3: Bubble_Sort";
--        TableRes : T_Table (1 .. 5) := (1, 2, 3, 4, 5);
--        Table : T_Table (1 .. 5) := (5, 4, 8, 2, 10);
--     begin
--        Assert_True (Linear_Search (Table, 2) = 4, Msg);
--        Selection_Sort (Table);
--  
--        for I in Table'Range loop
--           Put_Line (Integer'Image (Table (I)) & "Prueba");
--        end loop;
--  
--        Assert_True ( Table = TableRes, Msg2);
--     exception
--        when Assertion_Error =>
--           Put_Line (Msg & " Failed (assertion)");
--        when others =>
--           Put_Line (Msg & " Failed (exception)");
--     end Test_2;

   procedure Test_3 is
      Msg   : constant String := "Test_3: primoPequeno";
      Table : My_Int_Array (1..7) := (3, 4, 3, 2, 1, 0, 8);
   begin
      Assert_True (primoPequeno (Table) = 1, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_3;
   
   procedure Test_4 is
      Msg   : constant String := "Test_4: existePrimo";
      Table : My_Int_Array (1..7) := (3, 4, 3, 2, 1, 0, 8);
      Table2 : My_Int_Array (1..7) := (6, 4, 8, 2, 4, 0, 8);
      Table3 : My_Int_Array (1..4) := (0, 0, 0, 0);
      Table4 : My_Int_Array (1..3) := (6, 4, 1);
      --Arrays de tamaño 1???????
      --Table5 : My_Int_Array (1) := (6); 
      --Table6 : My_Int_Array (1..1) := (1);

   begin
      Assert_True (existePrimo(Table), Msg);
      Assert_False (existePrimo(Table2),Msg);
      Assert_False (existePrimo(Table3),Msg);
      Assert_True (existePrimo(Table4), Msg);
      --Assert_False (existePrimo(Table5),Msg);      
      --Assert_True (existePrimo(Table6), Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_4;


   

begin
   Put_Line ("********************* Test_Primeraentrega");
   Test_1;
   --Test_2;
   Test_3;
   Test_4;
   end test_primeraentrega;
