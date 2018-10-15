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

begin
   Put_Line ("********************* Test_Primeraentrega");
   Test_1;
   --Test_2;
   end test_primeraentrega;
