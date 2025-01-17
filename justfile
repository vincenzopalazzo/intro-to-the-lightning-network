CC := "bun"

ARGS := ""

default: fmt
	{{CC}} run build

dep:
  {{CC}} install; netlify init

dev:
  {{CC}} --bun run dev

fmt:
	{{CC}} run format

check:
	{{CC}} run check

clean:
	{{CC}} clean

deploy:
		netlify deploy --prod