use cocinaevaluacion;
update cocinas
set PRECIOCOCINA =1200 where idCOCINA='MODELO1';
update cocinas
set PRECIOCOCINA =1500 where idCOCINA='MODELO2';
update cocinas 
set PRECIOCOCINA=2000 where idCOCINA= 'MODELO3';
delete  from cocinas   where  idCOCINA='MODELO8';
delete  from cocinas   where  idCOCINA='MODELO9';
delete  from cocinas   where  idCOCINA='MODEL10';