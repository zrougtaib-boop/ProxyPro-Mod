.class public final synthetic Landroidx/transition/Transition$TransitionListener$-CC;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0xa
    versionHash = "a094cd79adefa6fbf3669589d7b19cca3f0130aceb9197528bed23802e4572c4"
.end annotation


# direct methods
.method public static $default$onTransitionEnd(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/transition/Transition$TransitionListener;
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2525
    invoke-interface {p0, p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionEnd(Landroidx/transition/Transition;)V

    return-void
.end method

.method public static $default$onTransitionStart(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/transition/Transition$TransitionListener;
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2499
    invoke-interface {p0, p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionStart(Landroidx/transition/Transition;)V

    return-void
.end method
