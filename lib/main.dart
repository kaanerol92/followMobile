import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

//flutter run -d web-server --web-hostname 192.168.1.28 --web-port 8989

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  bool value01 = true;
  bool value02 = true;
  bool value03 = true;
  bool value04 = true;
  bool value05 = true;
  bool value06 = true;
  bool value07 = true;
  bool value08 = true;
  bool value09 = true;
  bool value10 = true;
  bool value11 = true;
  bool value12 = true;
  bool value13 = true;
  bool value14 = true;
  bool value15 = true;
  bool value16 = true;
  bool value17 = true;

  var selectedSirket = "YZL1907013";

  TabController _tabController;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      yazilimPage(),
      destekPage(),
      sgkPage()
    ];

    return Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.developer_mode),
              title: Text('Yazılım'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help),
              title: Text('Destek'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_data_setting),
              title: Text('SGK'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueAccent[800],
          onTap: _onItemTapped,
        ));
  }

  Widget yazilimPage() {
    List<Widget> list = List();
    list.add(yazilimListPage());
    list.add(yazilimFilterPage());
    list.add(Icon(Icons.last_page));

    return listWidget(list);
  }

  Widget yazilimListPage() {
    return DataTable(columns: [
      DataColumn(label: Text("Talep No")),
      DataColumn(label: Text("Konu")),
      DataColumn(label: Text("Durumu")),
    ], rows: [
      DataRow(cells: [DataCell(Text("1")), DataCell(Text("Deneme Konu")), DataCell(Text("TEST OK"), onTap: () => showDialog(context: context, child: Dialog(
        child: Container(
          height: 200,
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Talep No : 1"),
              Text("Deneme Konu"),
              Text("AÇIKLAMA"),
            ],
          ))),
      )))]),
      DataRow(cells: [DataCell(Text("2")), DataCell(Text("Deneme")), DataCell(Text("TEST BUG"))]),
      DataRow(cells: [DataCell(Text("3")), DataCell(Text("Konu")), DataCell(Text("COMMIT"))]),
      DataRow(cells: [DataCell(Text("4")), DataCell(Text("Kaan")), DataCell(Text("TEST"))]),
      DataRow(cells: [DataCell(Text("5")), DataCell(Text("CoreTEX")), DataCell(Text("AKTIF"))]),
      DataRow(cells: [DataCell(Text("6")), DataCell(Text("Enviro")), DataCell(Text("YAPILDI"))]),
    ]);
  }

  Widget yazilimFilterPage() {
    List<DropdownMenuItem<String>> sirketList = new List();
    sirketList.add(DropdownMenuItem(
      child: Text("Boş"),
      value: "",
    ));
    sirketList.add(DropdownMenuItem(
      child: Text("Kaan Erol"),
      value: "YZL1907013",
    ));
    sirketList.add(DropdownMenuItem(
      child: Text("Emre Yılmaz"),
      value: "YZL1908014",
    ));
    sirketList.add(DropdownMenuItem(
      child: Text("Murat Feyzioğlu"),
      value: "YZL1808012",
    ));
    sirketList.add(DropdownMenuItem(
      child: Text("Umut Yapıcı"),
      value: "YZL1507003",
    ));
    sirketList.add(DropdownMenuItem(
      child: Text("Tunahan Okunan"),
      value: "YZL1709005",
    ));
    sirketList.add(DropdownMenuItem(
      child: Text("Ertan Eryılmaz"),
      value: "YZL200915",
    ));

    return SingleChildScrollView(
      padding: EdgeInsets.all(15),
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 200,
                child: InputDecorator(
                  decoration: InputDecoration(
                      labelText: "Yazılım ilgili",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: Text(
                        "Yazılım ilgili",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      value: selectedSirket,
                      isDense: true,
                      onChanged: (newValue) {
                        setState(() {
                          selectedSirket = newValue;
                        });
                      },
                      items: sirketList,
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () => _tabController.animateTo(0),
                child: Text("Listele"),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(width: 0),
                      borderRadius: BorderRadius.circular(5)),
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                        children: [
                          Checkbox(
                              value: value01,
                              onChanged: (newVal) {
                                setState(() {
                                  value01 = newVal;
                                });
                              }),
                          Text("01-Değerlendirme"),
                          Checkbox(
                              value: value02,
                              onChanged: (newVal) {
                                setState(() {
                                  value02 = newVal;
                                });
                              }),
                          Text("02-Görüşme"),
                          Checkbox(
                              value: value03,
                              onChanged: (newVal) {
                                setState(() {
                                  value03 = newVal;
                                });
                              }),
                          Text("03-Test"),
                        ],
                      ),
                      TableRow(
                        children: [
                          Checkbox(
                              value: value04,
                              onChanged: (newVal) {
                                setState(() {
                                  value04 = newVal;
                                });
                              }),
                          Text("04-Aktif"),
                          Checkbox(
                              value: value05,
                              onChanged: (newVal) {
                                setState(() {
                                  value05 = newVal;
                                });
                              }),
                          Text("05-Geliştirme"),
                          Checkbox(
                              value: value06,
                              onChanged: (newVal) {
                                setState(() {
                                  value06 = newVal;
                                });
                              }),
                          Text("06-Yapıldı"),
                        ],
                      ),
                      TableRow(
                        children: [
                          Checkbox(
                              value: value07,
                              onChanged: (newVal) {
                                setState(() {
                                  value07 = newVal;
                                });
                              }),
                          Text("07-Araştırma"),
                          Checkbox(
                              value: value08,
                              onChanged: (newVal) {
                                setState(() {
                                  value08 = newVal;
                                });
                              }),
                          Text("08-Uzun Vadeli"),
                          Checkbox(
                              value: value09,
                              onChanged: (newVal) {
                                setState(() {
                                  value09 = newVal;
                                });
                              }),
                          Text("09-Bekleme"),
                        ],
                      ),
                      TableRow(
                        children: [
                          Checkbox(
                              value: value10,
                              onChanged: (newVal) {
                                setState(() {
                                  value10 = newVal;
                                });
                              }),
                          Text("10-İptal"),
                          Checkbox(
                              value: value11,
                              onChanged: (newVal) {
                                setState(() {
                                  value11 = newVal;
                                });
                              }),
                          Text("11-Bilgi"),
                          Checkbox(
                              value: value12,
                              onChanged: (newVal) {
                                setState(() {
                                  value12 = newVal;
                                });
                              }),
                          Text("12-Çözülemedi"),
                        ],
                      ),
                      TableRow(
                        children: [
                          Checkbox(
                              value: value13,
                              onChanged: (newVal) {
                                setState(() {
                                  value13 = newVal;
                                });
                              }),
                          Text("13-Geçersiz Talep"),
                          Checkbox(
                              value: value14,
                              onChanged: (newVal) {
                                setState(() {
                                  value14 = newVal;
                                });
                              }),
                          Text("14-Arşiv"),
                          Checkbox(
                              value: value15,
                              onChanged: (newVal) {
                                setState(() {
                                  value15 = newVal;
                                });
                              }),
                          Text("15-Test OK"),
                        ],
                      ),
                      TableRow(
                        children: [
                          Checkbox(
                              value: value16,
                              onChanged: (newVal) {
                                setState(() {
                                  value16 = newVal;
                                });
                              }),
                          Text("16-Test BUG"),
                          Checkbox(
                              value: value17,
                              onChanged: (newVal) {
                                setState(() {
                                  value17 = newVal;
                                });
                              }),
                          Text("17-Commit"),
                          Text(""),
                          Text("")
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget yazilimOrderPage() {
    return Column();
  }

  Widget destekPage() {
    List<Widget> list = List();
    list.add(Icon(Icons.leak_add));
    list.add(Icon(Icons.leak_remove));
    list.add(Icon(Icons.library_books));

    return listWidget(list);
  }

  Widget sgkPage() {
    List<Widget> list = List();
    list.add(Icon(Icons.first_page));
    list.add(Icon(Icons.layers));
    list.add(Icon(Icons.last_page));

    return listWidget(list);
  }

  Widget listWidget(List<Widget> list) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.list),
              text: "Liste",
              iconMargin: EdgeInsets.all(0),
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: "Filtre",
              iconMargin: EdgeInsets.all(0),
            ),
            Tab(
              icon: Icon(Icons.compare_arrows),
              text: "Sıralama",
              iconMargin: EdgeInsets.all(0),
            ),
          ],
        ),
        title: Text('Follow Mobile'),
      ),
      body: TabBarView(
        children: list,
        controller: _tabController,
      ),
    );
  }
}
