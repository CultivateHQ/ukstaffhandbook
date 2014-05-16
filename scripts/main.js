var toggleToc = document.getElementById('toggleToc');
var toc = document.getElementById('toc');

toggleToc.onclick = function (evt) {
  evt.preventDefault();

  if (toc.classList.contains('show')) {
    toc.classList.remove('show');
  } else {
    toc.classList.add('show');
  }
};
