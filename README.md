# CELESTIAL-BODIES
 tables attempted 	
 Primary, unique, not null	not null unique	INT	boolean	foreign key
star	star_id	name	age	found_yet	galexy_id
	1	star_andrew	654	TRUE	1
	2	star_betty	878	TRUE	1
	3	star_calum	3218	TRUE	2
	4	star_dave	543	TRUE	2
	5	star_eric	548	TRUE	3
	6	star_fred	45	TRUE	3
					
	Primary, unique, not null	not null unique	char(30)	boolean	foreign key
planet	planet_id	name	desc	is_livable_	star_id
	1	planet_amy	shes a doll	TRUE	1
	2	planet_betty	unkind bitch	FALSE	1
	3	planet_cassie	cant live here	TRUE	2
	4	planet_dorinda	so much sulpher	FALSE	2
	5	planet_erica	why now	TRUE	3
	6	planet_francescca	pokemeon from here	FALSE	3
	7	planet_georgia	fruitcake from here	TRUE	4
	8	planet_hellen	all candy	FALSE	4
	9	planet_izzy	so so fun	TRUE	5
	10	planet_jessie	planet hard to describe	FALSE	5
	11	planet_kim	shell take your husband	TRUE	6
	12	planet_lisa	shell make you dinner	FALSE	6
					
	Primary, unique, not null	not null unique	INT	Numeric	foreign key
moon	moon_id	name	distance_from_planet	num_craters	planet_id
	1	moon_ape	564	1	1
	2	moon_baby	687	5	1
	3	moon_cat	15	4	2
	4	moon_dog	687	3	2
	5	moon_egret	654	7	3
	6	moon_fish	615	5	3
	7	moon_goat	87	6	4
	8	moon_hippo	165	1	4
	9	moon_ibis	87	1	5
	10	moon_jackle	654	8	5
	11	moon_kanga	15	9	6
	12	moon_lama	564	4	6
	13	moon_marmot	55	5	7
	14	moon_narwal	15	6	7
	15	moon_octo	458	7	8
	16	moon_platty	354	2	8
	17	moon_rino	2156	6	9
	18	moon_stega	546	7	9
	19	moon_trex	454	1	10
	20	moon_walrus	454	3	10
					
					
astronout	Primary, unique, not null	not null unique	INT	foreign key	
explorer	explorer_id	name	age	planet_id	
	1	George Jeson	854	1	
	2	Barny Rubble	14	2	
	3	Superman	35	3	
![image](https://github.com/Emilymay246/CELESTIAL-BODIES/assets/164380241/433a4b35-f97a-46da-9af0-288ef2e34301)

