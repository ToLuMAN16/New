using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace yazilim_admin13062022
{
    public class MusteriCRUD
    {
        db db=new db();
        //Musteri ekleme 
        public bool mekle(Musteri ymusteri)
        {
            bool donus = true;
            db.ac();
            SqlCommand komut = new SqlCommand("insert into okuyucu values(@a,@b,@c,@d)", db.baglanti);
            komut.Parameters.AddWithValue("@a", ymusteri.Tc);
            komut.Parameters.AddWithValue("@a", ymusteri.Unvan);
            komut.Parameters.AddWithValue("@a", ymusteri.Cinsiyet);
            komut.Parameters.AddWithValue("@a", ymusteri.Dtar);
            int sonuc = komut.ExecuteNonQuery();
            if(sonuc == 0)
            {
                donus = false;  
            }

            db.kapat();
            return donus;

        }
        //musteri güncelleme 
        //musteri silme
        //musteri listeleme
    }
}