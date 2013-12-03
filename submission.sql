set search_path to kaggle_facial_keypoints;

drop view id_prediction_1 cascade;

create view id_prediction_1 as
select id,left_eye_center_x,'left_eye_center_x' 
as name from predictions union all
select id,left_eye_center_y,'left_eye_center_y' 
as name from predictions union all
select id,right_eye_center_x,'right_eye_center_x' 
as name from predictions union all
select id,right_eye_center_y,'right_eye_center_y' 
as name from predictions union all
select id,left_eye_inner_corner_x,'left_eye_inner_corner_x' 
as name from predictions union all
select id,left_eye_inner_corner_y,'left_eye_inner_corner_y' 
as name from predictions union all
select id,left_eye_outer_corner_x,'left_eye_outer_corner_x' 
as name from predictions union all
select id,left_eye_outer_corner_y,'left_eye_outer_corner_y' 
as name from predictions union all
select id,right_eye_inner_corner_x,'right_eye_inner_corner_x' 
as name from predictions union all
select id,right_eye_inner_corner_y,'right_eye_inner_corner_y' 
as name from predictions union all
select id,right_eye_outer_corner_x,'right_eye_outer_corner_x' 
as name from predictions union all
select id,right_eye_outer_corner_y,'right_eye_outer_corner_y' 
as name from predictions union all
select id,left_eyebrow_inner_end_x,'left_eyebrow_inner_end_x' 
as name from predictions union all
select id,left_eyebrow_inner_end_y,'left_eyebrow_inner_end_y' 
as name from predictions union all
select id,left_eyebrow_outer_end_x,'left_eyebrow_outer_end_x' 
as name from predictions union all
select id,left_eyebrow_outer_end_y,'left_eyebrow_outer_end_y' 
as name from predictions union all
select id,right_eyebrow_inner_end_x,'right_eyebrow_inner_end_x' 
as name from predictions union all
select id,right_eyebrow_inner_end_y,'right_eyebrow_inner_end_y' 
as name from predictions union all
select id,right_eyebrow_outer_end_x,'right_eyebrow_outer_end_x' 
as name from predictions union all
select id,right_eyebrow_outer_end_y,'right_eyebrow_outer_end_y' 
as name from predictions union all
select id,nose_tip_x,'nose_tip_x' 
as name from predictions union all
select id,nose_tip_y,'nose_tip_y' 
as name from predictions union all
select id,mouth_left_corner_x,'mouth_left_corner_x' 
as name from predictions union all
select id,mouth_left_corner_y,'mouth_left_corner_y' 
as name from predictions union all
select id,mouth_right_corner_x,'mouth_right_corner_x' 
as name from predictions union all
select id,mouth_right_corner_y,'mouth_right_corner_y' 
as name from predictions union all
select id,mouth_center_top_lip_x,'mouth_center_top_lip_x' 
as name from predictions union all
select id,mouth_center_top_lip_y,'mouth_center_top_lip_y' 
as name from predictions union all
select id,mouth_center_bottom_lip_x,'mouth_center_bottom_lip_x' 
as name from predictions union all
select id,mouth_center_bottom_lip_y,'mouth_center_bottom_lip_y' 
as name from predictions;

create view id_prediction as
select id, left_eye_center_x as prediction, name from id_prediction_1;

create view submission as
select id_lookup.row_id,id_prediction.prediction
from id_lookup 
left join id_prediction on 
id_lookup.image_id = id_prediction.id and
id_lookup.feature_name = id_prediction.name
order by row_id desc;

\copy (select * from submission) to 'submission1.csv' csv
