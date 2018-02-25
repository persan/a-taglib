with Ada.Calendar;
private with Ada.Finalization;
package taglib is

   type File (<>) is tagged limited private;

   type Tag (<>) is tagged limited private;

   type AudioProperties (<>) is tagged limited private;

   procedure set_strings_unicode (unicode : Boolean);

   procedure set_string_management_enabled (management : Boolean);

   type File_Type is
     (MPEG,
      OggVorbis,
      FLAC,
      MPC,
      OggFlac,
      WavPack,
      Speex,
      TrueAudio,
      MP4,
      ASF);

   function file_new (filename : String) return File;


   function file_new (filename : String; c_type : File_Type) return  File;



   function is_valid (F :  File) return Boolean;


   function Get_Tag (F :  File'Class) return  Tag;


   function Get_AudioProperties (F :  File'Class) return  AudioProperties;


   procedure save (F : File);


   function title (T :  Tag) return String;


   function artist (T :  Tag) return String;


   function album (T :  Tag) return String;


   function comment (T :  Tag) return String;


   function genre (T :  Tag) return String;


   function year (T :  Tag) return Ada.Calendar.Year_Number;


   function Track (T :  Tag) return Natural;


   procedure set_title (T : in out Tag; title : String);


   procedure set_artist (T : in out Tag; artist : String);


   procedure set_album (T : in out Tag; album : String);


   procedure set_comment (T : in out Tag; comment : String);


   procedure set_genre (T : in out Tag; genre : String);


   procedure set_year (T : in out Tag; year : Ada.Calendar.Year_Number);


   procedure set_track (T : in out Tag; Track : Positive);


   procedure tag_free_strings;


   function length (Properties :  AudioProperties) return Natural;


   function bitrate (Properties :  AudioProperties) return Natural;


   function samplerate (Properties :  AudioProperties) return Natural;


   function channels (Properties :  AudioProperties) return Natural;


   type ID3v2_Encoding is
     (Latin1,
      UTF16,
      UTF16BE,
      UTF8);

   procedure set_default_text_encoding (encoding : ID3v2_Encoding);

private
   type TagLib_File;
   type TagLib_File_Access is access all TagLib_File with Storage_Size => 0;
   type File is new Ada.Finalization.Limited_Controlled with record
      Dummy : TagLib_File_Access;
   end record;
   procedure Finalize   (Object : in out File);

   type Taglib_Tag;
   type Taglib_Tag_Access is access all Taglib_Tag with Storage_Size => 0;
   type Tag is new Ada.Finalization.Limited_Controlled with record
      dummy : Taglib_Tag_Access;
   end record;

   type TagLib_AudioProperties;
   type TagLib_AudioProperties_Access is access all TagLib_AudioProperties with Storage_Size => 0;
   type AudioProperties is new Ada.Finalization.Limited_Controlled with record
      dummy : TagLib_AudioProperties_Access;
   end record;

   type Package_Controler is new  Ada.Finalization.Limited_Controlled with null record;
end taglib;
