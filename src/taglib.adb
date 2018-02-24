pragma Ada_2012;
with Interfaces.C.Strings;
with Interfaces.C; use Interfaces.C;
package body taglib is


--  unsupported macro: TAGLIB_C_EXPORT __attribute__ ((visibility("default")))
--  unsupported macro: BOOL int
   type TagLib_File is record
      Dummy : aliased Int;  -- /usr/include/taglib/tag_c.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, TagLib_File);  -- /usr/include/taglib/tag_c.h:65

   --  skipped anonymous struct anon_0

   type TagLib_Tag is record
      Dummy : aliased Int;  -- /usr/include/taglib/tag_c.h:66
   end record;
   pragma Convention (C_Pass_By_Copy, TagLib_Tag);  -- /usr/include/taglib/tag_c.h:66
   --  skipped anonymous struct anon_1

   type TagLib_AudioProperties is record
      Dummy : aliased Int;  -- /usr/include/taglib/tag_c.h:67
   end record;
   pragma Convention (C_Pass_By_Copy, TagLib_AudioProperties);  -- /usr/include/taglib/tag_c.h:67


   --  skipped anonymous struct anon_2

   procedure Taglib_Set_Strings_Unicode (Unicode : Int);  -- /usr/include/taglib/tag_c.h:74
   pragma Import (C, Taglib_Set_Strings_Unicode, "taglib_set_strings_unicode");

   procedure Taglib_Set_String_Management_Enabled (Management : Int);  -- /usr/include/taglib/tag_c.h:82
   pragma Import (C, Taglib_Set_String_Management_Enabled, "taglib_set_string_management_enabled");

