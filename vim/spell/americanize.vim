" Source this file to auto-"correct" British spellings to their American
" equivalent:
"   
"     :source ~/.vim/spell/americanize.vim
" 
" The `:Abolish` command is provided by Tim Pope's abolish plugin:
"
"     http://github.com/tpope/vim-abolish
" 
" This is allows lowercase and titlecased abbreviations to be created in a
" single line:
"
"     :Abolish colour color
" 
" which is equivalent to manually creating the abbreviations:
"
"     :iabbrev colour color
"     :iabbrev Colour Color
"     :iabbrev COLOUR COLOR
"
" Wikipedia has a good article on the differences between British and
" American English
"
"     http://en.wikipedia.org/wiki/American_and_British_English_spelling_differences

:Abolish behaviour behavior
:Abolish colour color

" organize, organized, organization and similar...
:Abolish {actual,aggrand,agon,alphabet,antagon,anthropomorph,aphor,apolog,arbor,author,autom,bapt,barbar,brutal,canon,capital,categor,cauter,character,civil,colon,color,compartmental,computer,conceptual,concret,criminal,critic,crystal,demonet,departmental,desensit,destabil,digital,dogmat,dramat,econom,emphas,energ,eulog,euthan,extempor,external,factual,fantas,fertil,fibern,final,formal,fratern,galvan,general,global,harmon,hellen,homogen,hospital,human,hypothes,ideal,immobil,individual,institutional,internal,ion,legal,legitim,lion,material,memor,mesmer,method,moral,motor,national,natural,neutral,normal,notar,organ,ostrac,pagan,pasteur,patron,penal,personal,philosoph,plagiar,polar,popular,pressur,priorit,privat,proselyt,public,pulver,quant,random,rational,real,recogn,regional,satir,sensual,serial,social,special,stabil,standard,steril,stigmat,subsid,summar,symbol,synchron,synthes,terror,theor,total,tranquil,trivial,tyrann,universal,urban,util,vandal,vapor,vasectom,visual,vocal,weather,woman}is{e,ed,er,ation} {}iz{}

" analyse, analysed and similar...
:Abolish {anal,cata,hydrol,paral}ys{e,ed} {}yz{}

" AE and OE simplifications
:Abolish amoeba ameba
:Abolish anaemia anemia
:Abolish anaes{thesia,thetic,thesiologist} anesthesia{}
:Abolish anaesthetist anesthesiologist
:Abolish caesium cesium
:Abolish diarrhoea diarrhea
:Abolish encyclopaedi{a,c} encyclopedi{}
:Abolish faeces feces
:Abolish foet{al,us} fet{}
:Abolish gynaecolog{y,ist} gynecolog{}
:Abolish haemophilia hemophilia
:Abolish leukaemia leukemia
:Abolish oesophagus esophagus
:Abolish oestrogen estrogen
:Abolish orthopaedic orthopedic
:Abolish palaeontolog{y,ist} paleontology{}
:Abolish paediatric pediatric
:Abolish homoeopath{y,ic} homeopath{}
:Abolish mediaeval medieval

