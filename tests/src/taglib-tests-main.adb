with GNAT.Exception_Traces;
with GNAT.Traceback.Symbolic;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Command_Line;
with Ada.Directories;
procedure Taglib.Tests.Main is

   procedure Test (Name : String) is
      F : constant File := File_New (Name);
      T : constant Tag := F.Get_Tag;
   begin
      Put_Line (Name);
      Put_Line ("  Title   => " & T.Title);
      Put_Line ("  Artist  => " & T.Artist);
      Put_Line ("  Album   => " & T.Album);
      Put_Line ("  Comment => " & T.Comment);
      Put_Line ("  Year    => " & T.Year'Img);
      Put_Line ("  Track   => " & T.Track'Img);
   end;
begin
   GNAT.Exception_Traces.Trace_On (GNAT.Exception_Traces.Every_Raise);
   GNAT.Exception_Traces.Set_Trace_Decorator (GNAT.Traceback.Symbolic.Symbolic_Traceback_No_Hex'Access);

   for I in 1 .. Ada.Command_Line.Argument_Count loop
      if Ada.Directories.Exists (Ada.Command_Line.Argument (I)) then
         Test (Ada.Command_Line.Argument (I));
      else
         Put_Line (Ada.Command_Line.Argument (I) & " is not found");
      end if;

   end loop;
end taglib.Tests.Main;
