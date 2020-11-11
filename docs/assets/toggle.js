/*
 * I know there are things in this JavaScript that are bad practice or outdated.
 * Using `var` instead of `const`, using a direct `for` loop, not using
 * document.querySelector, etc.
 *
 * I want this JavaScript to be as fast as possible and run everywhere, so I'm
 * using the most simple constructs for everything.
 */
window.onload = event => {
    document.getElementsByClassName("toggle")[0]
            .addEventListener("click", toggleTheme);

    var spoilers = document.getElementsByClassName("toggle-spoiler");
    for (var i = 0; i < spoilers.length; i++) {
        spoilers[i].addEventListener("click", toggleSpoiler)
    }
}

function toggleTheme() {
    if (theme.href.includes("assets/dark-theme.css")) {
        theme.href = "assets/light-theme.css";
    }
    else {
        theme.href = "assets/dark-theme.css";
    }
}
    
function toggleSpoiler(event) {
    var spoiledArea = event.target.nextElementSibling;
    if (window.getComputedStyle(spoiledArea, null).display == "none") {
        event.target.innerText = "Hide answer";
        spoiledArea.style.display = "block";
    }
    else {
        event.target.innerText = "Show answer";
        spoiledArea.style.display = "none";
    }
}
