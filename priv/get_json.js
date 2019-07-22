var dbjson = [];
$(".reactable-data tr").each(function(){
    var e = $(this);
    var index = e.children("td:eq(1)").text();
    var e2 = e.children("td:eq(2)");
    var name = e2.attr("value");
    var url = "https://leetcode-cn.com" + e2.find("div a").attr("href");
    var solution_url = url + "/solution";
    var describe = e2.find("div a").text();
    var difficulty = e.children("td:eq(5)").children("span").text();
    // console.log({index: index, name: name, url: url, describe: describe});
    dbjson.push({index: index, name: name, describe: describe, difficulty: difficulty, url: url, solution_url: solution_url})
});
JSON.stringify(dbjson);

function downloadFile(fileName, content){
    // 创建隐藏的可下载链接
    var aLink = document.createElement('a');
    aLink.download = fileName;
    aLink.style.display = 'none';
     // 字符内容转变成blob地址
    var blob = new Blob([content]);
    aLink.href = URL.createObjectURL(blob);
    // 触发点击
    document.body.appendChild(aLink);
    aLink.click();
    // 然后移除
    document.body.removeChild(aLink);
}
downloadFile("algorithms.json", JSON.stringify(dbjson, null, 2));