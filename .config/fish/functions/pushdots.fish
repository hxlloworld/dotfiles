function pushdots --argument-names branch
    if test $branch = $(yadm branch | grep -o -P "(?<=.{2}).*");
        yadm push -u origin $branch
    else
        echo "This is not a branch of the repo"
    end
end
