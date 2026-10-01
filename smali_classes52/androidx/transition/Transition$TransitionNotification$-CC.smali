.class public final synthetic Landroidx/transition/Transition$TransitionNotification$-CC;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0xa
    versionHash = "a094cd79adefa6fbf3669589d7b19cca3f0130aceb9197528bed23802e4572c4"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_START:Landroidx/transition/Transition$TransitionNotification;

    return-void
.end method

.method public static synthetic lambda$static$0(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    .line 2697
    invoke-interface {p0, p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionCancel(Landroidx/transition/Transition;)V

    return-void
.end method

.method public static synthetic lambda$static$1(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    .line 2703
    invoke-interface {p0, p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionPause(Landroidx/transition/Transition;)V

    return-void
.end method

.method public static synthetic lambda$static$2(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    .line 2709
    invoke-interface {p0, p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionResume(Landroidx/transition/Transition;)V

    return-void
.end method
