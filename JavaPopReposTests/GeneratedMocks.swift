// MARK: - Mocks generated from file: JavaPopRepos/pullRequests/PullRequestProtocols.swift at 2020-07-12 22:29:27 +0000


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


// MARK: - Mocks generated from file: JavaPopRepos/root/RootProtocols.swift at 2020-07-12 22:29:27 +0000


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

