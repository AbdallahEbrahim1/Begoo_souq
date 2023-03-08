part of 'SortByWidgetsImports.dart';

class BuildButtons extends StatelessWidget {
  const BuildButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DefaultButton(
            width: MediaQuery.of(context).size.width * .39,
            color: MyColors.button,
            textColor: MyColors.white,
            borderRadius: BorderRadius.circular(10),
            title: "Apply",
            onTap: () {},
          ),
          DefaultButton(
            width: MediaQuery.of(context).size.width * .4,
            color: MyColors.black,
            textColor: MyColors.white,
            borderRadius: BorderRadius.circular(10),
            title: "Cancel",
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
