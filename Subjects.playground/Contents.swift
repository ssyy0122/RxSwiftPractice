import RxSwift

let disposeBag = DisposeBag()

print("----publishSubject----")
let publishSubject = PublishSubject<String>()

publishSubject.onNext("1안녕하세요")

let sub1 = publishSubject
    .subscribe(onNext: {
        print($0)
    } )
publishSubject.onNext("2들리세요?")
publishSubject.onNext("3안들리시나요?")

sub1.dispose()

let sub2 = publishSubject
    .subscribe(onNext: {
        print($0)
    }
)
publishSubject.onNext("4여보세요")
publishSubject.onCompleted()

publishSubject.onNext("5끝났나요")

sub2.dispose()


