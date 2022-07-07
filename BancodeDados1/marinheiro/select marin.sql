/*select *
from aluno, professor, curso 
where nivel = 'JR';
*/
-- use marinheiro
select R.id_marin 
from reservas R, barcos B
where R.id_barco = b.id_barco and
B.cor = 'vermelho' and
R.id_marin not in (select id_marin from reservas r, barcos b
					where r.id_barco = b.id_barco and b.cor <> 'vermelho')