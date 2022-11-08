using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WindowsFormsApplication1
{
    class ClsRLEFile
    {

      
        int OutDataPos = 0;

        int lastByte = 256;
        int thisByte = 0;
        int RleCount = 0;
        int RleCountPos = 0;
        int LinearCount = 0;
        int LinearCountPos = 0;
        int mode = 0;

        public void RLECompressFile(String SourceFile,String DestFile,int firstbyte,int bytestep){
            System.IO.BinaryReader BR = new System.IO.BinaryReader(System.IO.File.Open(SourceFile, System.IO.FileMode.OpenOrCreate),Encoding.ASCII);
            System.IO.BinaryWriter BW = new System.IO.BinaryWriter(System.IO.File.Open(DestFile, System.IO.FileMode.Create));
            // System.IO.FileMode.Open),Encoding.ASCII
            byte[] OutData = new byte[65536];
            lastByte = 256;
            thisByte = 0;
            RleCount = 0;
            RleCountPos = 0;
            LinearCount = 0;
            LinearCountPos = 0;
            mode = 0;
            OutDataPos = 0;

            for (int i = 0; i < firstbyte; i++)
            {
                thisByte = BR.ReadByte();           // Skip starting bytes
                //VbX.MsgBox(i.ToString());
            }
            thisByte = BR.ReadByte();

            for (int i = 1; i < bytestep; i++)
            {
                if (BR.PeekChar() >= 0) BR.ReadByte();     // Skip bytes

            }

           if (thisByte != BR.PeekChar())
           {
               LinearCountPos = 0;
               OutDataPos++;
               LinearCount = 0;
               mode = 1;
           }

            
            while (BR.PeekChar()>=0){
                lastByte=thisByte;

                    thisByte = BR.ReadByte();
                    //VbX.MsgBox(thisByte.ToString()+"  "+BR.BaseStream.Position.ToString());
                if (thisByte!=lastByte){

                    if (mode == 1 && LinearCount<127)
                    {
                        OutData[OutDataPos] = (byte)lastByte;
                        OutDataPos++;
                        LinearCount++;
                    }
                    else if (mode == 1)         // Reached 127 byte limit
                    {
                        OutData[LinearCountPos] = (byte)(LinearCount);
                        LinearCountPos = OutDataPos;
                        LinearCount = 0;
                        OutDataPos++;
                        OutData[OutDataPos] = (byte)lastByte;
                        OutDataPos++;
                        LinearCount++;
                    }
                    else {
                        if (mode == 2) {
                            OutData[RleCountPos] = (byte)(128 + RleCount);
                                RleCount=0;
                        }
                        LinearCount = 0;
                        LinearCountPos = OutDataPos;
                        OutDataPos++;
                        mode = 1;
                    }
                }
                if (thisByte == lastByte)
                {
                    if (mode == 2 && RleCount < 127)
                    {
                        RleCount++;
                    }
                    else if (mode == 2)
                    {
                        OutData[RleCountPos] = (byte)(128 + RleCount);
                        RleCountPos = OutDataPos;
                        RleCount = 0;
                        OutDataPos++;
                        OutData[OutDataPos] = (byte)lastByte;
                        OutDataPos++;
                        RleCount++;

                    }
                    else
                    {
                        if (mode !=2)
                        {
                            OutData[LinearCountPos] = (byte)(LinearCount);
                            if (LinearCount == 0 && OutDataPos>0) OutDataPos--; // No Linear data since last RLE
                            LinearCount = 0;
                            RleCount=2;
                        }
                        RleCountPos = OutDataPos;
                        OutDataPos++;
                        OutData[OutDataPos] = (byte)lastByte;
                        OutDataPos++;
                        
                        mode = 2;
                    }
                }
                for (int i = 1; i < bytestep; i++)
                {
                    if (BR.PeekChar() >= 0) BR.ReadByte();     // Skip bytes
                     
                }
            }


            if (mode == 1 && LinearCountPos>0)
            {
                
                OutData[OutDataPos] = (byte)thisByte;
                OutDataPos++;
                LinearCount++;
                 OutData[LinearCountPos] = (byte)(LinearCount);
            }
            if (mode == 2 && RleCount>0)
            {
                OutData[RleCountPos] = (byte)(128 + RleCount);
                //OutData[RleCountPos + 1] = (byte)lastByte;
            }
            
            //VbX.MsgBox(mode.ToString() + "  " + RleCount.ToString() + "   " + RleCountPos.ToString() + "    " + OutDataPos.ToString());
            OutData[OutDataPos] = (byte)00;
            //VbX.MsgBox(OutDataPos.ToString());
            for (int i = 0; i <= OutDataPos; i++) {
                BW.Write(OutData[i]);
                
            
            }

            BR.Close();
            BW.Close();

        }
    }
}
