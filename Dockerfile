FROM python:3.11.6

WORKDIR /app

COPY . /app

RUN python3 -m venv .venv && \
    . ./.venv/bin/activate && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 500

CMD ["flask", "run"]
