function pushdotsforce --argument-names branch
    if test "$branch" = $(yadm branch | grep -o -P "(?<=.{2}).*");
        yadm push -uf origin $branch
    else
        echo "This is not a branch of the repo"
    end
end
