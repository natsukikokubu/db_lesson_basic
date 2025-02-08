-- Q1---
CREATE TABLE departments (
department_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20) NOT NULL,
created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Q2---
ALTER TABLE people ADD department_id INT UNSIGNED DEFAULT NULL;
ALTER TABLE people MODIFY department_id INT UNSIGNED DEFAULT NULL AFTER email;
ALTER TABLE people MODIFY created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE people MODIFY updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

-- Q3---
INSERT INTO departments (name)
    VALUES
      ('営業'),
      ('開発'),
      ('経理'),
      ('人事'),
      ('情報システム');

INSERT INTO people (name, email, department_id, age, gender)
    VALUES
      ('山田一郎', 'yamada@gizumo.jp', 1, 25, 1),
      ('佐藤花子', 'sato@gizumo.jp', 1, 30, 2),
      ('高橋ニ郎', 'takahashi@gizumo.jp', 1, 35, 1),
      ('伊藤三郎', 'ito@gizumo.jp', 2, 40, 1),
      ('渡辺みちこ', 'watanabe@gizumo.jp', 2, 45, 2),
      ('山本四郎', 'yamamoto@gizumo.jp', 2, 50, 1),
      ('中村五郎', 'nakamura@gizumo.jp', 2, 55, 1),
      ('小林六郎', 'kobayashi@gizumo.jp', 3, 60, 1),
      ('加藤七郎', 'kato@gizumo.jp', 4, 65, 1),
      ('吉田八郎', 'yoshida@gizumo.jp', 5, 70, 1);

INSERT INTO reports (person_id, content)
    VALUES
      ('7', '営業部の売り上げが伸びています。'),
      ('8', '取引先の方にお会いしました。'),
      ('9', '社内ミーティングに参加しました。'),
      ('10', '新システムの導入を検討しています。'),
      ('11', '新しい言語の学習をしました。'),
      ('12', '社内のサイト制作をしました。'),
      ('13', 'アプリ開発に取り掛かりました。'),
      ('14', '年末調整の準備をしました。'),
      ('15', '新入社員の研修を行いました。'),
      ('16', 'システムの不具合の対応をしました。');


-- Q4---
UPDATE people SET department_id = 1 WHERE person_id = 1;
UPDATE people SET department_id = 2 WHERE person_id = 2;
UPDATE people SET department_id = 3 WHERE person_id = 3;
UPDATE people SET department_id = 4 WHERE person_id = 4;
UPDATE people SET department_id = 5 WHERE person_id = 6;

-- Q5---
SELECT name, age FROM people WHERE gender = 1 ORDER BY age DESC;

-- Q6---
SELECT
  `name`, `email`, `age`
FROM
  `people`
WHERE
  `department_id` = 1
ORDER BY
  `created_at`;

peopleテーブルのdepartment_idが1のレコードから
name, email, ageの3つのカラムを取得し、created_atの昇順で並べます。
