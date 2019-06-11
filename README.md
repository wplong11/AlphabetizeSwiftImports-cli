# AlphabetizeSwiftImports-cli

모듈 임포트를 알파벳 순으로 정렬합니다. 내장 프레임워크를 먼저 임포트하고, 빈 줄로 구분하여 서드파티 프레임워크를 임포트합니다. [StyleShare Swift Style Guide 참고](https://github.com/StyleShare/swift-style-guide#%EC%9E%84%ED%8F%AC%ED%8A%B8)

## Setup

```bash
# shell profile
alias swift-import="(cd $REPOSITORY_PATH && swift alphabetize.swift)"
```

## How to use

### Using file

```bash
$ cat file.txt | swift alphabetize.swift
import Foundation
import UIKit

import ReactorKit
import RxCocoa
import RxSwift
import SnapKit
import Then
```

### Using terminal as standard input

```bash
$ swift alphabetize.swift
> import Foundation
>
> import ReactorKit
> import RxCocoa
> import RxSwift
> import SnapKit
> import UIKit
> import Then
> Ctrl+D or Control(⌃)+D
import Foundation
import UIKit

import ReactorKit
import RxCocoa
import RxSwift
import SnapKit
import Then
```
