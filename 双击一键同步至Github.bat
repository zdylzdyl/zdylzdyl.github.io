@echo off
title 双击一键同步至Github
set Path=D:\IDE\PortableGit\cmd
cd D:
cd D:\GithubPages
git add * && git commit -am "双击一键同步至Github" && git push -qv github master