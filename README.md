<p>&nbsp;</p>
<p align="center">
<img src="./img/docs_logo.svg" width=500>
</p>

<div align="center">
  <h4>
    <a href="https://docs.DAODISEO.money/">Documentation Website</a>
  </h4>
</div>



## Building

## Getting the repo

New instruction by Ev3lynq coming soon :-)

If you are contributing to the repository, make sure to fork this (DAODISEO) repo, and then clone your own fork. You will need to do this to make creating pull requests easier.

```bash
git clone https://github.com/<your-username>/docs
```

## Test locally with Docker

First build the local Docker container:

```
make docker-make
```

Then you're ready to build the site:

```
make docker-build
```

You can view the site in your browser by navigating to `index.html` located in `<PATH_TO_CLONED_REPO>/_build/html/index.html`.

Make sure to run `make docker-build` each time you save your changes to view them live.

Potential issues and solutions:

1. When executing in browser newly generated index.html only raw, not formatted data are displayed. Solution:

Serving your HTML file via a local server is a common method to bypass the security restrictions browsers place on local files, especially when those files need to access other local files like CSS, JavaScript, or images. Here's a step-by-step guide on how to do this using Python's built-in HTTP server:

Open a terminal (Command Prompt on Windows, Terminal on macOS and Linux). Use the cd command to navigate to the directory where your index.html file is located . For example, if your file is in /home/freeman/docs/_build/html, you would type cd /home/freeman/docs/_build/html.

Start the Python HTTP Server: In the terminal, run the following command: 

python3 -m http.server.

This command starts a simple HTTP server in the current directory.
By default, the server runs on port 8000. If you need to use a different port, you can specify it by adding the port number at the end, like python3 -m http.server 8080.
Access Your Site:

Open a web browser and go to http://localhost:8000.
This URL points to your local server. You should see a listing of files in the directory or your index.html file if it's present.
Click on index.html or directly navigate to http://localhost:8000/index.html to view your page.

### Adding an article

All articles are markdown files, placed under the `/docs/` directory. You can create folders underneath the `/docs` directory, such as the following:

```
/docs
    /dev
        README.md
        spec-auth.md
        ...
    /node
        README.md
        installation.md
        ...
    README.md
```

Notice how `README.md` serves as the default root of the folder.

### Editing the navigation

To edit the navigation to include your new article, edit `/docs/.vuepress/config.js` and add your new article in the appropriate section in `themeConfig.sidebar`, following the other paths as examples.

## Organization

### Module Specs

Each module should be documented with the following subheaders:

1. Abstract (no header)

   Maximum 2 paragraphs to explain, in broad terms, the general purpose of the module, to provide a "big-picture" perspective of how the module provides functionality and organization to the ODISEO protocol, and how it interacts with other modules.

2. Concepts

   A section dedicated to the concepts that are required to understand how the module works. This may include:

   - layman primer
   - math formulas (formatted with LaTeX)
   - diagrams

3. Data

   A section that covers the various data structures used by the module.

4. State

   A section that covers the keeper state for that module key-value store

5. Messages

   A section that covers the various types of messages and gives a rough explanation on how they are handled.

6. Proposals

   A section that covers the related governance proposals

7. Transitions

   A section that covers the begin-blocker and end-blocker transition functions

8. Parameters

   A section that covers the chain parameters that can be modified by governance via the `params` module

## Built With

- Sphinx Book Theme

## License

This software is licensed under the MIT license. See [LICENSE](./LICENSE) for full disclosure.

© 2024 DAODISEO Fundation

<hr/>

<p>&nbsp;</p>
<p align="center">
    <a href="https://www.DAODISEO.money/"><img src="http://www.DAODISEO.money/logos/DAODISEO_logo.svg" align="center" width=200/></a>
</p>
<div align="center">
  <sub><em>Powering the innovation of money.</em> </sub>
</div># dao_docs
