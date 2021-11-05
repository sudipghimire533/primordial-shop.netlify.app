function toggle_menu_visibility() {
    let target = document.getElementById('i-am-menu-toggle');
    target.classList.contains('block')? target.classList.remove('block') : target.classList.add('block');
    target.classList.contains('hidden')? target.classList.remove('hidden') : target.classList.add('hidden');
}

