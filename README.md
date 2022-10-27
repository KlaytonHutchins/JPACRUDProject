# JPACRUDProject - Music

## Details
This project allows a user to Create, Read, Update, and Delete Songs from a database. It uses a front end to accomplish the CRUD functions.

- The Navbar is accessible on all pages of the website. It allows the user to return to the home page, navigate to a page which displays a list of all songs in the database, navigate to a page which allows the user to add a new song to the database, or to search the database for a title/artist/album and see a list of matching songs.

- The Home page displays a list of 5 randomly generated songs from the database. The user can listen to any of these 5 songs via an embedded youtube link, or navigate to that song's page via a hyperlink.

- The View All Songs page simply lists all songs in the database, all of their information, and hyperlinks to that song's page.

- The Add New Song page is a form which allows the user to enter applicable information about a given song and submit it to be added to the database. Although the title column is a "NOT NULL" column in the database, all fields are optional on the website form. I made a choose to simply set the title of the film to a single space if the field was empty. Returning an error to the user would be a better option and something I would like to implement in the future.

- The Search Bar allows the user to search the database for a list of songs that have a title, artist, or album field which match the search term. The search function also allows for partial searches.

- The Update Song page is only accessible from an individual song's page. The "Update Song Info" button redirects to a page very similar to the Add New Song page, but with the existing values autofilled into the appropriate fields.

- The Delete Song button is also only accessible from an individual song's page, like the Update button. The Delete This Song button simply removes the song from the database. I would like to add a pop up window to ask if the user is sure they would like to delete the song.

## What I Learned
I learned a lot with this project. The following list is not exhaustive:

- How to use bootstrap to get a desired look. I had to do a lot of fiddling with rows and columns to get the individual song page to look right.

- I chose to use a bootstrap switch for a field on the new and update forms. I learned that the default return is the string "on" when checked and no return when not checked.

- I learned how to embed a youtube video in html. Surprisingly easy.

- How to obtain a random list of objects from a database. I wanted to have the Home page display only 5 songs that were randomly generated, and it proved to be a little more difficult than anticipated. Specifically, the code is on lines 40-56 in the SongDAOImpl class.

## Technologies Used
Java, Eclipse/Spring Tool Suite, Spring, Git, MySQL, MySQL Workbench, MAMP

## Contact Information

Email:
klaytonhutchins@gmail.com

GitHub:
www.github.com/KlaytonHutchins
