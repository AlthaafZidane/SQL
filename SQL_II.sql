--Soal 1
SELECT
	nama,
	email,
	bulan_lahir,
	tanggal_registrasi
FROM rakamin_customer
WHERE bulan_lahir IN ('Januari', 'Februari', 'Maret')
AND tanggal_registrasi BETWEEN '2012-01-01' AND '2012-03-31'
ORDER BY email LIKE '%yahoo.com' or email like '%roketmail.com'

--Soal 2
SELECT
  id_order,
  id_pelanggan,
  harga,
  harga_setelah_ppn,
  CASE
    WHEN harga_setelah_ppn <= 20000 THEN 'LOW'
    WHEN harga_setelah_ppn > 20000 AND harga_setelah_ppn <= 50000 THEN 'MEDIUM'
    WHEN harga_setelah_ppn > 50000 THEN 'HIGH'
  END AS spending_bucket
FROM
  (
    SELECT
      id_order,
      id_pelanggan,
      harga,
      harga * 1.1 AS harga_setelah_ppn
    FROM
      rakamin_order
  ) AS ro
ORDER BY
  harga_setelah_ppn DESC;

--Soal 3
SELECT id_merchant, 
	COUNT(*) AS jumlah_order, 
	SUM(harga) AS jumlah_pendapatan_sebelum_PPN
FROM rakamin_order
GROUP BY id_merchant
ORDER BY jumlah_pendapatan_sebelum_PPN DESC;

--Soal 4
SELECT metode_bayar,
	COUNT(*) AS pembayaran_populer
FROM rakamin_order
GROUP BY metode_bayar
HAVING COUNT(1) > 10
ORDER BY pembayaran_populer DESC;

--Soal 5
SELECT *
FROM

(	SELECT kota,
	COUNT(*) AS total_populasi
FROM rakamin_customer_address
GROUP BY kota
)as rca
ORDER BY total_populasi

--Soal 6
WITH merchant_details AS (
	SELECT 	
		nama_merchant, 
		ro.id_merchant, 
		metode_bayar, 
		COUNT(*) AS frekuensi
FROM rakamin_merchant as rm
JOIN rakamin_order as ro
ON rm.id_merchant = ro.id_merchant
GROUP BY rm.nama_merchant, ro.id_merchant, ro.metode_bayar

)
SELECT
	nama_merchant, metode_bayar, id_merchant,
	SUM(frekuensi) AS total_penggunaan
FROM merchant_details
GROUP BY nama_merchant, metode_bayar, id_merchant
ORDER BY nama_merchant, total_penggunaan

--Soal 7
with
ro as (
	 select id_pelanggan,
	 	SUM(kuantitas) as total_kuantitas
	 from rakamin_order
	 group by 1
	 having SUM(kuantitas) > 5
	)

select ro.id_pelanggan, nama, email, total_kuantitas  
from ro
left join rakamin_customer as rc
	on ro.id_pelanggan = rc.id_pelanggan
group by ro.id_pelanggan, nama, email, total_kuantitas
