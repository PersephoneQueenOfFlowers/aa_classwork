
const partyHeader = document.getElementById('party');
const welcome = document.getElementsByClassName('welcome');

export const htmlGenerator = (string, htmlElement) => {
    let element = document.createElement("p");
    element.innerText = string;
    htmlElement.appendChild(element);
    
};

htmlGenerator('Party Time.', partyHeader);

