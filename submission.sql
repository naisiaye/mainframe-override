--Find post that includes "dad" and "emptystack" 
SELECT * FROM forum_posts WHERE content ILIKE '%dad%' AND content ILIKE '%emptystack%';
--Found one post on 4-8-2048 about get rich fast with self-driving cars by "smart-money-44"


-- Locate smart-money-44's account information
SELECT * FROM forum_accounts WHERE username = 'smart-money-44';
-- Found name associated with 'smart-money-44' is Brad Steele

-- Found only a Brad Smith in emptystack_accounts, no Brad Steele
 SELECT * FROM forum_accounts WHERE first_name = 'Brad';


 --Try to find by last name Steele
 SELECT * FROM emptystack_accounts WHERE  last_name = 'Steele';  
 --Found Andrew Steele and Lance Steele but no Brad Steele
-- Andrew Steele's username is "triple-cart-38" and password is "password456"
-- Lance Steele's username is "lance-main-11" and password is "password789"

-- Tried Andrew Steele's credentials in node mainframe and was able to log in and created emptystack.sql

-- logged out of mainframe and ran "psql -f emptystack.sql"
-- ran psql and logged 
-- \c mainframe_override
-- \d now shows emptystack_messages and emptystack_projects tables


-- Search emptystack_messages for "taxi"
SELECT * FROM emptystack_messages WHERE subject ILIKE '%taxi%';
-- Found message with subject "Project TAXI" from "your-boss-99"

-- Try to find "your-boss-99" account information
SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';
-- Found that "your-boss-99" is Sklyer Singer
-- Username is 'your-boss-99'
-- Password is 'notagaincarter'


--Need to find prodject id for Project TAXI
SELECT * FROM emptystack_projects WHERE code ILIKE '%taxi%';
-- Found Project ID 
-- The project ID is 'DczE0v2b'

-- run "node mainframe -stop"
-- entered credentials and project ID and successfully shut down the Project. 