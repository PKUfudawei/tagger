PREFIX=ak8_MD_XWW_split_cq ## needs modification
GPU=1                    
config=/home/olympus/fudawei/tagger/XWW/data-config/${PREFIX}.yaml
QCD='/mldata/licq/deepjetak8/20200601_ak8_UL17_flat/QCD*/*/*/*/output_*.root'
XWW='/mldata/licq/deepjetak8/20220625_ak8_UL17_v4/BulkGravitonToHHTo4W_MX-600to6000_MH-15to250_JHUVariableWMass/*/*.root'
HWW='/mldata/licq/deepjetak8/20220625_ak8_UL17_v4/GluGluToBulkGravitonToHHTo4W_JHUGen_M-1000_narrow/*/*.root'
Top='/mldata/licq/deepjetak8/20220625_ak8_UL17_v4/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/*/*.root'
W_jets='/mldata/licq/deepjetak8/20220625_ak8_UL17_v4/BulkGravToWWToWhadWhad_narrow_M-500to8000_TuneCP5/*/*.root'
python /home/olympus/fudawei/GitRepo/weaver-core/weaver/train.py --predict \
--data-test ${Top} \
--data-config ${config} \
--network-config /home/olympus/fudawei/GitRepo/weaver-core/weaver/nn/model-config/particle_net_pf_sv.py \
--model-prefix /home/olympus/fudawei/tagger/XWW/model/$PREFIX/_best_epoch_state.pt \
--gpus ${GPU} --batch-size 512 --start-lr 5e-3 --num-workers 2 \
--predict-output /home/olympus/fudawei/tagger/XWW/prediction/$PREFIX/Top.root

PREFIX=ak8_MD_XWW_split_cq ## needs modification
GPU=1                    
config=/home/olympus/fudawei/tagger/XWW/data-config/${PREFIX}.yaml
QCD='/mldata/licq/deepjetak8/20200601_ak8_UL17_flat/QCD*/*/*/*/output_*.root'
XWW='/mldata/licq/deepjetak8/20220625_ak8_UL17_v4/BulkGravitonToHHTo4W_MX-600to6000_MH-15to250_JHUVariableWMass/*/*.root'
HWW='/mldata/licq/deepjetak8/20220625_ak8_UL17_v4/GluGluToBulkGravitonToHHTo4W_JHUGen_M-1000_narrow/*/*.root'
Top='/mldata/licq/deepjetak8/20220625_ak8_UL17_v4/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/*/*.root'
W_jets='/mldata/licq/deepjetak8/20220625_ak8_UL17_v4/BulkGravToWWToWhadWhad_narrow_M-500to8000_TuneCP5/*/*.root'
python /home/olympus/fudawei/GitRepo/weaver-core/weaver/train.py --predict \
--data-test ${W_jets} \
--data-config ${config} \
--network-config /home/olympus/fudawei/GitRepo/weaver-core/weaver/nn/model-config/particle_net_pf_sv.py \
--model-prefix /home/olympus/fudawei/tagger/XWW/model/$PREFIX/_best_epoch_state.pt \
--gpus ${GPU} --batch-size 512 --start-lr 5e-3 --num-workers 2 \
--predict-output /home/olympus/fudawei/tagger/XWW/prediction/$PREFIX/W_jets.root

PREFIX=ak8_MD_sdmass_5PIDvar_previous ## needs modification
GPU=1                    
config=/home/olympus/fudawei/tagger/XWW/data-config/${PREFIX}.yaml
QCD='/mldata/licq/deepjetak8/20200601_ak8_UL17_flat/QCD*/*/*/*/output_*.root'
XWW='/mldata/licq/deepjetak8/20220625_ak8_UL17_v4/BulkGravitonToHHTo4W_MX-600to6000_MH-15to250_JHUVariableWMass/*/*.root'
HWW='/mldata/licq/deepjetak8/20220625_ak8_UL17_v4/GluGluToBulkGravitonToHHTo4W_JHUGen_M-1000_narrow/*/*.root'
Top='/mldata/licq/deepjetak8/20220625_ak8_UL17_v4/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/*/*.root'
W_jets='/mldata/licq/deepjetak8/20220625_ak8_UL17_v4/BulkGravToWWToWhadWhad_narrow_M-500to8000_TuneCP5/*/*.root'
python /home/olympus/fudawei/GitRepo/weaver-core/weaver/train.py --predict \
--data-test ${QCD} \
--data-config ${config} \
--network-config /home/olympus/fudawei/GitRepo/weaver-core/weaver/nn/model-config/particle_net_pf_sv.py \
--model-prefix /home/olympus/fudawei/tagger/XWW/model/$PREFIX/_best_epoch_state.pt \
--gpus ${GPU} --batch-size 512 --start-lr 5e-3 --num-workers 2 \
--predict-output /home/olympus/fudawei/tagger/XWW/prediction/$PREFIX/QCD.root
