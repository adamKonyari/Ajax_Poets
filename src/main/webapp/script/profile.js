function onProfileLoad(poet) {
    clearMessages();
    showContents(['profile-content', 'poem-list-content']);
    const poetNameSpanEl = document.getElementById('poet-name');
    poetNameSpanEl.textContent = poet.forename + " " + poet.lastName;

    const xhr = new XMLHttpRequest();
    xhr.addEventListener('load', onPoemsResponse)
    xhr.open('GET', )

}