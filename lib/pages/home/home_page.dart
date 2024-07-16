import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:spark_music/fake%20data/music_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<MusicModel> quickPick = List.of(quickPicksList);
    List<MusicModel> relatedAlbums = List.of(relatedAlbumsList);
    final categoryList = [
      'Workout',
      'Relax',
      'Energize',
      'Commute',
      'Focus',
      'Party',
      'Sleep',
      'Chill',
      'Study',
      'Travel',
      'Cook',
      'Kids',
    ];
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              Icon(
                FluentIcons.sparkle_20_filled,
                size: 28,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 5),
              Text(
                'SPARK',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(
                FluentIcons.search_20_filled,
                size: 28,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                FluentIcons.settings_20_filled,
                size: 28,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              // catogories
              SizedBox(
                height: 38,
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            categoryList[index],
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 40),
              // Quick Picks For You HeadText
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FOR YOU',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        Text(
                          'Quick Picks',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FluentIcons.more_horizontal_20_filled,
                        size: 30,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Quick Picks GridList

              SizedBox(
                height: 360,
                width: double.infinity,
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: .25,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                  ),
                  itemCount: quickPick.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      splashFactory: InkRipple.splashFactory,
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        margin: const EdgeInsets.only(left: 10),
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer,
                                image: DecorationImage(
                                  image: AssetImage(
                                    quickPick[index].imageAsset.toString(),
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    quickPick[index].song!,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                                Text(
                                  quickPick[index].artist.toString(),
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              icon: Icon(
                                FluentIcons.more_vertical_20_filled,
                                size: 25,
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Divider(color: Colors.grey),
              const SizedBox(height: 15),
              // Related Albums
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Related Albums',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              // Related Albums List
              SizedBox(
                height: 220,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 10),
                  shrinkWrap: true,
                  itemCount: relatedAlbums.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      splashFactory: InkRipple.splashFactory,
                      borderRadius: BorderRadius.circular(5),
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, top: 10),
                            width: 140,
                            height: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: AssetImage(
                                  relatedAlbums[index].imageAsset.toString(),
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 7,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: SizedBox(
                                width: 130,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      relatedAlbums[index].song!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      relatedAlbums[index].year.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ));
  }
}







// ListTile(
//                       leading: Container(
//                         width: 65,
//                         height: 65,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color:
//                               Theme.of(context).colorScheme.secondaryContainer,
//                           image: DecorationImage(
//                             image: AssetImage(
//                               quickPick[index].imageAsset.toString(),
//                             ),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       title: Text(
//                         quickPick[index].song!,
//                         style: Theme.of(context).textTheme.labelMedium,
//                       ),
//                       subtitle: Text(
//                         quickPick[index].artist.toString(),
//                         style: Theme.of(context).textTheme.labelSmall,
//                       ),
//                       trailing: IconButton(
//                         icon: Icon(
//                           FluentIcons.more_vertical_20_filled,
//                           size: 25,
//                           color: Theme.of(context).colorScheme.onBackground,
//                         ),
//                         onPressed: () {},
//                       ),
//                     );