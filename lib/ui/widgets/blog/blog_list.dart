import 'package:ecommerce/domain/bloc/blog_bloc.dart';
import 'package:ecommerce/ui/screens/blog_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class BlogItemWidget extends StatelessWidget {
  const BlogItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogBloc, BlogState>(
      builder: (context, state) {
        if (state is BlogErrorState) {
          return const Center(
            child: Text('Проверьте соединение интернета'),
          );
        } else if (state is BlogLoadedState) {
          return ListView.builder(
            itemCount: state.loadedBlog.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    trailing: Text(DateFormat('MM.dd.y')
                        .format(state.loadedBlog[index].date)),
                    title: Text(
                      '${state.loadedBlog[index].title.rendered}',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                    ),
                    subtitle: Text(
                      '${state.loadedBlog[index].content.rendered}',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) =>
                              BlogDetailScreen(blog: state.loadedBlog[index]),
                        ),
                      );
                    },
                  ),
                ],
              );
            },
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
