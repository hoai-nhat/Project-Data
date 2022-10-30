--top 100 app có l??t t?i nhi?u nh?t
select top 100 FACT_APP.app_name , DIM_CATEGORY.catagory , FACT_APP.downloads 
	from DIM_CATEGORY inner join FACT_APP on DIM_CATEGORY.category_id = FACT_APP.category_id 	
	order by FACT_APP.downloads desc;

--xem ng??i dùng t?i th? lo?i app nào nhi?u nh?t
select distinct a.catagory , COUNT(a.catagory)as count from (select top 100 FACT_APP.app_name , DIM_CATEGORY.catagory , FACT_APP.downloads 
	from DIM_CATEGORY inner join FACT_APP on DIM_CATEGORY.category_id = FACT_APP.category_id 
	order by FACT_APP.downloads) a group by a.catagory order by count desc

