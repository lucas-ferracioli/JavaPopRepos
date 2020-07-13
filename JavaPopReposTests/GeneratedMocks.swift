// MARK: - Mocks generated from file: JavaPopRepos/general/Protocols.swift at 2020-07-13 03:50:45 +0000


import Cuckoo
@testable import JavaPopRepos

import UIKit


 class MockCoordinatorType: CoordinatorType, Cuckoo.ProtocolMock {
    
     typealias MocksType = CoordinatorType
    
     typealias Stubbing = __StubbingProxy_CoordinatorType
     typealias Verification = __VerificationProxy_CoordinatorType

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CoordinatorType?

     func enableDefaultImplementation(_ stub: CoordinatorType) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var navigationController: UINavigationController? {
        get {
            return cuckoo_manager.getter("navigationController",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.navigationController)
        }
        
    }
    

    

    
    
    
     func start()  {
        
    return cuckoo_manager.call("start()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.start())
        
    }
    

	 struct __StubbingProxy_CoordinatorType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var navigationController: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockCoordinatorType, UINavigationController?> {
	        return .init(manager: cuckoo_manager, name: "navigationController")
	    }
	    
	    
	    func start() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCoordinatorType.self, method: "start()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CoordinatorType: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var navigationController: Cuckoo.VerifyReadOnlyProperty<UINavigationController?> {
	        return .init(manager: cuckoo_manager, name: "navigationController", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func start() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("start()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CoordinatorTypeStub: CoordinatorType {
    
    
     var navigationController: UINavigationController? {
        get {
            return DefaultValueRegistry.defaultValue(for: (UINavigationController?).self)
        }
        
    }
    

    

    
     func start()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockRepositoryType: RepositoryType, Cuckoo.ProtocolMock {
    
     typealias MocksType = RepositoryType
    
     typealias Stubbing = __StubbingProxy_RepositoryType
     typealias Verification = __VerificationProxy_RepositoryType

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: RepositoryType?

     func enableDefaultImplementation(_ stub: RepositoryType) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func requestRepositories(page: String, completion: @escaping (Result<RepositoriesModel, ErrorCode>) -> Void)  {
        
    return cuckoo_manager.call("requestRepositories(page: String, completion: @escaping (Result<RepositoriesModel, ErrorCode>) -> Void)",
            parameters: (page, completion),
            escapingParameters: (page, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.requestRepositories(page: page, completion: completion))
        
    }
    
    
    
     func requestPullRequests(user: String, repository: String, completion: @escaping (Result<[PullRequest], ErrorCode>) -> Void)  {
        
    return cuckoo_manager.call("requestPullRequests(user: String, repository: String, completion: @escaping (Result<[PullRequest], ErrorCode>) -> Void)",
            parameters: (user, repository, completion),
            escapingParameters: (user, repository, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.requestPullRequests(user: user, repository: repository, completion: completion))
        
    }
    

	 struct __StubbingProxy_RepositoryType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func requestRepositories<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(page: M1, completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, (Result<RepositoriesModel, ErrorCode>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (Result<RepositoriesModel, ErrorCode>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<RepositoriesModel, ErrorCode>) -> Void)>] = [wrap(matchable: page) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRepositoryType.self, method: "requestRepositories(page: String, completion: @escaping (Result<RepositoriesModel, ErrorCode>) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func requestPullRequests<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(user: M1, repository: M2, completion: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(String, String, (Result<[PullRequest], ErrorCode>) -> Void)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (Result<[PullRequest], ErrorCode>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, (Result<[PullRequest], ErrorCode>) -> Void)>] = [wrap(matchable: user) { $0.0 }, wrap(matchable: repository) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRepositoryType.self, method: "requestPullRequests(user: String, repository: String, completion: @escaping (Result<[PullRequest], ErrorCode>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_RepositoryType: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func requestRepositories<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(page: M1, completion: M2) -> Cuckoo.__DoNotUse<(String, (Result<RepositoriesModel, ErrorCode>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (Result<RepositoriesModel, ErrorCode>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<RepositoriesModel, ErrorCode>) -> Void)>] = [wrap(matchable: page) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("requestRepositories(page: String, completion: @escaping (Result<RepositoriesModel, ErrorCode>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func requestPullRequests<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(user: M1, repository: M2, completion: M3) -> Cuckoo.__DoNotUse<(String, String, (Result<[PullRequest], ErrorCode>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (Result<[PullRequest], ErrorCode>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, (Result<[PullRequest], ErrorCode>) -> Void)>] = [wrap(matchable: user) { $0.0 }, wrap(matchable: repository) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return cuckoo_manager.verify("requestPullRequests(user: String, repository: String, completion: @escaping (Result<[PullRequest], ErrorCode>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class RepositoryTypeStub: RepositoryType {
    

    

    
     func requestRepositories(page: String, completion: @escaping (Result<RepositoriesModel, ErrorCode>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func requestPullRequests(user: String, repository: String, completion: @escaping (Result<[PullRequest], ErrorCode>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: JavaPopRepos/pullRequests/PullRequestProtocols.swift at 2020-07-13 03:50:45 +0000


import Cuckoo
@testable import JavaPopRepos


 class MockPullRequestViewControllerType: PullRequestViewControllerType, Cuckoo.ProtocolMock {
    
     typealias MocksType = PullRequestViewControllerType
    
     typealias Stubbing = __StubbingProxy_PullRequestViewControllerType
     typealias Verification = __VerificationProxy_PullRequestViewControllerType

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PullRequestViewControllerType?

     func enableDefaultImplementation(_ stub: PullRequestViewControllerType) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func show(viewModels: [PullRequestViewModel])  {
        
    return cuckoo_manager.call("show(viewModels: [PullRequestViewModel])",
            parameters: (viewModels),
            escapingParameters: (viewModels),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.show(viewModels: viewModels))
        
    }
    
    
    
     func showError()  {
        
    return cuckoo_manager.call("showError()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showError())
        
    }
    

	 struct __StubbingProxy_PullRequestViewControllerType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func show<M1: Cuckoo.Matchable>(viewModels: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([PullRequestViewModel])> where M1.MatchedType == [PullRequestViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([PullRequestViewModel])>] = [wrap(matchable: viewModels) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPullRequestViewControllerType.self, method: "show(viewModels: [PullRequestViewModel])", parameterMatchers: matchers))
	    }
	    
	    func showError() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPullRequestViewControllerType.self, method: "showError()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PullRequestViewControllerType: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func show<M1: Cuckoo.Matchable>(viewModels: M1) -> Cuckoo.__DoNotUse<([PullRequestViewModel]), Void> where M1.MatchedType == [PullRequestViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([PullRequestViewModel])>] = [wrap(matchable: viewModels) { $0 }]
	        return cuckoo_manager.verify("show(viewModels: [PullRequestViewModel])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showError() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("showError()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PullRequestViewControllerTypeStub: PullRequestViewControllerType {
    

    

    
     func show(viewModels: [PullRequestViewModel])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showError()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPullRequestPresenterType: PullRequestPresenterType, Cuckoo.ProtocolMock {
    
     typealias MocksType = PullRequestPresenterType
    
     typealias Stubbing = __StubbingProxy_PullRequestPresenterType
     typealias Verification = __VerificationProxy_PullRequestPresenterType

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PullRequestPresenterType?

     func enableDefaultImplementation(_ stub: PullRequestPresenterType) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getPullRequests()  {
        
    return cuckoo_manager.call("getPullRequests()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getPullRequests())
        
    }
    

	 struct __StubbingProxy_PullRequestPresenterType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getPullRequests() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPullRequestPresenterType.self, method: "getPullRequests()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PullRequestPresenterType: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getPullRequests() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getPullRequests()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PullRequestPresenterTypeStub: PullRequestPresenterType {
    

    

    
     func getPullRequests()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: JavaPopRepos/root/RootProtocols.swift at 2020-07-13 03:50:45 +0000


import Cuckoo
@testable import JavaPopRepos


 class MockRootViewControllerType: RootViewControllerType, Cuckoo.ProtocolMock {
    
     typealias MocksType = RootViewControllerType
    
     typealias Stubbing = __StubbingProxy_RootViewControllerType
     typealias Verification = __VerificationProxy_RootViewControllerType

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: RootViewControllerType?

     func enableDefaultImplementation(_ stub: RootViewControllerType) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func show(viewModels: [RootViewModel])  {
        
    return cuckoo_manager.call("show(viewModels: [RootViewModel])",
            parameters: (viewModels),
            escapingParameters: (viewModels),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.show(viewModels: viewModels))
        
    }
    
    
    
     func showError()  {
        
    return cuckoo_manager.call("showError()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showError())
        
    }
    

	 struct __StubbingProxy_RootViewControllerType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func show<M1: Cuckoo.Matchable>(viewModels: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([RootViewModel])> where M1.MatchedType == [RootViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([RootViewModel])>] = [wrap(matchable: viewModels) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRootViewControllerType.self, method: "show(viewModels: [RootViewModel])", parameterMatchers: matchers))
	    }
	    
	    func showError() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockRootViewControllerType.self, method: "showError()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_RootViewControllerType: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func show<M1: Cuckoo.Matchable>(viewModels: M1) -> Cuckoo.__DoNotUse<([RootViewModel]), Void> where M1.MatchedType == [RootViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([RootViewModel])>] = [wrap(matchable: viewModels) { $0 }]
	        return cuckoo_manager.verify("show(viewModels: [RootViewModel])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showError() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("showError()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class RootViewControllerTypeStub: RootViewControllerType {
    

    

    
     func show(viewModels: [RootViewModel])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showError()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockRootPresenterType: RootPresenterType, Cuckoo.ProtocolMock {
    
     typealias MocksType = RootPresenterType
    
     typealias Stubbing = __StubbingProxy_RootPresenterType
     typealias Verification = __VerificationProxy_RootPresenterType

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: RootPresenterType?

     func enableDefaultImplementation(_ stub: RootPresenterType) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getRepositories(nextPage: Bool)  {
        
    return cuckoo_manager.call("getRepositories(nextPage: Bool)",
            parameters: (nextPage),
            escapingParameters: (nextPage),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getRepositories(nextPage: nextPage))
        
    }
    

	 struct __StubbingProxy_RootPresenterType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getRepositories<M1: Cuckoo.Matchable>(nextPage: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Bool)> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: nextPage) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRootPresenterType.self, method: "getRepositories(nextPage: Bool)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_RootPresenterType: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getRepositories<M1: Cuckoo.Matchable>(nextPage: M1) -> Cuckoo.__DoNotUse<(Bool), Void> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: nextPage) { $0 }]
	        return cuckoo_manager.verify("getRepositories(nextPage: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class RootPresenterTypeStub: RootPresenterType {
    

    

    
     func getRepositories(nextPage: Bool)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockRootDelegate: RootDelegate, Cuckoo.ProtocolMock {
    
     typealias MocksType = RootDelegate
    
     typealias Stubbing = __StubbingProxy_RootDelegate
     typealias Verification = __VerificationProxy_RootDelegate

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: RootDelegate?

     func enableDefaultImplementation(_ stub: RootDelegate) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showPullRequests(viewModel: RootViewModel)  {
        
    return cuckoo_manager.call("showPullRequests(viewModel: RootViewModel)",
            parameters: (viewModel),
            escapingParameters: (viewModel),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showPullRequests(viewModel: viewModel))
        
    }
    

	 struct __StubbingProxy_RootDelegate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showPullRequests<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(RootViewModel)> where M1.MatchedType == RootViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(RootViewModel)>] = [wrap(matchable: viewModel) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRootDelegate.self, method: "showPullRequests(viewModel: RootViewModel)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_RootDelegate: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showPullRequests<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.__DoNotUse<(RootViewModel), Void> where M1.MatchedType == RootViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(RootViewModel)>] = [wrap(matchable: viewModel) { $0 }]
	        return cuckoo_manager.verify("showPullRequests(viewModel: RootViewModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class RootDelegateStub: RootDelegate {
    

    

    
     func showPullRequests(viewModel: RootViewModel)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

