with Ada.Text_IO; use Ada.Text_IO;
with Assertions;  use Assertions;
with primeraentrega;      use primeraentrega;

procedure test_primeraentrega is

   procedure Test_1 is
      Msg   : constant String := "Test: mayoresN";
      Table : ArrayDeEnteros := (5, 4, 3, 2);
      N : Entero := 3;
   begin
      Assert_True (mayoresN (Table, N) = 2, Msg);
      Assert_True (mayoresN (Table, Entero(0))=5, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_1;
   
   procedure Test_2 is
      Msg   : constant String := "Test_1: sumaContenido";
      Table : ArrayDeEnteros := (5, 4, 3, 2);
      N : Entero := 3;
   begin
      Assert_True (sumaContenido (Table) = 14, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_2;
   
   procedure Test_3 is
      Msg   : constant String := "Test: multArray";
      Table : ArrayDeEnteros := (5, 4, 3, 2);
      TableRes : ArrayDeEnteros := (10, 8, 6, 4);
      N : Entero := 2;
   begin
      multArray (Table, N);
      Assert_True (Table = TableRes, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_3;
   
   procedure Test_4 is
      Msg   : constant String := "Test: restaArray";
      Table : ArrayDeEnteros := (5, 4, 3, 2);
      TableRes : ArrayDeEnteros := (4, 3, 2, 1);
      N : Entero := 1;
   begin
      restaArray (Table, N);
      Assert_True (Table = TableRes, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_4;
   
   procedure Test_5 is
      Msg   : constant String := "Test: encuentraCoincidencia";
      Table : ArrayDeEnteros := (5, 4, 3, 2);
      Table2 : ArrayDeEnteros := (9, 10, 3, 10);
   begin
      Assert_True (encuentraCoincidencia (Table, Table2), Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_5;


   

begin
   Put_Line ("********************* Test_Primeraentrega");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   end test_primeraentrega;
