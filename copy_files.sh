cp -r ../MA-LMM/app ./
ln -s ../MA-LMM/data ./
ln -s ../MA-LMM/llm ./
mkdir lavis
cd lavis
cp -r ../../MA-LMM/lavis/common ./
cp -r ../../MA-LMM/lavis/configs ./
cp -r ../../MA-LMM/lavis/datasets ./
cp -r ../../MA-LMM/lavis/models ./
cp -r ../../MA-LMM/lavis/processors ./
cp -r ../../MA-LMM/lavis/projects ./
cp -r ../../MA-LMM/lavis/runners ./
cp -r ../../MA-LMM/lavis/tasks ./
cp ../../MA-LMM/lavis/*py ./
cd ..
cp -r ../MA-LMM/run_scripts ./
cp -r ../MA-LMM/tests ./
cp ../MA-LMM/*py ./
