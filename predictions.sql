set search_path to kaggle_facial_keypoints;

-- drop table predictions;

-- create table predictions(
--        id int,
--        left_eye_center_x float,
--        left_eye_center_y float,
--        right_eye_center_x float,
--        right_eye_center_y float,
--        left_eye_inner_corner_x float,
--        left_eye_inner_corner_y float,
--        left_eye_outer_corner_x float,
--        left_eye_outer_corner_y float,
--        right_eye_inner_corner_x float,
--        right_eye_inner_corner_y float,
--        right_eye_outer_corner_x float,
--        right_eye_outer_corner_y float,
--        left_eyebrow_inner_end_x float,
--        left_eyebrow_inner_end_y float,
--        left_eyebrow_outer_end_x float,
--        left_eyebrow_outer_end_y float,
--        right_eyebrow_inner_end_x float,
--        right_eyebrow_inner_end_y float,
--        right_eyebrow_outer_end_x float,
--        right_eyebrow_outer_end_y float,
--        nose_tip_x float,
--        nose_tip_y float,
--        mouth_left_corner_x float,
--        mouth_left_corner_y float,
--        mouth_right_corner_x float,
--        mouth_right_corner_y float,
--        mouth_center_top_lip_x float,
--        mouth_center_top_lip_y float,
--        mouth_center_bottom_lip_x float,
--        mouth_center_bottom_lip_y float
-- );

-- \copy predictions from 'predictions.tsv'
