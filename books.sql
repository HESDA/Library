


CREATE VIEW alternatif AS
SELECT
sc.id, sc.name, sc.nisn, sc.nilai_indo, sc.nilai_mtk, sc.nilai_ing, sc.nilai_ipa, sc.jarak
FROM siswa_calons as sc;

CREATE VIEW kriteria AS
SELECT
ctg.id, ctg.name, ctg.atribut, ctg.bobot, ctg.bobot/(SELECT SUM(ct.bobot)FROM categories as ct) as persentase
FROM categories as ctg GROUP BY ctg.id;

CREATE VIEW normalisasi AS
SELECT
alt.id, alt.name, alt.nisn,
IF((SELECT kri.atribut FROM kriteria as kri WHERE id=1)='Benefit', alt.nilai_indo/(SELECT MAX(alt2.nilai_indo) FROM alternatif as alt2), (SELECT MIN(alt2.nilai_indo) FROM alternatif as alt2)/alt.nilai_indo) as nilai_indo,
IF((SELECT kri.atribut FROM kriteria as kri WHERE id=2)='Benefit', alt.nilai_mtk/(SELECT MAX(alt2.nilai_mtk) FROM alternatif as alt2), (SELECT MIN(alt2.nilai_mtk) FROM alternatif as alt2)/alt.nilai_mtk) as nilai_mtk,
IF((SELECT kri.atribut FROM kriteria as kri WHERE id=3)='Benefit', alt.nilai_ing/(SELECT MAX(alt2.nilai_ing) FROM alternatif as alt2), (SELECT MIN(alt2.nilai_ing) FROM alternatif as alt2)/alt.nilai_ing) as nilai_ing,
IF((SELECT kri.atribut FROM kriteria as kri WHERE id=4)='Benefit', alt.nilai_ipa/(SELECT MAX(alt2.nilai_ipa) FROM alternatif as alt2), (SELECT MIN(alt2.nilai_ipa) FROM alternatif as alt2)/alt.nilai_ipa) as nilai_ipa,
IF((SELECT kri.atribut FROM kriteria as kri WHERE id=5)='Benefit', alt.jarak/(SELECT MAX(alt2.jarak) FROM alternatif as alt2), (SELECT MIN(alt2.jarak) FROM alternatif as alt2)/alt.jarak) as jarak
FROM alternatif as alt GROUP BY alt.id;

CREATE VIEW pengkali AS
SELECT
nor.id, nor.name, nor.nisn,
nor.nilai_indo*(SELECT kr.persentase FROM kriteria as kr WHERE kr.id=1) as nilai_indo,
nor.nilai_mtk*(SELECT kr.persentase FROM kriteria as kr WHERE kr.id=2) AS nilai_mtk,
nor.nilai_ing*(SELECT kr.persentase FROM kriteria as kr WHERE kr.id=3) AS nilai_ing,
nor.nilai_ipa*(SELECT kr.persentase FROM kriteria as kr WHERE kr.id=4) as nilai_ipa,
nor.jarak*(SELECT kr.persentase FROM kriteria as kr WHERE kr.id=5) as jarak
FROM normalisasi as nor;

CREATE VIEW hasil as
SELECT kl.nilai_indo+kl.nilai_mtk+kl.nilai_ing+kl.nilai_ipa+kl.jarak as hasil, kl.name, kl.nisn
FROM pengkali as kl;


CREATE VIEW alternatif AS
SELECT
b.id, b.book_code, b.title, b.rating, b.price, b.pages, b.publication_year, b.rent_duration, b.topic_suitability
FROM books as b;

CREATE VIEW kriteria AS
SELECT
cr.id, cr.nama, cr.label, cr.bobot, cr.bobot/(SELECT SUM(cr.bobot)FROM criteria as cr) as persentase
FROM criteria as cr GROUP BY cr.id;

CREATE VIEW normalisasi AS
SELECT
alt.id, alt.title, alt.book_code,
IF((SELECT kri.label FROM kriteria as kri WHERE id=1)='Benefit', alt.rating/(SELECT MAX(alt2.rating) FROM alternatif as alt2), (SELECT MIN(alt2.rating) FROM alternatif as alt2)/alt.rating) as rating,
IF((SELECT kri.label FROM kriteria as kri WHERE id=2)='Benefit', alt.price/(SELECT MAX(alt2.price) FROM alternatif as alt2), (SELECT MIN(alt2.price) FROM alternatif as alt2)/alt.price) as price,
IF((SELECT kri.label FROM kriteria as kri WHERE id=3)='Benefit', alt.pages/(SELECT MAX(alt2.pages) FROM alternatif as alt2), (SELECT MIN(alt2.pages) FROM alternatif as alt2)/alt.pages) as pages,
IF((SELECT kri.label FROM kriteria as kri WHERE id=4)='Benefit', alt.publication_year/(SELECT MAX(alt2.publication_year) FROM alternatif as alt2), (SELECT MIN(alt2.publication_year) FROM alternatif as alt2)/alt.publication_year) as publication_year,
IF((SELECT kri.label FROM kriteria as kri WHERE id=4)='Benefit', alt.rent_duration/(SELECT MAX(alt2.rent_duration) FROM alternatif as alt2), (SELECT MIN(alt2.rent_duration) FROM alternatif as alt2)/alt.rent_duration) as rent_duration,
IF((SELECT kri.label FROM kriteria as kri WHERE id=5)='Benefit', alt.topic_suitability/(SELECT MAX(alt2.topic_suitability) FROM alternatif as alt2), (SELECT MIN(alt2.topic_suitability) FROM alternatif as alt2)/alt.topic_suitability) as topic_suitability
FROM alternatif as alt GROUP BY alt.id;

CREATE VIEW pengkali AS
SELECT
nor.id, nor.title, nor.book_code,
nor.rating*(SELECT kr.persentase FROM kriteria as kr WHERE kr.id=1) as rating,
nor.price*(SELECT kr.persentase FROM kriteria as kr WHERE kr.id=2) AS price,
nor.pages*(SELECT kr.persentase FROM kriteria as kr WHERE kr.id=3) AS pages,
nor.publication_year*(SELECT kr.persentase FROM kriteria as kr WHERE kr.id=4) as publication_year,
nor.rent_duration*(SELECT kr.persentase FROM kriteria as kr WHERE kr.id=4) as rent_duration,
nor.topic_suitability*(SELECT kr.persentase FROM kriteria as kr WHERE kr.id=5) as topic_suitability
FROM normalisasi as nor;

CREATE VIEW hasil as
SELECT kl.id, kl.title, kl.book_code, kl.rating+kl.price+kl.pages+kl.publication_year+kl.rent_duration+kl.topic_suitability as hasil
FROM pengkali as kl;
