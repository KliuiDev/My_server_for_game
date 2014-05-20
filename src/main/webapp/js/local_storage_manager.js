window.fakeStorage = {
    _data: {},
    getItem: function (id) {
        return this._data.hasOwnProperty(id) ? this._data[id] : undefined;
    },
    removeItem: function (id) {
        return delete this._data[id];
    }
};
function LocalStorageManager() {
    this.gameStateKey = "gameState";
    var supported = this.localStorageSupported();
    this.storage = supported ? window.localStorage : window.fakeStorage;
}
LocalStorageManager.prototype.localStorageSupported = function () {
    var testKey = "test";
    var storage = window.localStorage;
    try {
        storage.setItem(testKey, "1");
        storage.removeItem(testKey);
        return true;
    } catch (error) {
        return false;
    }
};
// Best score getters/setters
LocalStorageManager.prototype.getBestScore = function () {
    var value = 0;
    var text = jQuery(".best-container").first().text().trim();
    if(text.length > 0) {
        value = +text;
    }
   return value;
};

LocalStorageManager.prototype.setBestScore = function (score) {
    jsonObj = { score: score };
    $.ajax({
        type : "POST",
        url : global.contextPath + "/game/save",
        data : jsonObj
    });

};
// Game state getters/setters and clearing
LocalStorageManager.prototype.getGameState = function () {
    var stateJSON = this.storage.getItem(this.gameStateKey);
    return stateJSON ? JSON.parse(stateJSON) : null;
};
LocalStorageManager.prototype.clearGameState = function () {
    this.storage.removeItem(this.gameStateKey);
};