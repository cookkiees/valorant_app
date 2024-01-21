import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:valorant_app/app/common/extensions/app_size_extension.dart';

class AgentScreen extends StatelessWidget {
  const AgentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return SizedBox(
        child: Row(
          children: [
            Flexible(
              child: SizedBox(
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          height: 210,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.white38,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 220,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.white38,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: ListView.builder(
                            shrinkWrap: true,
                            padding: const EdgeInsets.only(left: 10),
                            physics: const ScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Container(
                                height: 200,
                                width: 200,
                                margin: const EdgeInsets.only(bottom: 20),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white38,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        10.width,
                        Flexible(
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  color: Colors.white38,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 210,
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: context.screenWidth * 0.03),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.white38,
                                      ),
                                    ),
                                  ),
                                  child: Text.rich(
                                    TextSpan(
                                      text: 'KILL',
                                      style: TextStyle(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.bold,
                                        fontSize: context.screenWidth * 0.05,
                                      ),
                                      children: const [
                                        TextSpan(
                                          text: 'JOY',
                                          style:
                                              TextStyle(color: Colors.purple),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 220,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: context.screenWidth * 0.03),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.white38,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: context.screenWidth * 0.03),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '// ROLE',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        16.height,
                                        Text(
                                          'CONTROLLER',
                                          style: TextStyle(
                                            fontSize:
                                                context.screenWidth * 0.03,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: context.screenWidth * 0.03,
                                      vertical: 24,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '// BIORAPHY',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        16.height,
                                        Flexible(
                                          child: Text(
                                            'Gekko ' * 40,
                                            maxLines: 5,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color: Colors.white38,
                                              overflow: TextOverflow.clip,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Flexible(child: Container())
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
