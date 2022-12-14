if (source commit_machine/bin/activate 2>/dev/null) ; then
    source commit_machine/bin/activate
    echo "venv activated"

    python __main__.py
    python cleaner.py

    git add .
    git commit -m "in oracle $ date "+%Y-%m-%d""
    git push origin in_oracle
else
    echo "conda should be activated"
    python __main__.py
    python cleaner.py

    git add .
    git commit -m "in local $(date)"
    git push origin main
fi

