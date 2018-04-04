function find() {
    var eventActive = document.getElementsByClassName("item-active");
    sessionStorage.SessionName = "eventActive";
    sessionStorage.getItem("eventActive");
    sessionStorage.setItem("SessionName", "SessionData");
}