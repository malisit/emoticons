// Copyright (c) 2017, Muhammed Ali Sit. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'unicodes.dart';

/// Replaces emoticon tags with unicode equivalent
String emojify(String input) {
	final output = input.replaceAllMapped(new RegExp(r':\w+:'), (match) {
		if (unicode_map[match.group(0)]!=null) {
			return '' + unicode_map[match.group(0)] + ' ';	
		} else {
			return '${match.group(0)}';
		}
  		
	});
	return output;
}