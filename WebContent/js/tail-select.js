//進階搜尋select
document.addEventListener("DOMContentLoaded", function () {

    var instance = tail.select("#search-select", {
        deselect: true,
        descriptions: true,
        multiple: true,
        multiSelectAll: true,
        placeholder: "請選擇",
        search: true,
        height: 300,
        width: 220,
        locale: "en",
        search: "請輸入..",
        all: "全選",
        none: "清除",

        // animate: true,
        // classNames: null,
        // csvOutput: false,
        // csvSeparator: ",",
        // descriptions: true,
        // deselect: true,
        // disabled: false,                // NEW IN 0.5.0
        // height: 300,
        // width: 250,
        // hideDisabled: false,
        // hideSelected: false,
        // // items: items,
        // locale: "en",                   // NEW IN 0.5.0
        // multiple: true,
        // multiLimit: Infinity,           // UPDATE IN 0.5.0
        // multiPinSelected: true,        // NEW IN 0.5.0
        // multiContainer: false,          // UPDATE IN 0.5.0
        // multiShowCount: true,
        // multiShowLimit: true,           // NEW IN 0.5.0
        // multiSelectAll: true,
        // multiSelectGroup: false,
        // openAbove: null,
        // placeholder: '請選擇',
        // search: true,
        // searchFocus: true,
        // searchMarked: true,
        // sortItems: false,
        // sortGroups: false,
        // sourceBind: false,              // NEW IN 0.5.0
        // sourceHide: true,               // NEW IN 0.5.0
        // startOpen: true,
        // stayOpen: false,                // UPDATED IN 0.5.0
        // cbComplete: undefined,          // NEW IN 0.5.0
        // cbEmpty: undefined,             // NEW IN 0.5.0
        // cbLoopItem: undefined,
        // cbLoopGroup: undefined
    });
});
