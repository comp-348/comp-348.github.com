This website is built using `org-mode`, which is an Emacs markdown format pretty similar to normal 
markdown. Since this website is built using org-mode, the publishing system is also written in 
Emacs Lisp. The `build.el` file specifies how the system should be built. It's very simple, it 
just specifies the output directory for the HTML files and any additional assets (images, css, etc).

To build this website locally, you will need to use Emacs and org-mode, neither of which I think
it's fair asking you to learn, and so if you write the files in Markdown, I can convert them to 
org-mode using Pandoc to save you the trouble.

Files are named according to the format `<language>-subject.org`. The language just specifies which 
language in the course this file is related to, and the subject is just a couple work description
of what's covered in that webpage.
