with Ada.Calendar;
private with Ada.Finalization;
package taglib is

   type File (<>) is tagged limited private;

   type Tag (<>) is tagged limited private;

   type AudioProperties (<>) is tagged limited private;

   procedure set_strings_unicode (unicode : Boolean);  -- /usr/include/taglib/tag_c.h:74

   procedure set_string_management_enabled (management : Boolean);  -- /usr/include/taglib/tag_c.h:82

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

   function file_new (filename : String) return File;  -- /usr/include/taglib/tag_c.h:113


   function file_new (filename : String; c_type : File_Type) return  File;  -- /usr/include/taglib/tag_c.h:119



   function is_valid (F :  File) return Boolean;  -- /usr/include/taglib/tag_c.h:131


   function Get_Tag (F :  File'Class) return  Tag;  -- /usr/include/taglib/tag_c.h:137


   function Get_AudioProperties (F :  File'Class) return  AudioProperties;  -- /usr/include/taglib/tag_c.h:143


   procedure save (F : File);  -- /usr/include/taglib/tag_c.h:148


   function title (T :  Tag) return String;  -- /usr/include/taglib/tag_c.h:160


   function artist (T :  Tag) return String;  -- /usr/include/taglib/tag_c.h:168


   function album (T :  Tag) return String;  -- /usr/include/taglib/tag_c.h:176


   function comment (T :  Tag) return String;  -- /usr/include/taglib/tag_c.h:184


   function genre (T :  Tag) return String;  -- /usr/include/taglib/tag_c.h:192


   function year (T :  Tag) return Ada.Calendar.Year_Number;  -- /usr/include/taglib/tag_c.h:197


   function Track (T :  Tag) return Natural;  -- /usr/include/taglib/tag_c.h:202


   procedure set_title (T : in out Tag; title : String);  -- /usr/include/taglib/tag_c.h:209


   procedure set_artist (T : in out Tag; artist : String);  -- /usr/include/taglib/tag_c.h:216


   procedure set_album (T : in out Tag; album : String);  -- /usr/include/taglib/tag_c.h:223


   procedure set_comment (T : in out Tag; comment : String);  -- /usr/include/taglib/tag_c.h:230


   procedure tag_set_genre (T : in out Tag; genre : String);  -- /usr/include/taglib/tag_c.h:237


   procedure tag_set_year (T : in out Tag; year : Ada.Calendar.Year_Number);  -- /usr/include/taglib/tag_c.h:242


   procedure tag_set_track (T : in out Tag; Track : Positive);  -- /usr/include/taglib/tag_c.h:247


   procedure tag_free_strings;  -- /usr/include/taglib/tag_c.h:252


   function length (Properties :  AudioProperties) return Natural;  -- /usr/include/taglib/tag_c.h:261


   function bitrate (Properties :  AudioProperties) return Natural;  -- /usr/include/taglib/tag_c.h:266


   function samplerate (Properties :  AudioProperties) return Natural;  -- /usr/include/taglib/tag_c.h:271


   function channels (Properties :  AudioProperties) return Natural;  -- /usr/include/taglib/tag_c.h:276


   type ID3v2_Encoding is
     (ID3v2_Latin1,
      ID3v2_UTF16,
      ID3v2_UTF16BE,
      ID3v2_UTF8);
   pragma Convention (C, ID3v2_Encoding);  -- /usr/include/taglib/tag_c.h:287

   procedure id3v2_set_default_text_encoding (encoding : ID3v2_Encoding);  -- /usr/include/taglib/tag_c.h:293

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
      dummy : Taglib_Tag_Access;  -- /usr/include/taglib/tag_c.h:66
   end record;

   type TagLib_AudioProperties;
   type TagLib_AudioProperties_Access is access all TagLib_AudioProperties with Storage_Size => 0;
   type AudioProperties is new Ada.Finalization.Limited_Controlled with record
      dummy : TagLib_AudioProperties_Access;  -- /usr/include/taglib/tag_c.h:67
   end record;

   type Package_Controler is new  Ada.Finalization.Limited_Controlled with null record;
end taglib;
