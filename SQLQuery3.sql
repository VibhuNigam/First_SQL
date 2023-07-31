--1
SELECT
  p.profile_id,
  p.first_name + ' ' + p.last_name AS full_name,
  p.phone
FROM
  profiles p
INNER JOIN
  tenants_history th
ON
  p.profile_id = th.profile_id
ORDER BY
  DATEDIFF(day, th.move_in_date, th.move_out_date) DESC;

  --2)
  SELECT
  p.first_name + ' ' + p.last_name AS full_name,
  p.email,
  p.phone
FROM
  profiles p
WHERE
  p.profile_id IN (
    SELECT
      t.profile_id
    FROM
      tenants_history t
    WHERE
      t.rent > 9000
  )
  AND p.marital_status = 'Y';

  --3)
  SELECT 
  th.profile_id, 
  CONCAT(p.first_name, ' ', p.last_name) AS full_name,
  p.phone, 
  p.email,
  p.city, 
  th.house_id, 
  th.move_in_date,
  th.move_out_date, 
  th.rent,
       COUNT(r.ref_id) AS total_referrals, 
	   ed.latest_employer, 
	   ed.Occupational_category
FROM tenants_history th
INNER JOIN 
profiles p 
ON 
th.profile_id = p.profile_id
LEFT JOIN 
referrals r 
ON 
p.profile_id = r.referrer_id
LEFT JOIN 
employement_details ed 
ON 
p.profile_id = ed.profile_id
WHERE 
(p.city = 'Bangalore' OR p.city = 'Pune')
AND 
(th.move_in_date >= '2015-01-01' 
AND 
th.move_in_date <= '2016-01-31')
GROUP BY 
th.profile_id, 
p.first_name, 
p.last_name, 
p.phone, 
p.email, 
p.city, 
th.house_id, 
th.move_in_date, 
th.move_out_date, 
th.rent,
ed.latest_employer, 
ed.Occupational_category
ORDER BY 
th.rent DESC;

  --4)
select 
Profiles.profile_id, 
first_name + ' ' + last_name as FullName,
email,
phone,
ref_id,

SUM(CASE WHEN referral_valid=0 then 0 else referrer_bonus_amount end ) as bonus

from Profiles

inner join referrals

on Profiles.profile_id = referrals.referrer_id

group by Profiles.profile_id, first_name, last_name,email, phone, ref_id

having(SUM(referral_valid) >1)

--5)
select city, SUM(rent) as IndividualRent

from Profiles

inner join tenants_history

on Profiles.profile_id = tenants_history.profile_id

group by city

union

select 'Total',  sum(rent) from tenants_history

--6)
CREATE VIEW vw_tenant AS
SELECT TH.profile_id, TH.rent, TH.move_in_date, H.house_type, H.beds_vacant, A.description, A.city
FROM tenants_history TH
INNER JOIN houses H ON TH.house_id = H.house_id
INNER JOIN address A ON H.house_id = A.house_id
WHERE TH.move_in_date >= '2015-04-30'
AND H.beds_vacant > 0;

select * from vw_tenant

--7)
UPDATE Referrals
SET valid_till = DATEADD(month, 1, valid_till)
WHERE referrer_id IN (
    SELECT referrer_id
    FROM Referrals
    GROUP BY referrer_id
    HAVING COUNT(referrer_id) > 2
);

select * from referrals
where referrer_id=5;



--8)
SELECT TH.profile_id, P.first_name + ' ' + P.last_name AS full_name, P.phone,
    CASE
        WHEN TH.rent > 10000 THEN 'Grade A'
        WHEN TH.rent BETWEEN 7500 AND 10000 THEN 'Grade B'
        ELSE 'Grade C'
    END AS customer_segment
FROM tenants_history TH
JOIN profiles P ON TH.profile_id = P.profile_id;


--9)
SELECT
  CONCAT(p.first_name, ' ', p.last_name) AS full_name,
  p.phone,
  p.city,
  h.house_type,
  h.beds_vacant,
  a.description
FROM
  profiles p
JOIN
  tenants_history th ON p.profile_id = th.profile_id
JOIN
  houses h ON th.house_id = h.house_id
JOIN
  address a ON h.house_id = a.house_id
LEFT JOIN
  referrals r ON p.profile_id = r.referrer_id
WHERE
  r.ref_id IS NULL;

 --10)
 SELECT
  h.*
FROM
  houses h
JOIN
  (
    SELECT
      house_id,
      COUNT(*) AS occupancy
    FROM
      tenants_history
    GROUP BY
      house_id
    HAVING
      COUNT(*) = (
        SELECT
          MAX(occupancy_count)
        FROM
          (
            SELECT
              house_id,
              COUNT(*) AS occupancy_count
            FROM
              tenants_history
            GROUP BY
              house_id
          ) AS subquery
      )
  ) AS max_occupancy ON h.house_id = max_occupancy.house_id;