--     procedure Taglib_Free (Pointer : System.Address);  -- /usr/include/taglib/tag_c.h:87
--     pragma Import (C, Taglib_Free, "taglib_free");

   type TagLib_File_Type is
     (TagLib_File_MPEG,
      TagLib_File_OggVorbis,
      TagLib_File_FLAC,
      TagLib_File_MPC,
      TagLib_File_OggFlac,
      TagLib_File_WavPack,
      TagLib_File_Speex,
      TagLib_File_TrueAudio,
      TagLib_File_MP4,
      TagLib_File_ASF) with Warnings => off;
   pragma Convention (C, TagLib_File_Type);  -- /usr/include/taglib/tag_c.h:104

   function Taglib_File_New (Filename : Interfaces.C.Strings.Chars_Ptr) return access TagLib_File;  -- /usr/include/taglib/tag_c.h:113
   pragma Import (C, Taglib_File_New, "taglib_file_new");

   function Taglib_File_New_Type (Filename : Interfaces.C.Strings.Chars_Ptr; C_Type : TagLib_File_Type) return access TagLib_File;  -- /usr/include/taglib/tag_c.h:119
   pragma Import (C, Taglib_File_New_Type, "taglib_file_new_type");

   procedure Taglib_File_Free (File : access TagLib_File);  -- /usr/include/taglib/tag_c.h:124
   pragma Import (C, Taglib_File_Free, "taglib_file_free");

   function Taglib_File_Is_Valid (File : access TagLib_File) return Int;  -- /usr/include/taglib/tag_c.h:131
   pragma Import (C, Taglib_File_Is_Valid, "taglib_file_is_valid");

   function Taglib_File_Tag (File : access TagLib_File) return access TagLib_Tag;  -- /usr/include/taglib/tag_c.h:137
   pragma Import (C, Taglib_File_Tag, "taglib_file_tag");

   function Taglib_File_Audioproperties (File : access TagLib_File) return access TagLib_AudioProperties;  -- /usr/include/taglib/tag_c.h:143
   pragma Import (C, Taglib_File_Audioproperties, "taglib_file_audioproperties");

   function Taglib_File_Save (File : access TagLib_File) return Int;  -- /usr/include/taglib/tag_c.h:148
   pragma Import (C, Taglib_File_Save, "taglib_file_save");

   function Taglib_Tag_Title (Tag : access TagLib_Tag) return Interfaces.C.Strings.Chars_Ptr;  -- /usr/include/taglib/tag_c.h:160
   pragma Import (C, Taglib_Tag_Title, "taglib_tag_title");

   function Taglib_Tag_Artist (Tag : access TagLib_Tag) return Interfaces.C.Strings.Chars_Ptr;  -- /usr/include/taglib/tag_c.h:168
   pragma Import (C, Taglib_Tag_Artist, "taglib_tag_artist");

   function Taglib_Tag_Album (Tag : access TagLib_Tag) return Interfaces.C.Strings.Chars_Ptr;  -- /usr/include/taglib/tag_c.h:176
   pragma Import (C, Taglib_Tag_Album, "taglib_tag_album");

   function Taglib_Tag_Comment (Tag : access TagLib_Tag) return Interfaces.C.Strings.Chars_Ptr;  -- /usr/include/taglib/tag_c.h:184
   pragma Import (C, Taglib_Tag_Comment, "taglib_tag_comment");

   function Taglib_Tag_Genre (Tag : access TagLib_Tag) return Interfaces.C.Strings.Chars_Ptr;  -- /usr/include/taglib/tag_c.h:192
   pragma Import (C, Taglib_Tag_Genre, "taglib_tag_genre");

   function Taglib_Tag_Year (Tag : access TagLib_Tag) return Unsigned;  -- /usr/include/taglib/tag_c.h:197
   pragma Import (C, Taglib_Tag_Year, "taglib_tag_year");

   function Taglib_Tag_Track (Tag : access TagLib_Tag) return Unsigned;  -- /usr/include/taglib/tag_c.h:202
   pragma Import (C, Taglib_Tag_Track, "taglib_tag_track");

   procedure Taglib_Tag_Set_Title (Tag : access TagLib_Tag; Title : Interfaces.C.Strings.Chars_Ptr);  -- /usr/include/taglib/tag_c.h:209
   pragma Import (C, Taglib_Tag_Set_Title, "taglib_tag_set_title");

   procedure Taglib_Tag_Set_Artist (Tag : access TagLib_Tag; Artist : Interfaces.C.Strings.Chars_Ptr);  -- /usr/include/taglib/tag_c.h:216
   pragma Import (C, Taglib_Tag_Set_Artist, "taglib_tag_set_artist");

   procedure Taglib_Tag_Set_Album (Tag : access TagLib_Tag; Album : Interfaces.C.Strings.Chars_Ptr);  -- /usr/include/taglib/tag_c.h:223
   pragma Import (C, Taglib_Tag_Set_Album, "taglib_tag_set_album");

   procedure Taglib_Tag_Set_Comment (Tag : access TagLib_Tag; Comment : Interfaces.C.Strings.Chars_Ptr);  -- /usr/include/taglib/tag_c.h:230
   pragma Import (C, Taglib_Tag_Set_Comment, "taglib_tag_set_comment");

   procedure Taglib_Tag_Set_Genre (Tag : access TagLib_Tag; Genre : Interfaces.C.Strings.Chars_Ptr);  -- /usr/include/taglib/tag_c.h:237
   pragma Import (C, Taglib_Tag_Set_Genre, "taglib_tag_set_genre");

   procedure Taglib_Tag_Set_Year (Tag : access TagLib_Tag; Year : Unsigned);  -- /usr/include/taglib/tag_c.h:242
   pragma Import (C, Taglib_Tag_Set_Year, "taglib_tag_set_year");

   procedure Taglib_Tag_Set_Track (Tag : access TagLib_Tag; Track : Unsigned);  -- /usr/include/taglib/tag_c.h:247
   pragma Import (C, Taglib_Tag_Set_Track, "taglib_tag_set_track");

   procedure Taglib_Tag_Free_Strings;  -- /usr/include/taglib/tag_c.h:252
   pragma Import (C, Taglib_Tag_Free_Strings, "taglib_tag_free_strings");

   function Taglib_Audioproperties_Length (AudioProperties : access TagLib_AudioProperties) return Int;  -- /usr/include/taglib/tag_c.h:261
   pragma Import (C, Taglib_Audioproperties_Length, "taglib_audioproperties_length");

   function Taglib_Audioproperties_Bitrate (AudioProperties : access TagLib_AudioProperties) return Int;  -- /usr/include/taglib/tag_c.h:266
   pragma Import (C, Taglib_Audioproperties_Bitrate, "taglib_audioproperties_bitrate");

   function Taglib_Audioproperties_Samplerate (AudioProperties : access TagLib_AudioProperties) return Int;  -- /usr/include/taglib/tag_c.h:271
   pragma Import (C, Taglib_Audioproperties_Samplerate, "taglib_audioproperties_samplerate");

   function Taglib_Audioproperties_Channels (AudioProperties : access TagLib_AudioProperties) return Int;  -- /usr/include/taglib/tag_c.h:276
   pragma Import (C, Taglib_Audioproperties_Channels, "taglib_audioproperties_channels");

   type TagLib_ID3v2_Encoding is
     (TagLib_ID3v2_Latin1,
      TagLib_ID3v2_UTF16,
      TagLib_ID3v2_UTF16BE,
      TagLib_ID3v2_UTF8) with Warnings => Off;
   pragma Convention (C, TagLib_ID3v2_Encoding);  -- /usr/include/taglib/tag_c.h:287

   procedure Taglib_Id3v2_Set_Default_Text_Encoding (Encoding : TagLib_ID3v2_Encoding);  -- /usr/include/taglib/tag_c.h:293
   pragma Import (C, Taglib_Id3v2_Set_Default_Text_Encoding, "taglib_id3v2_set_default_text_encoding");



   -------------------------
   -- set_strings_unicode --
   -------------------------

   procedure Set_Strings_Unicode (unicode : Boolean) is
   begin
      Taglib_Set_Strings_Unicode (Boolean'Pos(Unicode));
   end Set_Strings_Unicode;

   -----------------------------------
   -- set_string_management_enabled --
   -----------------------------------

   procedure Set_String_Management_Enabled (management : Boolean) is
   begin
      Taglib_Set_String_Management_Enabled (Boolean'Pos(Management));
   end Set_String_Management_Enabled;

   --------------
   -- file_new --
   --------------

   function File_New (Filename : String) return File is
      L_Filename : Interfaces.C.Strings.Chars_Ptr;
   begin
      L_Filename := Interfaces.C.Strings.New_String (Filename);
      return Ret : File do
         Ret.Dummy := Taglib_File_New (L_Filename);
         Interfaces.C.Strings.Free (L_Filename);
      end return;
   end File_New;

   --------------
   -- file_new --
   --------------

   function File_New (Filename : String; C_Type : File_Type) return File is
      L_Filename : Interfaces.C.Strings.Chars_Ptr;
   begin
      L_Filename := Interfaces.C.Strings.New_String (Filename);
      return Ret : File do
         Ret.Dummy := Taglib_File_New_Type (L_Filename,TagLib_File_Type'Val(File_Type'Pos(C_Type)));
         Interfaces.C.Strings.Free (L_Filename);
      end return;
   end File_New;


   -------------------
   -- file_is_valid --
   -------------------

   function Is_Valid (F :  File) return Boolean is
   begin
      return ( if F.Dummy = null
              then
                 False
              else
                 Taglib_File_Is_Valid(F.Dummy) /= 0);
   end Is_Valid;

   --------------
   -- file_tag --
   --------------

   function Get_Tag (F :  File'Class) return  Tag is
   begin
      return Ret : Tag do
         Ret.Dummy := Taglib_File_Tag (F.Dummy);
      end return;
   end Get_Tag;

   --------------------------
   -- file_audioproperties --
   --------------------------

   function Get_Audioproperties (F :  File'Class) return  AudioProperties is
   begin
      return Ret : AudioProperties do
         Ret.Dummy := Taglib_File_Audioproperties (F.Dummy);
      end return;
   end Get_Audioproperties;

   ---------------
   -- file_save --
   ---------------

   procedure  Save (F : File)  is

   begin
      if Taglib_File_Save (F.Dummy) /= 0 then
         raise Program_Error with "unable to save";
      end if;
   end Save;
use all type Interfaces.C.Strings.Chars_Ptr;
   -----------
   -- title --
   -----------

   function Title (T :  Tag) return String is
      Ret :  Interfaces.C.Strings.Chars_Ptr := Taglib_Tag_Title (T.dummy);
   begin
      if Ret /= Interfaces.C.Strings.Null_Ptr then
         return R : constant String := Interfaces.C.Strings.Value (Ret) do
            Free (Ret);
         end return;
      else
         return "";
      end if;
   end Title;

   ------------
   -- artist --
   ------------

   function Artist (T :  Tag) return String is
      Ret : Interfaces.C.Strings.Chars_Ptr := Taglib_Tag_Artist (T.dummy);
   begin
      if Ret /= Interfaces.C.Strings.Null_Ptr then
         return R : constant String := Interfaces.C.Strings.Value (Ret) do
            Free (Ret);
         end return;
      else
         return "";
      end if;
   end Artist;

   -----------
   -- album --
   -----------

   function Album (T :  Tag) return String is
      Ret : Interfaces.C.Strings.Chars_Ptr := Taglib_Tag_Album  (T.dummy);
   begin
      if Ret /= Interfaces.C.Strings.Null_Ptr then
         return R : constant String := Interfaces.C.Strings.Value (Ret) do
            Free (Ret);
         end return;
      else
         return "";
      end if;
   end Album;

   -------------
   -- comment --
   -------------

   function Comment (T :  Tag) return String is
      Ret : Interfaces.C.Strings.Chars_Ptr := Taglib_Tag_Comment  (T.dummy);
   begin
      if Ret /= Interfaces.C.Strings.Null_Ptr then
         return R : constant String := Interfaces.C.Strings.Value (Ret) do
            Free (Ret);
         end return;
      else
         return "";
      end if;
   end Comment;

   -----------
   -- genre --
   -----------

   function Genre (T :  Tag) return String is
      Ret : Interfaces.C.Strings.Chars_Ptr := Taglib_Tag_Genre  (T.dummy);
   begin
      if Ret /= Interfaces.C.Strings.Null_Ptr then
         return R : constant String := Interfaces.C.Strings.Value (Ret) do
            Free (Ret);
         end return;
      else
         return "";
      end if;
   end Genre;

   ----------
   -- year --
   ----------

   function Year (T :  Tag) return Ada.Calendar.Year_Number is
      Ret : constant unsigned := Taglib_Tag_Year (T.Dummy);
   begin
      return (if (Unsigned (Ada.Calendar.Year_Number'First) < Ret)  or else  (Ret > Unsigned (Ada.Calendar.Year_Number'Last))
              then
                 Ada.Calendar.Year_Number (Ret)
              else
                 Ada.Calendar.Year_Number'First);
   end Year;

   -----------
   -- track --
   -----------

   function Track (T :  Tag) return Natural is
   begin
      return Natural (Taglib_Tag_Track (T.Dummy));
   end Track;

   -----------
   -- title --
   -----------

   procedure Set_Title (T : in out Tag; Title : String) is
      Data : Interfaces.C.Strings.Chars_Ptr := New_String (Title);
   begin
      Taglib_Tag_Set_Title (T.Dummy, Data);
      Free (Data);
   end Set_Title;

   ----------------
   -- set_artist --
   ----------------

   procedure Set_Artist (T : in out Tag; Artist : String) is
      Data : Interfaces.C.Strings.Chars_Ptr := New_String (Artist);
   begin
      Taglib_Tag_Set_Artist (T.Dummy, Data);
      Free (Data);
   end Set_Artist;

   ---------------
   -- set_album --
   ---------------

   procedure Set_Album (T : in out Tag; Album : String) is
      Data : Interfaces.C.Strings.Chars_Ptr := New_String (Album);
   begin
      Taglib_Tag_Set_Album (T.Dummy, Data);
      Free (Data);
   end Set_Album;

   -----------------
   -- set_comment --
   -----------------

   procedure Set_Comment (T : in out Tag; Comment : String) is
      Data : Interfaces.C.Strings.Chars_Ptr := New_String (Comment);
   begin
      Taglib_Tag_Set_Comment (T.Dummy, Data);
      Free (Data);
   end Set_Comment;

   -------------------
   -- tag_set_genre --
   -------------------

   procedure Tag_Set_Genre (T : in out Tag; Genre : String) is
      Data : Interfaces.C.Strings.Chars_Ptr := New_String (Genre);
   begin
      Taglib_Tag_Set_Genre (T.Dummy, Data);
      Free (Data);
   end Tag_Set_Genre;

   ------------------
   -- tag_set_year --
   ------------------

   procedure Tag_Set_Year (T : in out Tag; Year : Ada.Calendar.Year_Number) is
   begin
      Taglib_Tag_Set_Year (T.Dummy, Interfaces.C.unsigned (Year));
   end Tag_Set_Year;

   -------------------
   -- tag_set_track --
   -------------------

   procedure Tag_Set_Track (T : in out Tag; Track : Positive) is
   begin
      Taglib_Tag_Set_Track (T.Dummy, Interfaces.C.unsigned (Track));
   end Tag_Set_Track;

   ----------------------
   -- tag_free_strings --
   ----------------------

   procedure Tag_Free_Strings is
   begin
      Taglib_Tag_Free_Strings;
   end Tag_Free_Strings;

   ------------
   -- length --
   ------------

   function Length (Properties :  AudioProperties) return Natural is
   begin
      return Natural (Taglib_Audioproperties_Length (Properties.Dummy));
   end Length;

   -------------
   -- bitrate --
   -------------

   function Bitrate (Properties :  AudioProperties) return Natural is
   begin
      return Natural (Taglib_Audioproperties_Bitrate (Properties.Dummy));
   end Bitrate;

   ----------------
   -- samplerate --
   ----------------

   function Samplerate (Properties :  AudioProperties) return Natural is
   begin
      return Natural (Taglib_Audioproperties_Samplerate (Properties.Dummy));
   end Samplerate;

   --------------
   -- channels --
   --------------

   function Channels (Properties :  AudioProperties) return Natural is
   begin
      return Natural (Taglib_Audioproperties_Channels (Properties.Dummy));
   end Channels;

   -------------------------------------
   -- id3v2_set_default_text_encoding --
   -------------------------------------

   procedure Id3v2_Set_Default_Text_Encoding (Encoding : ID3v2_Encoding) is
   begin
      Taglib_Id3v2_Set_Default_Text_Encoding (Taglib_ID3v2_Encoding'Val(ID3v2_Encoding'Pos(Encoding)));
   end Id3v2_Set_Default_Text_Encoding;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Object : in out File) is
   begin
      Taglib_File_Free (Object.Dummy);
      Object.Dummy := null;
   end Finalize;


end taglib;
