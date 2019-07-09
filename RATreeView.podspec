Pod::Spec.new do |spec|
    spec.name = 'RATreeView'
    spec.version = '2.2.0'
    spec.summary = 'RATreeView provide you a great support to display the tree structures on iOS.'
    spec.homepage = 'https://github.com/CothamTechnologies/RATreeView'
    spec.screenshots = 'https://raw.github.com/CothamTechnologies/RATreeView/cotham/Screens/animation.gif'

    spec.license = {
        :type => 'MIT',
        :file => 'LICENCE.md'
    }

    spec.authors = {
        'Rafal Augustyniak' => 'rafalaugustyniak@gmail.com',
        'Soren Mortensen' => 'soren@cothamtechnologies.com'
    }

    spec.source = {
        :git => 'https://github.com/CothamTechnologies/RATreeView.git',
        :branch => 'cotham'
    }

    spec.ios.deployment_target = '7.0'
    spec.tvos.deployment_target = '9.0'

    spec.source_files = 'RATreeView/RATreeView/**/*.{h,m}'

    spec.public_header_files = [
        'RATreeView/RATreeView/RATreeView.h',
    ]

    spec.requires_arc = true
end

