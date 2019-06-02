function onProfileLoad(poet) {
    clearMessages();
    showContents(['profile-content']);
    const poetNameSpanEl = document.getElementById('poet-name');
    poetNameSpanEl.textContent = poet.forename + " " + poet.lastName;
}