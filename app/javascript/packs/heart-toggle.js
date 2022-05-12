const heartToggle = () => {
  const liked = document.querySelectorAll(".heart")
  liked.forEach(like => {
    like.addEventListener("click", event => {
    like.classList.toggle("fa-heart-clicked")
  })
  })

}

export {heartToggle};
