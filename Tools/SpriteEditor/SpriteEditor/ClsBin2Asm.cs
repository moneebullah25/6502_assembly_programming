using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WindowsFormsApplication1
{
    public static class ClsBin2Asm
    {
       public static string Bin2Asm(string filen, string txtLineStart,string Prefix, string DataFormat, string Suffix, string txtSeparator, string txtLineComment,int linemax)
        {
        
        
         if (filen!=""){
                System.IO.BinaryReader BR=new System.IO.BinaryReader(System.IO.File.Open(filen, System.IO.FileMode.OpenOrCreate));
                StringBuilder sb = new StringBuilder();

                
            int linecurrent = 0;
            int linenum=0;
            string LineByte = "0";
            string linestart = txtLineStart;
            long filelength=BR.BaseStream.Length;
            while (filelength>0)
            {
                
                if (linecurrent > 0) sb.Append(txtSeparator); else sb.Append(linestart);
                sb.Append(Prefix);
                if (DataFormat.ToLower() == "bin8") {
                    byte b = BR.ReadByte();
                    sb.Append(VbX.Dec2Bin8Bit(b));
                    sb.Append(Suffix);
                }
                if (DataFormat.ToLower() == "bin16")
                {
                    byte b = BR.ReadByte();
                    byte b2 = BR.ReadByte(); filelength--;
                    sb.Append(VbX.Dec2Bin8Bit(b2));
                    sb.Append(VbX.Dec2Bin8Bit(b));
                    sb.Append(Suffix);
                }
                if (DataFormat.ToLower() == "bin16bigend")
                {
                    byte b = BR.ReadByte();
                    byte b2 = BR.ReadByte(); filelength--;
                    sb.Append(VbX.Dec2Bin8Bit(b));
                    sb.Append(VbX.Dec2Bin8Bit(b2));
                    sb.Append(Suffix);
                }
                if (DataFormat.ToLower() == "hex8" || DataFormat.ToLower() == "")
                {
                    byte b = BR.ReadByte();
                    sb.Append(VbX.Dec2Hex8bit(b));
                    sb.Append(Suffix);
                }
                if (DataFormat.ToLower() == "oct8")
                {
                    byte b = BR.ReadByte();
                    sb.Append(VbX.Dec2Oct8Bit(b));
                    sb.Append(Suffix);
                }
                if (DataFormat.ToLower() == "oct16")
                {
                    byte b = BR.ReadByte();
                    byte b2 = BR.ReadByte(); filelength--;
                    sb.Append(VbX.Dec2Oct16Bit(b+(b2*256)));
                    sb.Append(Suffix);
                }
                if (DataFormat.ToLower() == "oct16bigend")
                {
                    byte b = BR.ReadByte();
                    byte b2 = BR.ReadByte(); filelength--;
                    sb.Append(VbX.Dec2Oct16Bit(b2 + (b * 256)));
                    sb.Append(Suffix);
                }
                if (DataFormat.ToLower() == "dec8")
                {
                    byte b = BR.ReadByte();
                    sb.Append(VbX.CStr(b));
                    sb.Append(Suffix);
                }
                if (DataFormat.ToLower() == "dec16")
                {
                    byte b = BR.ReadByte();
                    byte b2 = BR.ReadByte(); filelength--;
                    sb.Append(VbX.CStr(b + (b2 * 256)));
                    sb.Append(Suffix);
                }
                if (DataFormat.ToLower() == "dec16bigend")
                {
                    byte b = BR.ReadByte();
                    byte b2 = BR.ReadByte(); filelength--;
                    sb.Append(VbX.CStr(b2 + (b * 256)));
                    sb.Append(Suffix);
                }
                if (DataFormat.ToLower() == "hex16")
                {
                    byte b = BR.ReadByte();
                    byte b2 = BR.ReadByte(); filelength--;
                    sb.Append(VbX.Dec2Hex8bit(b2));
                    sb.Append(VbX.Dec2Hex8bit(b));
                    sb.Append(Suffix);
                }
                if (DataFormat.ToLower() == "hex16bigend")
                {
                    byte b = BR.ReadByte();
                    byte b2 = BR.ReadByte(); filelength--;
                    sb.Append(VbX.Dec2Hex8bit(b));
                    sb.Append(VbX.Dec2Hex8bit(b2));
                    sb.Append(Suffix);

                }
                filelength--;
                linecurrent++;
                if (linecurrent >= linemax) {
                    if (VbX.Trim(txtLineComment).Length > 0) { 
                    sb.Append(txtLineComment);
                    int spc = 3-linenum.ToString().Length; 
                    if (spc>0) sb.Append(VbX.Right("   ",spc));
                    sb.Append(linenum.ToString());
                    // sb.Append("    (" + LineByte + ")");
                    LineByte = BR.BaseStream.Position.ToString();
                    linenum++;
                    }
                    linecurrent = 0; sb.Append(VbX.Chr(13) + VbX.Chr(10)); }
                
            }
            
            BR.Close();
            return sb.ToString();
            }

         return ""; 
        }
        

    }
}
