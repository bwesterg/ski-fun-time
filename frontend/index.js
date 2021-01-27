console.log('connected to js')
const backEndURL = "http://127.0.0.1:3000/"

fetch(backEndURL + 'users')
    .then( response => response.json())
    .then( users =>
        users.forEach(user => {
        const $allUsers = document.querySelector('#all-users-section')

        //create

        const $userName = document.createElement('h3')

        $userName.innerHTML = `<a href="http://localhost:3001/showUser.html?id=${user.id}">${user.name}</a>`

        $allUsers.append($userName)
    }))
