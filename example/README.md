#Code
---

```
class _MimeconExampleState extends State<MimeconExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(25),
                child: const Text("Mimecon Example"),
              ),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: mimeTypeData.length,
                  itemBuilder: (context, index) {
                    String key = mimeTypeData.keys.elementAt(index);
                    return ListTile(
                      leading: Mimecon(
                        mimetype: mimeTypeData[key]!.mimetype,
                        color: mimeTypeData[key]!.color,
                        size: mimeTypeData[key]!.size,
                        isOutlined: mimeTypeData[key]!.isOutlined,
                      ),
                      title: Text(key),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Map<String, MimetypeEntity> mimeTypeData = {
  "Image jpg mimetype": MimetypeEntity(mimetype: "image/jpg", color: Colors.green, size: 40, isOutlined: false),
  "Pdf mimetype little": MimetypeEntity(mimetype: "application/pdf", color: Colors.blue, size: 25),
  "Pdf mimetype with only mimeType (default config)": MimetypeEntity(mimetype: "application/pdf"),
  "Html mimetype outlined ": MimetypeEntity(mimetype: "text/html", color: Colors.purple, isOutlined: true),
  "Generic mimetype ": MimetypeEntity(mimetype: "text/plain", color: Colors.brown, isOutlined: true),
};
```

# Ouput
---

![image](example.png)

