
const partyHeader = document.getElementById('party');
const welcome = document.getElementsByClassName('welcome');
console.log(welcome)

export const htmlGenerator = (string, htmlElement) => {
    let element = document.createElement("p");
    const newContent = document.createTextNode(string);
    element.appendChild(newContent);
    welcome.insertBefore(element, partyHeader.nextSibling);
};

htmlGenerator('Party Time.', partyHeader);