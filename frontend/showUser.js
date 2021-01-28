console.log("HELLO")
const queryParams = new URLSearchParams (window.location.search)
const userId = queryParams.get('id')

fetch(`http://localhost:3000/users/${userId}`)
  .then(response => response.json())
  .then(user => {
    const userDiv = document.createElement('div')
    userDiv.innerText = user.name
    const userProfile = document.getElementById("user-profile")
    userProfile.append(userDiv)
  })

// fetch(`http://localhost:3000/trails`)
//     .then(response => response.json())
//     .then(trails => {
//       trails.forEach(trail => {
//         console.log(trail.id)
//         console.log(trail.name)
//         const $trailOption = document.createElement('option')
//         $trailOption.value = `${trail.id}`
//         $trailOption.innerText = `${trail.name}`
//         const $trailSelect = document.getElementById('trail-dropdown')
//         $trailSelect.append($trailOption)
//       })
//     })

fetch("http://localhost:3000/trails")
    .then(response =>response.json())
    .then(trails => {
        trails.forEach(trail => {
        const $listTrailSection = document.getElementById('trail-dropdown')
        //create
        const $trailName = document.createElement('option')
        $trailName.value = `${trail.id}`
        $trailName.innerText = `${trail.name}`
        $listTrailSection.append($trailName)
        })
      })

    // for
    // for (trail = 0; trail < user.trails.length; trail++) {
    //   const trail_status = document.createElement("li")
    //   trail_status.innerText = user.trails[trail].name
    //   if(user.trails[trail].has_skiied === true){
    //     const hasSkiied = document.getElementById("has-skiied")
    //     hasSkiied.append(trail_status)
    //   } else {
    //     const notSkiied = document.getElementById("not-skiied")
    //     notSkiied.append(trail_status)
    //   }
    //   }
    // }