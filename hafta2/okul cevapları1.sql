/*1*/ select ogrenciBilgileri.adi,ogrenciBilgileri.soyadi , ogrenciBilgileri.tcKimlik,Veli.veliAdi, Veli.veliSoyadi
 from ogrenciBilgileri inner join Veli on Veli.veliNo=ogrenciBilgileri.veliNo
/*2*/ select ogrenciBilgileri.adi,ogrenciBilgileri.soyadi , ogrenciBilgileri.tcKimlik,Veli.veliAdi, Veli.veliSoyadi
 from ogrenciBilgileri inner join Veli on Veli.veliNo=ogrenciBilgileri.veliNo
/*3*/select * 
from NotBilgileri inner join Dersler
on NotBilgileri.dersNo=Dersler.dersNo 
inner join ogrenciBilgileri 
on ogrenciBilgileri.ogrNo =  NotBilgileri.ogrNo
and ogrenciBilgileri.ogrNo='1245'
and Dersler.dersadi in('FÝZÝK','KÝMYA')
/*4*/select ogrenciBilgileri.adi,ogrenciBilgileri.soyadi,Dersler.dersadi,y1,y2,y3
from NotBilgileri inner join Dersler
on NotBilgileri.dersNo=Dersler.dersNo 
inner join ogrenciBilgileri 
on ogrenciBilgileri.ogrNo =  NotBilgileri.ogrNo
and ogrenciBilgileri.ogrNo='1245'
and Dersler.dersadi in('FÝZÝK','KÝMYA')
/*5*/select avg (NotBilgileri.y1) , Dersler.dersadi from Dersler inner join NotBilgileri on Dersler.dersNo=NotBilgileri.dersNo inner join ogrenciBilgileri on ogrenciBilgileri.ogrNo=NotBilgileri.ogrNo group by Dersler.dersadi
/*6*/select AVG(NotBilgileri.y1) as '1.yazýlý ortalamasý', avg (NotBilgileri.y2) as '2.yazýlý ortalamasý' , AVG(NotBilgileri.y3) as '3.yazýlý ortalamasý',Dersler.dersadi  
from Dersler inner join NotBilgileri 
on Dersler.dersNo=NotBilgileri.dersNo  
inner join ogrenciBilgileri 
on ogrenciBilgileri.ogrNo=NotBilgileri.ogrNo 
group by Dersler.dersadi
/*7*/select NotBilgileri.y3
,Dersler.dersadi from Dersler inner join NotBilgileri on Dersler.dersNo=NotBilgileri.dersNo join ogrenciBilgileri on ogrenciBilgileri.ogrNo=NotBilgileri.ogrNo and NotBilgileri.y3<50
/*8*/select NotBilgileri.y1,NotBilgileri.y2,NotBilgileri.y3,dersler.dersadi from Dersler inner join NotBilgileri on Dersler.dersNo=NotBilgileri.dersNo join ogrenciBilgileri on ogrenciBilgileri.ogrNo=NotBilgileri.ogrNo and NotBilgileri.y1<45 and NotBilgileri.y2<45 and NotBilgileri.y3<45  and Dersler.dersadi='matematik'