baselines
baseline: spec
	 <baseline>
	
	spec for: #common do: [
		spec blessing: #baseline.
		
		spec configuration: 'Seaside3' with: [
			spec
				loads: #('Base');	 
				repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo60/main' ].
	  	spec configuration: 'XMLSupport' with: [
			spec
				version: '1.0';
				repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLSupport/main'].
				
		spec package: 'SeasideTesting' ].