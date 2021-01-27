console.log('connected to js')
const backEndURL = "http://127.0.0.1:3000/"

fetch(backEndURL + 'users')
    .then( response => response.json())
    .then( users =>
        users.forEach(user => {
        const $allUsers = document.querySelector('#all-users-section')

        //create

        const $userName = document.createElement('h3')

        $userName.innerText = user.name

        $allUsers.append($userName)
    }))
