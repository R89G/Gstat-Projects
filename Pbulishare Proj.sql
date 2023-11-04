
--							Publishare Project
use Publishare

SELECT * 
--FROM authors
--from articles
from traffic
--from products
--from catrgories
 
--1
SELECT au.author,title
FROM authors as au JOIN articles art
on au.author_id=art.author_id
--2
SELECT title,traffic_day,article_views
FROM traffic tr JOIN articles art
on tr.article_id=art.article_id
--3
SELECT category_name,product_name
FROM categories cat join products pro
on cat.category_id=pro.category_id
--4
SELECT title,traffic_day,article_views,product_name,product_views
FROM traffic tr JOIN articles art
on tr.article_id=art.article_id
JOIN products pro
on pro.product_id=tr.product_id

--5
SELECT title,sum(article_views) as total_article_views,sum(product_views)total_prod_views
FROM traffic tr JOIN articles art
on tr.article_id=art.article_id
JOIN products pro
on pro.product_id=tr.product_id
group by title

--6 same article - difffernet number of product views
SELECT product_name,art.article_id,sum(product_views)total_prod_views
FROM traffic tr JOIN articles art
on tr.article_id=art.article_id
JOIN products pro
on pro.product_id=tr.product_id
group by product_name,art.article_id
order by 1,2

--7 Article perfor
SELECT title,traffic_day,sum(article_views)over (partition by title order by traffic_day) as Accum_article_views
FROM traffic tr JOIN articles art
on tr.article_id=art.article_id

--8 Authors perfor
SELECT aut.author, count(distinct art.article_id) NumOfArticles,sum(article_views) as 'TotalViews'
FROM authors aut join articles art
on aut.author_id=art.author_id
JOIN traffic tr 
on tr.article_id=art.article_id
group by aut.author
Order by 2 desc
--9
SELECT aut.author,traffic_day,sum(article_views)as [Total Article Views],
sum(case when category_name='Technology' then article_views else ''end ) as 'Tech Views',
sum(case when category_name='Energy' then article_views else ' 'end) as 'Energy Views',
sum(case when category_name='Finance' then article_views else '' end ) as 'Finance Views',
sum(case when category_name='Transportation' then article_views else ''end ) as 'Transp Views'
FROM authors aut join articles art
on aut.author_id=art.author_id
JOIN traffic tr 
on tr.article_id=art.article_id
join products pro
on pro.product_id=tr.product_id
join categories cat 
on cat.category_id=pro.category_id
--where aut.author like 'Abhish%'
group by aut.author,traffic_day
order  by 1,2

--10 Products perf
SELECT category_name,product_name,sum(product_views) as Toal_Product_View,
SUM(SUM(product_views)) OVER (partition by category_name) as Category_Views,
format(cast(sum(product_views)as numeric)/sum(SUM(product_views)) OVER (partition by category_name)*100,'##.##') as View_Pct
FROM products pro join categories cat 
on cat.category_id=pro.category_id
JOIN traffic tr
on pro.product_id=tr.product_id

group by category_name,product_name

----Option B
SELECT distinct product_name,category_name,sum(product_views) over (partition by pro.product_name)as Product_Views,
SUM(product_views) OVER (partition by category_name) as Category_Views,
format(cast(sum(product_views) over (partition by pro.product_name) as numeric)
/SUM(product_views) OVER (partition by category_name)*100,'##.##') as Pct_Views
FROM products pro join categories cat 
on cat.category_id=pro.category_id
JOIN traffic tr
on pro.product_id=tr.product_id
--where product_name = 'Alpha 414'
order by 2

--11
SELECT datename(MM,traffic_day) as Month_tra,datename(WEEKDAY,traffic_day)AS Day_traf,
SUM(article_views)as WeekDay_Views,
SUM(SUM(article_views)) over (partition by datename(MM,traffic_day)) as Month_Views,
format(cast(SUM(article_views)as numeric)/SUM(SUM(article_views)) over (partition by datename(MM,traffic_day))*100,'#.##') as Views_Pct
FROM articles art join traffic tr
on art.article_id=tr.article_id
GROUP BY datename(MM,traffic_day), datename(WEEKDAY,traffic_day)
Order by case when datename(WEEKDAY,traffic_day)='Sunday' then 1 
		      when datename(WEEKDAY,traffic_day)='Monday' then 2
			  when datename(WEEKDAY,traffic_day)='Tuesday' then 3 
			  when datename(WEEKDAY,traffic_day)='Wednesday' then 4 
			  when datename(WEEKDAY,traffic_day)='Thursday' then 5 
			  when datename(WEEKDAY,traffic_day)='Friday' then 6
			  else 7 end
