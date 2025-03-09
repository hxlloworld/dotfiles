function pushdots --argument-names branch
    if test (yadm branch | grep -o -P "(?<=.{2}).*" | grep $branch);
        yadm push -u origin $branch
    else
        echo "This is not a branch of the repo"
    end
end
