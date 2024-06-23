CREATE INDEX "student_index" ON "students" ("id");
CREATE INDEX "student_name" ON "students" ("name");

CREATE INDEX "course_index" ON "courses" ("id");
CREATE INDEX "course_department" ON "courses" ("department");
CREATE INDEX "course_title_fall_2023" ON "courses" ("title", "semester") WHERE "semester" = 'Fall 2023';
