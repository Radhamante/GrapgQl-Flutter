import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter_5_moc/views/history_page/cubit/borrowable_history_cubit.dart';

class UserHistoryPage extends StatelessWidget {
  UserHistoryPage({Key? key}) : super(key: key);
  List<String> bookBorrowedList = [
    "livre Emprunté 1",
    "livre Emprunté 2",
    "livre Emprunté 3",
    "livre Emprunté 4",
    "livre Emprunté 5",
    "livre Emprunté 6",
  ];
  List<String> dateDeDebut = [
    "dateDeDebut1",
    "dateDeDebut2",
    "dateDeDebut3",
    "dateDeDebut4",
    "dateDeDebut5",
    "dateDeDebut6",
  ];
  List<String> dateDeFin = [
    "dateDeFin1",
    "dateDeFin2",
    "dateDeFin3",
    "dateDeFin4",
    "dateDeFin5",
    "dateDeFin6",
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BorrowableHistoryCubit>(
        create: (context) => BorrowableHistoryCubit(),
        child: BlocConsumer<BorrowableHistoryCubit, BorrowableHistoryState>(
            listener: (context, state) {
          // TODO: implement listener
          // if (state is AuthSuccessState) {
          //   print("success auth! User ${state.userLogged}");
          // }
        }, builder: (context, state) {
          return BlocProvider<BorrowableHistoryCubit>(
              create: (context) => BorrowableHistoryCubit(),
              child:
                  BlocConsumer<BorrowableHistoryCubit, BorrowableHistoryState>(
                      listener: (context, state) {
                // TODO: implement listener
                // if (state is AuthSuccessState) {
                //   print("success auth! User ${state.userLogged}");
                // }
              }, builder: (context, state) {
                return Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Text(
                          "Votre historique d'emprunt",
                          style: const TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 30),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: bookBorrowedList.length,
                          itemBuilder: (context, index) {
                            List<String> emprunteur =
                                bookBorrowedList as List<String>; //.data()
                            List<String> dateDeDebutList =
                                dateDeDebut as List<String>;
                            List<String> dateDeFinList =
                                dateDeFin as List<String>; //.data()
                            return InkWell(
                              splashColor: Colors.lightBlue,
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 9),
                                      child: SizedBox(
                                        width: 300,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Livre : " + emprunteur[index],
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                                "Date de début : " +
                                                    dateDeDebutList[index]
                                                        .toString(),
                                                style: const TextStyle(
                                                    fontSize: 17,
                                                    fontStyle:
                                                        FontStyle.italic)),
                                            Text(
                                              "Date de fin : " +
                                                  dateDeFinList[index]
                                                      .toString(),
                                              style: const TextStyle(
                                                  fontSize: 17,
                                                  fontStyle: FontStyle.italic),
                                            ),
                                            Row(
                                                // children: [
                                                //   for (final categorie
                                                //       in book[index])
                                                //     Padding(
                                                //       padding:
                                                //           const EdgeInsets.only(
                                                //               right: 5),
                                                //       child: Chip(
                                                //         backgroundColor:
                                                //             Colors.blue,
                                                //         label: Text(
                                                //           categorie,
                                                //           style: const TextStyle(
                                                //             color: Colors.white,
                                                //           ),
                                                //         ),
                                                //       ),
                                                //     ),
                                                // ],
                                                ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  // child: (ListView.builder(
                  //   itemBuilder: (context, position) {
                  //     return Column(
                  //       children: <Widget>[
                  //         Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           children: <Widget>[
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: <Widget>[
                  //                 Padding(
                  //                   padding: const EdgeInsets.fromLTRB(
                  //                       12.0, 12.0, 12.0, 6.0),
                  //                   child: Text(
                  //                     sendersList[position],
                  //                     style: const TextStyle(
                  //                         fontSize: 22.0,
                  //                         fontWeight: FontWeight.bold),
                  //                   ),
                  //                 ),
                  //                 Padding(
                  //                   padding: const EdgeInsets.fromLTRB(
                  //                       12.0, 6.0, 12.0, 12.0),
                  //                   child: Text(
                  //                     subjectList[position],
                  //                     style: const TextStyle(fontSize: 18.0),
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //             Padding(
                  //               padding: const EdgeInsets.all(8.0),
                  //               child: Column(
                  //                 mainAxisAlignment:
                  //                     MainAxisAlignment.spaceEvenly,
                  //                 children: const <Widget>[
                  //                   Text(
                  //                     "5m",
                  //                     style: TextStyle(color: Colors.grey),
                  //                   ),
                  //                   Padding(
                  //                     padding: EdgeInsets.all(8.0),
                  //                     child: Icon(
                  //                       Icons.star_border,
                  //                       size: 35.0,
                  //                       color: Colors.grey,
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //         const Divider(
                  //           height: 2.0,
                  //           color: Colors.grey,
                  //         )
                  //       ],
                  //     );
                  //   },
                  //   itemCount: sendersList.length,
                  // )),
                );
              }));
        }));
  }
}
