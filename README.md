# BreakingBadApp

Breaking Bad App, Breaking Bad karakterlerinin bilgilerini, repliklerini, sezon bölümlerinin bilgilerini ve bölümlerde oynayan karakterleri gösteren, dizinin IMDB sayfasının incelenebildiği bir uygulamadır.
Uygulama, Characters, Episodes, ve IMDB page olmak üzere 3 tab'den ve bu tablere bağlı detay sayfaları ve viewlerinden oluşur.

### 1. Characters Tab
<div align="center">
<table>
<tr>
<td><img src="https://user-images.githubusercontent.com/96587699/204105329-f1e44823-65d3-4725-97aa-c783903dc323.png" alt="drawing" width="275"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/204105315-48e02b67-dc21-42ae-a354-ea88dd910d4d.png" alt="drawing" width="275"/></td>  
</td>  
</tr>
</table>
</div>
<div align="center">
<table>
<tr>
<td><img src="https://user-images.githubusercontent.com/96587699/204105319-ad31c97f-d78a-4397-b6d3-e48f27ff33d8.png" alt="drawing" width="275
"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/204105323-ff29a532-6d1a-4e02-9b61-0339e489e55a.png" alt="drawing" width="275
"/></td>  
</tr>
</table>
</div>

- Characters Tab'ında Collection View'de tüm oyuncuların resimleri, isimleri, doğum tarihleri ve nickname'leri listelenir.
- Herhangi bir character item'ına tıklanınca character detay sayfası açılır.
- Detay sayfasında karakter ismi, doğum tarihi, nickname'i, mesleği ve görüntülendiği sezon bilgileri bulunur.
- Show quotes butonu ile quotes ekranına geçiş yapılır.
- Quotes ekranında karakterlerin replikleri table view'de listelenir.
- Eğer karakterin repliği yoksa ekrana alert bastırılır.

### 2. Episodes Tab
<div align="center">
<table>
<tr>
<td><img src="https://user-images.githubusercontent.com/96587699/204105324-c844136a-11be-4525-88b5-3968be47c2e5.png" alt="drawing" width="275
"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/204105325-6b27e675-f67a-4e79-9b10-2112821b1f67.png" alt="drawing" width="275
"/></td>  
</tr>
</table>
</div>

- Episodes Tab'ında sezonlar ve sezonların altında bölümleri bulunur. Bölümlerin isimleri ve yayın tarihleri yer alır.
- Herhangi bir bölüme tıklanınca bölümdeki karakterler view'i açılır.
- Açılan view'de bölümdeki karakterlerin bilgileri yer alır.
- Sağ üstte bulunan kapat butonu ile view ekrandan kaldırılır.

### 3. IMDB Tab
<div align="center">
<td><img src="https://user-images.githubusercontent.com/96587699/204105327-ac2d6c80-0c15-42f9-9c0a-009d6e499f85.png" alt="drawing" width="275"/></td>  
</div>

- Dizinin IMDB sayfası webview'da gösterilir. Sol üstte sayfa refresh butonu, sağ üstte dizinin IMDB sayfasına geri dönebilmek için homepage butonu bulunur.

### 4. Notes Tab

- Episode Notes Tab'da CoreData'ya eklenen notlar listelenir, yeni not eklenebilir, eklenen notlar güncellenebilir ve silinebilir.

<div align="center">
<table>
<tr>
<td><img src="https://user-images.githubusercontent.com/96587699/205512153-238dd1e9-eda1-4423-a8b8-ecd02e9e7e3f.png" alt="drawing" width="275"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/205512162-1ef8ecbf-1390-4d3d-b0b1-7afa07a1d22b.png" alt="drawing" width="275"/></td>  
</td>  
</tr>
</table>
</div>

- Note Tab ana ekranında CoreData'ya kayıtlı notlar sezon ve bölüm sıralamasına göre listelenir.
- Listelenen notlar sola kaydırılarak CoreData ve TableView'den silinebilir.
- Ana ekranda ekle butonuna tıklanarak boş şekilde not ekle/düzenle ekranı present edilir.
- Tableview'de listelenen kayıtların üzerine tıklandığında ekle/düzenle ekranı dolu şekilde present edilir.

<div align="center">
<table>
<tr>
<td><img src="https://user-images.githubusercontent.com/96587699/205512164-0df1be8a-a6da-47db-b263-16edcb228ddc.png" alt="drawing" width="275
"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/205512158-f8350279-e73a-45dd-b75d-5bfdd5a3e142.png" alt="drawing" width="275
"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/205512160-cb05f72b-6a00-4a88-ba4e-80073e009b23.png" alt="drawing" width="275
"/></td>  
</tr>
</table>
</div>

- Ekle butonuna basıldığında boş bir kayıt ekranı açılır.
- Season & Episode seçim texfield'ından 2'li pickerview ile sezon ve bölüm seçimi yapılır.
- Pickerview'de bulunan sezon ve bölüm bilgileri API'dan alınır. Yeni bir sezon, bölüm eklemesi yapılırsa yeni sezon ve bölümler otomatik eklenmiş olur.
- Seçim yapılan bölüm için daha önce kayıt girilmiş ise seçim sonrasında textview'e önceki girilen kayıt gelir. Kayıt üzerinde ekleme ve düzenleme yapılabilir.
- Kayıt bittiğinde klavyenin üzerinde bulunan done butone ile klavye kapatılabilir.
- Save butonu ile girilen not CoreData'ya kayıt yapılır ve listeye eklenir, close butonu ile herhangi bir aksiyon almadan ekran dismiss edilebilir.
- Klavye veya picker açıkken ekranın farklı bir yerine dokunulduğunda klavye ve picker Gesture Recognizer ile kapatılır.
- Listeleme ekranında tableview cell üzerine tıklandığında dolu şekilde ekle/düzenle ekranı açılır. Düzenleme için açılan ekranda bölüm değişimi yapılmaması için bölüm textfield'ı disable edilmiştir. Düzenleme yapıldıktan sonra save edilerek not güncellenmiş olur.
