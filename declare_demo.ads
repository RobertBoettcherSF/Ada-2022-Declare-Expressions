--  Ada 2022 topic: declare expressions (locals inside an expression).
pragma Ada_2022;

package Declare_Demo is

   function Hypotenuse (A, B : Float) return Float;
   --  Uses declare to name A2/B2 before Sqrt.

   function Midpoint (Lo, Hi : Integer) return Integer;
   --  declare expression as the whole function result.

   function Scaled_Sum (X, Y : Integer; Factor : Integer) return Integer;

   function Describe_Pair (A, B : Integer) return String;
   --  Builds a small string using declare locals.

end Declare_Demo;
