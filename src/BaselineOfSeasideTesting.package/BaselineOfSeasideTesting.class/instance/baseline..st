baselines
baseline: spec
	 <baseline>
	
	spec for: #common do: [
		spec blessing: #baseline.
		
		spec configuration: 'Seaside3' with: [
			spec repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo60/main' ].
	  	spec configuration: 'XMLSupport' with: [
			spec 
				versionString: '1.1.7';
				repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLSupport/main'].
				
		spec package: 'SeasideTesting' ].