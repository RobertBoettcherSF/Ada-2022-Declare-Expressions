pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Declare_Demo; use Declare_Demo;

procedure Tests is
begin
   Assert (abs (Hypotenuse (3.0, 4.0) - 5.0) < 1.0E-5);
   Put_Line ("PASS Hypotenuse declare expression");

   Assert (Midpoint (0, 10) = 5);
   Assert (Midpoint (3, 4) = 3);
   Put_Line ("PASS Midpoint");

   Assert (Scaled_Sum (2, 3, 4) = 20);
   Put_Line ("PASS Scaled_Sum");

   declare
      S : constant String := Describe_Pair (7, 2);
   begin
      Assert (S'Length > 0);
      Assert (S (S'First .. S'First + 3) = "sum=");
   end;
   Put_Line ("PASS Describe_Pair string declare");

   Put_Line ("All Declare Expressions topic tests passed.");
end Tests;
