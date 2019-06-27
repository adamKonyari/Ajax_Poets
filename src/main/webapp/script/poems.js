function onPoemClicked() {
    const poemId = this.getAttribute('poemId');
    const poemList = JSON.parse(localStorage.getItem('poemList'));

    for (let i = 0; i < poemList.length; i++) {
        const poem = poemList[i];
        if (poemId == poem.id) {
            const pEl = document.createElement('p');
            pEl.innerHTML = poem.content;
            const poemDivEl = document.getElementById('poem-content');
            while (poemDivEl.firstChild) {
                poemDivEl.removeChild(poemDivEl.firstChild);
            }
            poemDivEl.appendChild(pEl);
            break;
        }
    }
}

function onPoemsReceived() {
    const text = this.responseText;
    localStorage.setItem('poemList', text);
    const poemList = JSON.parse(text);
    const poemTitlesDivEl = document.getElementById('poem-titles-content');
    for (let i = 0; i < poemList.length; i++) {
        const poem = poemList[i];
        const pEl = document.createElement('p');
        pEl.setAttribute('poemId', poem.id);
        pEl.addEventListener('click', onPoemClicked);
        pEl.addEventListener('mouseover', () => {
            pEl.style = 'cursor: pointer;';
        });
        pEl.textContent = poem.title;
        poemTitlesDivEl.appendChild(pEl);
    }
}

function loadPoems(poet) {
    clearMessages();
    showContents(['profile-content', 'poem-titles-content', 'poem-content']);
    const poetNameSpanEl = document.getElementById('poet-name');
    poetNameSpanEl.textContent = poet.forename + " " + poet.lastName;

    const id = poet.id;
    const xhr = new XMLHttpRequest();
    xhr.addEventListener('load', onPoemsReceived);
    xhr.open('GET', 'protected/poems?id=' + id);
    xhr.send();
}