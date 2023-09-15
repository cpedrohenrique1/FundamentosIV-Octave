function [lmtInferior, lmtSuperior, funcao, toler, IterMax] = secante(lmtInferior, lmtSuperior, funcao, toler, IterMax)
    Fa = feval(funcao,lmtInferior);
    Fb = feval(funcao, lmtSuperior);
    if abs(Fa) < abs(Fb)
        t = lmtInferior;
        lmtInferior = lmtSuperior;
        lmtSuperior = t;
        t = Fa;
        Fa = Fb;
        Fb = t;
    endif
    iter = 0;
    x = lmtSuperior;
    Fx = Fb;
    while true
        DeltaX = -Fx/(Fb - Fa)*(lmtSuperior - lmtInferior);
        x = x + DeltaX;
        Fx = feval(funcao, x);
        disp ([iter, lmtInferior, Fa, lmtSuperior, Fb, x, Fx, DeltaX])
        if (abs(DeltaX) <= toler && abs(Fx) <= toler) || (iter >= IterMax)
            break
        endif
        lmtInferior = lmtSuperior;
        Fa = Fb;
        lmtSuperior = x;
        Fb = Fx;
        iter = iter + 1;
    endwhile
    raiz = x
    if abs(DeltaX) <= toler && abs(Fx) <= toler
        CondErro = 0
    else
        CondErro = 1
    endif
endfunction