const star1 = document.getElementById('star-1');
const star2 = document.getElementById('star-2');
const star3 = document.getElementById('star-3');
const star4 = document.getElementById('star-4');
const star5 = document.getElementById('star-5');
star1.addEventListener('click', function () {
    star1.innerHTML = "★"
    star2.innerHTML = "☆"
    star3.innerHTML = "☆"
    star4.innerHTML = "☆"
    star5.innerHTML = "☆"
    star1.classList.add('true')
    star2.classList.remove('true')
    star3.classList.remove('true')
    star4.classList.remove('true')
    star5.classList.remove('true')
    document.getElementById("sugie")
    console.log(document.getElementById("sugie").value)
    document.getElementById("sugie").value = "1"
    console.log(document.getElementById("sugie").value)
});
star2.addEventListener('click', function () {
    star1.innerHTML = "★"
    star2.innerHTML = "★"
    star3.innerHTML = "☆"
    star4.innerHTML = "☆"
    star5.innerHTML = "☆"
    star1.classList.remove('true')
    star2.classList.add('true')
    star3.classList.remove('true')
    star4.classList.remove('true')
    star5.classList.remove('true')
    document.getElementById("sugie")
    console.log(document.getElementById("sugie").value)
    document.getElementById("sugie").value = "2"
    console.log(document.getElementById("sugie").value)
});
star3.addEventListener('click', function () {
    star1.innerHTML = "★"
    star2.innerHTML = "★"
    star3.innerHTML = "★"
    star4.innerHTML = "☆"
    star5.innerHTML = "☆"
    star1.classList.remove('true')
    star2.classList.remove('true')
    star3.classList.add('true')
    star4.classList.remove('true')
    star5.classList.remove('true')
    document.getElementById("sugie")
    console.log(document.getElementById("sugie").value)
    document.getElementById("sugie").value = "3"
    console.log(document.getElementById("sugie").value)
});
star4.addEventListener('click', function () {
    star1.innerHTML = "★"
    star2.innerHTML = "★"
    star3.innerHTML = "★"
    star4.innerHTML = "★"
    star5.innerHTML = "☆"
    star1.classList.remove('true')
    star2.classList.remove('true')
    star3.classList.remove('true')
    star4.classList.add('true')
    star5.classList.remove('true')
    document.getElementById("sugie")
    console.log(document.getElementById("sugie").value)
    document.getElementById("sugie").value = "4"
    console.log(document.getElementById("sugie").value)
});
star5.addEventListener('click', function () {
    star1.innerHTML = "★"
    star2.innerHTML = "★"
    star3.innerHTML = "★"
    star4.innerHTML = "★"
    star5.innerHTML = "★"
    star1.classList.remove('true')
    star2.classList.remove('true')
    star3.classList.remove('true')
    star4.classList.remove('true')
    star5.classList.add('true')
    document.getElementById("sugie")
    console.log(document.getElementById("sugie").value)
    document.getElementById("sugie").value = "5"
    console.log(document.getElementById("sugie").value)
});
