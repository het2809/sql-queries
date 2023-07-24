CREATE DATABASE Instagram;

USE Instagram; 
-- --USERS TABLE
CREATE TABLE USERS (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(255) UNIQUE NOT NULL,
    Created_at TIMESTAMP DEFAULT NOW()
);

-- --PHOTOS TABLE
CREATE TABLE PHOTOS (
Id INT AUTO_INCREMENT PRIMARY KEY,
Image_url VARCHAR(255) NOT NULL,
User_id INT NOT NULL,
Created_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY(User_id) references USERS(ID));

-- --COMMENTS TABLE
CREATE TABLE Comments(
Id INT AUTO_INCREMENT PRIMARY KEY,
Comment_text VARCHAR(255) NOT NULL,
User_id INT NOT NULL,
Photo_id INT NOT NULL,
Created_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY (User_id) references Users(Id),
FOREIGN KEY (Photo_id) references PHOTOS(Id));

-- --LIKE TABLE
CREATE TABLE LIKES(
User_id INT NOT NULL,
Photo_id INT NOT NULL,
Created_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY (User_id) references USERS(Id),
FOREIGN KEY (Photo_id) references PHOTOS(Id));

-- --FOLLOWS TABLE
CREATE TABLE follows (
    follower_id INTEGER NOT NULL,
    followee_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES users(id),
    FOREIGN KEY(followee_id) REFERENCES users(id),
    PRIMARY KEY(follower_id, followee_id)
);

SELECT *  FROM USERS
JOIN PHOTOS ON USERS.ID = PHOTOS.User_id 
JOIN Comments ON PHOTOS.ID = Comments.Photo_id
JOIN LIKES ON PHOTOS.ID = LIKES.Photo_id
JOIN Follows ON USERS.ID = follows.follower_id;




