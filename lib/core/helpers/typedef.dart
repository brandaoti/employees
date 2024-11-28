import 'package:employees/core/errors/base_exception.dart';

import '../states/result.dart';

typedef Output<T> = Result<BaseException, T>;

typedef Json = Map<String, dynamic>;
