import 'package:bloc/bloc.dart';
import 'package:sonoffkz/domain/entity/blog.dart';
import 'package:sonoffkz/domain/repository/blog_repository.dart';

part 'blog_event.dart';
part 'blog_state.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState> {
  final BlogRepository usersRepository;

  BlogBloc(this.usersRepository) : super(BlogLoadingState()) {
    on<BlogLoadEvent>((event, emit) async {
      emit(BlogLoadingState());
      try {
        final List<Blog> _loadedBlogList = await usersRepository.getAllBlog();
        emit(BlogLoadedState(loadedBlog: _loadedBlogList));
      } catch (_) {
        emit(BlogErrorState());
      }
    });
    on<BlogClearEvent>((event, emit) async {
      emit(BlogInitialState());
    });
  }
}