--12
SELECT traffic_day,title,sum(article_views) as [Total Article Views],
SUM(SUM(article_views)) over (partition by traffic_day) as TotalDailyViews,
format(cast(SUM(article_views)as numeric)/SUM(SUM(article_views)) over (partition by traffic_day)*100,'#.##') as Views_Pct
FROM articles art join traffic tr
on art.article_id=tr.article_id
Group by traffic_day,title

--13 Top Views Articles
SELECT title,sum(article_views) as [Total Article Views],
DENSE_RANK() over (order by sum(article_views)desc) as 'Drank'
FROM articles art join traffic tr
on art.article_id=tr.article_id
where publication_date between '20201201' and '20201207'
group by title

--ithers
select distinct publication_date,datename(WEEKDAY,publication_date)ww,DAY(publication_date) as day_nu,
datepart(dd,publication_date)part
from articles
where publication_date <= DATEADD(WK,-3,'2020-12-31')

--14
SELECT category_name,product_name,sum(product_views)AS Prod_Views,
DENSE_RANK() over (partition by category_name order by sum(product_views)desc) as Prod_Category_Drank
FROM products pro join categories cat 
on cat.category_id=pro.category_id
JOIN traffic tr
on pro.product_id=tr.product_id
group by category_name,product_name

--15
SELECT title,traffic_day,article_views as Curent_Day_View,
LAG(article_views) over (partition by title order by traffic_day) as Prev_Day_Views,
format(cast(article_views as numeric)/LAG(article_views) over (partition by title order by traffic_day)-1,'##.##') as pct_diff
FROM articles art join traffic tr
on art.article_id=tr.article_id
order by title

--16
;with Art_cte As (
SELECT title,traffic_day,article_views,sum(article_views) over (partition by title order by traffic_day) as Run_views,
COUNT(*) over (partition by title order by traffic_day) as Num_Days
FROM articles art join traffic tr
on art.article_id=tr.article_id
--where title like 'yes%'
)
SELECT title,Min(Num_Days) as 'Days_25K_views',DENSE_RANK() over (order by Min(Num_Days)) as Drank
FROM Art_cte
where Run_views>=25000
GRoup by title

---17
SELECT article_id,article_views,product_views,
format(cast(product_views as numeric)/article_views*100,'#.##') as Red_Ratio,
format(avg(cast(product_views as numeric)/article_views*100)  over (),'##.##') as [Avg Red Ratio]
FROM  traffic

--18
SELECT category_name,--sum(article_views)as Sum_cat_view,sum(product_views) as Sum_prod_view,
format(avg(cast(product_views as numeric)/article_views*100),'##.##')  as [Avg Red Ratio]
FROM  traffic tr join products pro
on pro.product_id=tr.product_id
JOIN categories cat
on cat.category_id=pro.category_id
group by category_name
order by [Avg Red Ratio] desc

--19
select *
from article_types

select	year(publication_date) as [Year Publi],
		DATENAME(mm,publication_date)as [Month Public],
		DATEPART(wk,publication_date)as [Week Public],
		COunt(*) total_Articles,
		COUNT(distinct case when art_type_desc='Clinical Case Studies' then article_id end) as 'Clinical',
		COUNT(distinct case when art_type_desc='Feature Writing' then article_id end) as 'Feature Writing',
		COUNT(distinct case when art_type_desc='Opinion' then article_id end) as 'Opinion',
		COUNT(distinct case when art_type_desc='Investigative' then article_id end) as 'Investigative',
		COUNT(distinct case when art_type_desc='News' then article_id end) as 'News'
FROM articles art join article_types ty
on art.article_type_id=ty.art_type_id
Group by year(publication_date),DATENAME(mm,publication_date),DATEPART(wk,publication_date)
Order by 1,2,3

--20
;with pro_cte as (
SELECT product_name,sum(product_views) as Sum_prod_views,
DENSE_RANK() OVER (ORDER BY sum(product_views)) as drank_low,
DENSE_RANK() OVER (ORDER BY sum(product_views) desc) as drank_top
FROM  traffic tr join products pro
on pro.product_id=tr.product_id
group by product_name)

select product_name,Sum_prod_views,
case when drank_low=1 then 'Bottom' else 'Top' end as 'Top/Bottom' 
from pro_cte
where drank_top=1 or drank_low =1

