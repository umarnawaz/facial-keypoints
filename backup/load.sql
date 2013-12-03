set search_path to kaggle_facial_keypoints;

drop table raw_train cascade;
-- drop table raw_test;
-- drop table id_lookup;


create table raw_train(
       id serial,
       left_eye_center_x float,
       left_eye_center_y float,
       right_eye_center_x float,
       right_eye_center_y float,
       left_eye_inner_corner_x float,
       left_eye_inner_corner_y float,
       left_eye_outer_corner_x float,
       left_eye_outer_corner_y float,
       right_eye_inner_corner_x float,
       right_eye_inner_corner_y float,
       right_eye_outer_corner_x float,
       right_eye_outer_corner_y float,
       left_eyebrow_inner_end_x float,
       left_eyebrow_inner_end_y float,
       left_eyebrow_outer_end_x float,
       left_eyebrow_outer_end_y float,
       right_eyebrow_inner_end_x float,
       right_eyebrow_inner_end_y float,
       right_eyebrow_outer_end_x float,
       right_eyebrow_outer_end_y float,
       nose_tip_x float,
       nose_tip_y float,
       mouth_left_corner_x float,
       mouth_left_corner_y float,
       mouth_right_corner_x float,
       mouth_right_corner_y float,
       mouth_center_top_lip_x float,
       mouth_center_top_lip_y float,
       mouth_center_bottom_lip_x float,
       mouth_center_bottom_lip_y float,
       image text
);


-- create table raw_test(
--        image_id int,
--        image text
-- );


-- create table id_lookup(
--        row_id int,
--        image_id int,
--        feature_name text
-- );

\copy raw_train(left_eye_center_x,left_eye_center_y,right_eye_center_x,right_eye_center_y,left_eye_inner_corner_x,left_eye_inner_corner_y,left_eye_outer_corner_x,left_eye_outer_corner_y,right_eye_inner_corner_x,right_eye_inner_corner_y,right_eye_outer_corner_x,right_eye_outer_corner_y,left_eyebrow_inner_end_x,left_eyebrow_inner_end_y,left_eyebrow_outer_end_x,left_eyebrow_outer_end_y,right_eyebrow_inner_end_x,right_eyebrow_inner_end_y,right_eyebrow_outer_end_x,right_eyebrow_outer_end_y,nose_tip_x,nose_tip_y,mouth_left_corner_x,mouth_left_corner_y,mouth_right_corner_x,mouth_right_corner_y,mouth_center_top_lip_x,mouth_center_top_lip_y,mouth_center_bottom_lip_x,mouth_center_bottom_lip_y,image) from 'training.csv' csv header
-- \copy raw_test from 'test.csv' csv header
-- \copy id_lookup from 'IdLookupTable.csv' csv header
