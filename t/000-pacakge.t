# perl
use Test::Compile;
use Test::More;
use Test::Pod::Coverage;
use Test::Pod;
use Test::CheckManifest;

subtest 'Manifest test' => sub {
    ok_manifest();
};

subtest 'Compile modules tests' => sub {
    all_pm_files_ok();
};

subtest 'Compile script tests' => sub {
    all_pl_files_ok();
};

subtest 'POD compile tests' => sub {
    all_pod_files_ok();
};

subtest 'POD coverage tests' => sub {
    all_pod_coverage_ok();
};

done_testing();
