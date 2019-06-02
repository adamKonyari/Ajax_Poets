const OK = 200;
const BAD_REQUEST = 400;
const UNAUTHORIZED = 401;
const NOT_FOUND = 404;
const INTERNAL_SERVER_ERROR = 500;

let loginContentDivEl;
let profileContentDivEl;


function newInfo(targetEl, message) {
    newMessage(targetEl, 'info', message);
}

function newMessage(targetEl, cssClass, message) {
    clearMessages();

    const pEl = document.createElement('p');
    pEl.classList.add('message');
    pEl.classList.add(cssClass);
    pEl.textContent = message;

    targetEl.appendChild(pEl);
}

function newError(targetEl, message) {
    newMessage(targetEl, 'error', message);
}

function clearMessages() {
    const messageEls = document.getElementsByClassName('message');
    for (let i = 0; i < messageEls.length; i++) {
        const messageEl = messageEls[i];
        messageEl.remove();
    }
}

function onNetworkError() {
    document.body.remove();
    const bodyEl = document.createElement('body');
    document.appendChild(bodyEl);
    newError(bodyEl, 'Network error, please try reloaing the page');
}

function showContents(ids) {
    const contentEls = document.getElementsByClassName('content');
    for (let i = 0; i < contentEls.length; i++) {
        const contentEl = contentEls[i];
        if (ids.includes(contentEl.id)) {
            contentEl.classList.remove('hidden');
        } else {
            contentEl.classList.add('hidden');
        }
    }
}

function hasAuthorization() {
    return localStorage.getItem('poet') !== null;
}

function setAuthorization(poet) {
    return localStorage.setItem('poet', JSON.stringify(poet));
}

function getAuthorization() {
    return JSON.parse(localStorage.getItem('poet'));
}

function setUnauthorized() {
    return localStorage.removeItem('poet');
}

function onLoad() {
    loginContentDivEl = document.getElementById('login-content');
    profileContentDivEl = document.getElementById('profile-content');
    const loginButtonEl = document.getElementById('login-button');
    loginButtonEl.addEventListener('click', onLoginButtonClicked);

    if(hasAuthorization()) {
        onProfileLoad(getAuthorization());
    }
}

document.addEventListener('DOMContentLoaded', onLoad);
