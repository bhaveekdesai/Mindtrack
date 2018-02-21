global BPM keySignature;

init();

parpool(2)
parfor i = 1:2
    if i == 1
      traversal()
    else
      %client()
      client_stub()
    end
end

function [] = client_stub()

    tic;
    prev_toc = toc;
    instances = 1;
    
    while instances ~= 6
        if (toc-prev_toc >= 10)
            updateMusicByEmotion(instances, instances);
            [instances instances]
%            ['BPM | ' BPM]
%            ['keySig | ' currentKeySignature]
            instances = instances+1;
            prev_toc = toc;
        end
    end
    delete(gcp('nocreate'));
end
      