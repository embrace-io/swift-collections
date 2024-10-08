Pod::Spec.new do |spec|
    spec.name = "EmbraceInternalSwiftCollections"
    spec.version = "1.1.3"
    spec.summary = "Internal fork for Embrace SDKs to support Swift Collections."
    spec.homepage = "https://github.com/embrace-io/swift-collections"
    spec.author = "Embrace.io"
  
    spec.ios.deployment_target = '13.0'
    spec.swift_version = '5.8'
  
    spec.source = { :git => "https://github.com/embrace-io/swift-collections.git", :tag => "1.1.3" }

    spec.subspec 'InternalCollectionsUtilities' do |icu|
        icu.source_files = 'Sources/InternalCollectionsUtilities/**/*.swift'
    end
    
    spec.subspec 'BitCollections' do |bc|
        bc.source_files = 'Sources/BitCollections/**/*.swift'
        bc.dependency 'InternalCollectionsUtilities'
    end

    spec.subspec 'DequeModule' do |dm|
        dm.source_files = 'Sources/DequeModule/**/*.swift'
        dm.dependency 'InternalCollectionsUtilities'
    end

    spec.subspec 'HashTreeCollections' do |htc|
        htc.source_files = 'Sources/HashTreeCollections/**/*.swift'
        htc.dependency 'InternalCollectionsUtilities'
    end

    spec.subspec 'HeapModule' do |hm|
        hm.source_files = 'Sources/HeapModule/**/*.swift'
        hm.dependency 'InternalCollectionsUtilities'
    end

    spec.subspec 'RopeModule' do |rm|
        rm.source_files = 'Sources/RopeModule/**/*.swift'
        rm.dependency 'InternalCollectionsUtilities'
    end

    # spec.subspec 'SortedCollections' do |sc|
    #     sc.source_files = 'Sources/SortedCollections/**/*.swift'
    # end

    # commenting subspec out since it's having building issues but it's not relevant right now
    # spec.subspec 'OrderedCollections' do |oc|
    #     oc.source_files = 'Sources/OrderedCollections/**/*.swift'
    #     oc.dependency 'InternalCollectionsUtilities'
    # end
end
  