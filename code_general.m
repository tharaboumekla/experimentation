NbParticipants = 0;                                                 %On initialise le nombre de participants 
NombreParticipants = participants(NbParticipants);                  %On appelle notre fonction participants

%Création d'un tableau d'enregistrement.                            'Nom', 'Score', etc. correspond à
                                                                    %des colonnes. Donc on doit déterminer combien de paires d'images on va
                                                                    %avoir dans l'expérience pour déterminer le nombre de colonnes. 
infos=struct('Nom',{},'Score1',{},'Temps1',{},'Score2',{},'Temps2',{},'Score3',{},'Temps3',{},'Score4',{},'Temps4',{},'Score5',{},'Temps5',{},'Score6',{},'Temps6',{},'Score7',{},'Temps7',{},'Score8',{},'Temps8',{},'Score9',{},'Temps9',{},'Score10',{},'Temps10',{}); 
                                                                    %Les accolades représentent le stockage.
                                                                    %J'ai mis 10 scores (si la personne répond bien ou pas), parce que je ne
                                                                    %savais pas combien de paires d'images on voulait mettre, donc j'en ai mis
                                                                    %10 mais si on veut en mettre plus ou moins on le modifiera.

                                                                    %On ne l'a pas mis en fonction, car on ne peut pas appeler une fonction
                                                                    %dans une fonction. J'avais besoin du nombre de participants pour demander
                                                                    %leurs noms.
for i = 1:1:NombreParticipants                                      %La boucle for va parcourir un à un le nombre de participant. 
NomParticipants= input('Entrer le nom du participant: ', 's');      %On met 's' lorsqu'on entre des lettres, parce qu'on veut que ça reconnaissaise la variable comme étant un string.
infos(i).Nom=NomParticipants;                                       %Pour stocker les noms des participants dans le tableau d'enregistrement, dans la colonne "Nom"
end

%Début de l''expérience
for i=1:NombreParticipants                                          %La boucle va parcourir un à un chaque nom des participants entrés
% Afficher les règles du de l''expérience
fprintf ('\n Règles de l''expérience pour %s', infos(i).Nom );      %On créer une "boîte" représentée par %s, et on met une variable à l'intérieur (ici, le nom qui se trouve dans la colonne Nom). Le % sert à mettre la variable à l'intérieur de la boîte. 
fprintf (' \n - Dans l''expérience suivante, une série de paires d''images vous sera présentée \n'); %On a mis \n pour que chaque consigne soit sur une ligne différente. 
fprintf (' - Votre tache est de determiner si les deux images dune paire sont pareilles ou non \n');
fprintf (' - Une retroaction vous sera donnee apres chaque reponse que vous donner \n');

%Êtes-vous prêt?
Debut = input('Êtes-vous prêt à commencer ? (oui ou non): ', 's');
if strcmpi(Debut,'oui')== 1                                         %strcmpi : peu importe si le mot est en majuscule ou minuscule, ça va le comparer. Sans le "i", il faut que ça soit écrit exactement de la même façon (majuscules et minuscules prises en compte).
    disp('image');                                                  %Si le participant répond oui, ça va commencer à lui afficher la première image. 
elseif strcmpi(Debut,'non')== 1                                     %Si le participant répond non, ça va lui donner le message 'Au revoir!'.
    fprintf ('Au revoir!');
end
while strcmpi(Debut,'oui')== 0 && strcmpi(Debut,'non')== 0 
Debut = input('Êtes-vous prêt à commencer ? (oui ou non): ', 's');  %On va faire une boucle while et comparer la réponse du participant à "oui" et "non". Tant qu'il ne répond aucun des deux choix, ça va lui demander d'entrer oui ou non. 
if strcmpi(Debut,'oui')== 1                                         %On a du mettre la boucle if/elseif une deuxième fois dans la boucle while, car sinon ça ne fonctionnait pas.
    disp('image');
elseif strcmpi(Debut,'non')== 1
    fprintf ('Au revoir!');
end
end




end
