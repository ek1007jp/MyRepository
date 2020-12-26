function mainSyori(strName1, strName2) {
    var fso = new ActiveXObject("Scripting.FileSystemObject");
    var otf1 = fso.OpenTextFile(strName1, 1);
    var otf2 = fso.OpenTextFile(strName2, 2, true);
    while (!otf1.AtEndOfStream) {
        var buff = otf1.ReadLine();
        otf2.WriteLine(buff);
    }
    otf1.close();
    otf2.close();
    WScript.Echo("Finish");
}

mainSyori("README.txt", "output.txt");
