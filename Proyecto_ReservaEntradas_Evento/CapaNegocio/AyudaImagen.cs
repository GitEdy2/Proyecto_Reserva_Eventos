﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Reflection;


namespace CapaNegocio
{
    public class AyudaImagen
    {
        public static Image ByteArrayToImage(byte[] byteArrayIn)
        {
            MemoryStream ms = new MemoryStream(byteArrayIn);
            return Image.FromStream(ms);
        }

        public static byte[] ImageToByteArray(Image imageIn)
        {
            MemoryStream ms = new MemoryStream();
            imageIn.Save(ms, ImageFormat.Jpeg);
            return ms.ToArray();
        }

        public static Image ObtenerImagenNoDisponible()
        {
            Assembly assembly = System.Reflection.Assembly.GetExecutingAssembly();
            Stream file = assembly.GetManifestResourceStream("");
            return Image.FromStream(file);
        }
    }
}
