GENERIC_FLAGS := --ask-become-pass
DESKTOP_TAGS := 'check,packages,desktop'
.DEFAULT_GOAL := all

.PHONY: all
all: prereq
	@ansible-playbook main.yml $(GENERIC_FLAGS)

.PHONY: desktop
desktop: prereq
	@ansible-playbook --tags=$(DESKTOP_TAGS) main.yml $(GENERIC_FLAGS)

prereq:
	@rpm -qa | grep ansible || sudo zypper install -y ansible
	@ansible-galaxy collection install community.general

