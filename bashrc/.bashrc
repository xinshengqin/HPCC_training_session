#  Basic bash startup
. /usr/local/lib/std.v2.bashrc

case $- in
*i*)

   # Put interactive-only Bourne shell compatible login startup here.

   # Uncomment one or more of the following for paranoid behavior

   #set -o noclobber
   #alias cp='cp -i'
   #alias mv='mv -i'
   #alias rm='rm -i'

   # Uncomment the following if you want traditional behavior

   #unalias vi
   #unalias ls

esac


module load tecplot360-2012
module load git_1.8.2.3
module load icc_14.0-impi_4.1.1
module unload paraview_3.98
module load paraview_4.3.1
module load matlab_2014a
module load mathematica_9

#Costomized feature 

HISTSIZE=100000
HISTFILESIZE=200000

alias ls='ls --color=auto'
alias interMotley='qsub -I -V -W group_list=hyak-motley -l walltime=12:00:00'
alias interLehman='qsub -I -V -W group_list=hyak-lehman -l walltime=12:00:00'
alias interstf='qsub -I -V -W group_list=hyak-stf -l walltime=12:00:00'

alias qsubwith16core_tobq='qsub -q bf -l nodes=1:ppn=16,mem=60gb,feature=16core,walltime=15:00:00'
alias qsubwith32core_tobq='qsub -q bf -l nodes=2:ppn=16,mem=120gb,feature=16core,walltime=15:00:00'
alias qsubwith48core_tobq='qsub -q bf -l nodes=3:ppn=16,mem=180gb,feature=16core,walltime=15:00:00'
alias qsubwith64core_tobq='qsub -q bf -l nodes=4:ppn=16,mem=240gb,feature=16core,walltime=15:00:00'
alias qsubwith96core_tobq='qsub -q bf -l nodes=6:ppn=16,mem=360gb,feature=16core,walltime=15:00:00'
alias qsubwith128core_tobq='qsub -q bf -l nodes=8:ppn=16,mem=480gb,feature=16core,walltime=15:00:00'
alias qsubwith256core_tobq='qsub -q bf -l nodes=16:ppn=16,mem=600gb,feature=16core,walltime=15:00:00'

alias showMyJob='showq -w user=xsqin -n'
alias showMotley='showq -w qos=motley -n'
alias showLehman='showq -w qos=lehman -n'
alias showSTF='showq -w qos=stf -n'

export workplace=/civil/shared/motley/xsqin
