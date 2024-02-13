# PowerShell Script: RunPythonClassifierCommands.ps1

# Define the output file path
$outputFilePath = "C:\GMU COURSE\SEM-4\CS 678\HW1-student-materials\HW1-student-materials\GitProj\CustomBert\command_output.txt"

# Define the Python commands you want to run
$commands = @(
    'python classifier.py --option pretrain --epochs 5 --lr 1e-3 --train data/sst-train.txt --dev data/sst-dev.txt --test data/sst-test.txt --dev_out sst-dev-output.pretrain.txt --test_out sst-test-output.pretrain.txt --batch_size 8 --hidden_dropout_prob 0.3',
    'python classifier.py --option pretrain --epochs 5 --lr 1e-3 --train data/cfimdb-train.txt --dev data/cfimdb-dev.txt --test data/cfimdb-test.txt --dev_out cfimdb-dev-output.pretrain.txt --test_out cfimdb-test-output.pretrain.txt --batch_size 8 --hidden_dropout_prob 0.3',
    'python classifier.py --option finetune --epochs 5 --lr 1e-3 --train data/sst-train.txt --dev data/sst-dev.txt --test data/sst-test.txt --dev_out sst-dev-output.finetune.txt --test_out sst-test-output.finetune.txt --batch_size 8 --hidden_dropout_prob 0.3',
    'python classifier.py --option finetune --epochs 5 --lr 1e-3 --train data/cfimdb-train.txt --dev data/cfimdb-dev.txt --test data/cfimdb-test.txt --dev_out cfimdb-dev-output.finetune.txt --test_out cfimdb-test-output.finetune.txt --batch_size 8 --hidden_dropout_prob 0.3',
    'python classifier.py --option pretrain --epochs 5 --lr 1e-5 --train data/sst-train.txt --dev data/sst-dev.txt --test data/sst-test.txt --dev_out sst-dev-output.pretrain.txt --test_out sst-test-output.pretrain.txt --batch_size 8 --hidden_dropout_prob 0.3',
    'python classifier.py --option pretrain --epochs 5 --lr 1e-5 --train data/cfimdb-train.txt --dev data/cfimdb-dev.txt --test data/cfimdb-test.txt --dev_out cfimdb-dev-output.pretrain.txt --test_out cfimdb-test-output.pretrain.txt --batch_size 8 --hidden_dropout_prob 0.3',
    'python classifier.py --option finetune --epochs 5 --lr 1e-5 --train data/sst-train.txt --dev data/sst-dev.txt --test data/sst-test.txt --dev_out sst-dev-output.finetune.txt --test_out sst-test-output.finetune.txt --batch_size 8 --hidden_dropout_prob 0.3',
    'python classifier.py --option finetune --epochs 5 --lr 1e-5 --train data/cfimdb-train.txt --dev data/cfimdb-dev.txt --test data/cfimdb-test.txt --dev_out cfimdb-dev-output.finetune.txt --test_out cfimdb-test-output.finetune.txt --batch_size 8 --hidden_dropout_prob 0.3'
)

# Execute each command
foreach ($cmd in $commands) {
    Write-Host "Running command: $cmd"
    Invoke-Expression $cmd | Out-File -FilePath $outputFilePath -Append
    Write-Host "Command finished."
}
