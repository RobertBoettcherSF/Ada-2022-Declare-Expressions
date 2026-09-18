pragma Ada_2022;

with Ada.Numerics.Elementary_Functions;

package body Declare_Demo is

   package EF renames Ada.Numerics.Elementary_Functions;

   function Hypotenuse (A, B : Float) return Float is
   begin
      return
        (declare
            A2 : constant Float := A * A;
            B2 : constant Float := B * B;
         begin
            EF.Sqrt (A2 + B2));
   end Hypotenuse;

   function Midpoint (Lo, Hi : Integer) return Integer is
     (declare
         Span : constant Integer := Hi - Lo;
      begin
         Lo + Span / 2);

   function Scaled_Sum (X, Y : Integer; Factor : Integer) return Integer is
   begin
      return
        (declare
            S : constant Integer := X + Y;
         begin
            S * Factor);
   end Scaled_Sum;

   function Describe_Pair (A, B : Integer) return String is
     (declare
         Sum  : constant Integer := A + B;
         Diff : constant Integer := A - B;
      begin
         "sum=" & Sum'Image & " diff=" & Diff'Image);

end Declare_Demo;
