import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/model/common_model.dart';
import 'package:login_ui/model/user_model.dart';
import 'package:login_ui/utils/data_service.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  Size? _size;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _size = MediaQuery.of(context).size;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: FutureBuilder<CommonModel?>(
      future: JsonDataService.getDataOther(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('your app has an error'),
          );
        }

        return ReorderableListView.builder(
          shrinkWrap: true,
          itemCount: snapshot.data!.data!.length,
          itemBuilder: (context, index) {
            final UserModel user = snapshot.data!.data![index];
            return _customListTile(user, index);
          },
          onReorder: (oldIndex, newIndex) {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final user = snapshot.data!.data!.removeAt(oldIndex);
            snapshot.data!.data!.insert(newIndex, user);
            // setState(() {});
          },
        );
      },
    )));
  }

  Widget _customListTile(UserModel? model, int? indexId) {
    return Card(
      key: ValueKey<String?>(indexId.toString()),
      child: ListTile(
        title: Text(model!.name!),
        subtitle: Text(model.profession!),
        trailing: Text(model.age.toString()),
      ),
    );
  }
}
