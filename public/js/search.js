function searchItem(name) {
    var req = new XMLHttpRequest();
    req.onreadystatechange = function () {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("list-item-search").innerHTML = this.responseText;
      }
    };
    req.open("GET", "/Menu/search/" + name, true);
    req.send();
}
function openSearch() {
    document.querySelector("#container-search").style.display = "block";
  }
function closeSearch() {
    document.querySelector("#container-search").style.display = "none";
  }
