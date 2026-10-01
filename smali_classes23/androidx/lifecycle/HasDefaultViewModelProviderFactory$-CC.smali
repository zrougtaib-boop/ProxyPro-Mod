.class public final synthetic Landroidx/lifecycle/HasDefaultViewModelProviderFactory$-CC;
.super Ljava/lang/Object;
.source "HasDefaultViewModelProviderFactory.kt"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0xa
    versionHash = "a094cd79adefa6fbf3669589d7b19cca3f0130aceb9197528bed23802e4572c4"
.end annotation


# direct methods
.method public static $default$getDefaultViewModelCreationExtras(Landroidx/lifecycle/HasDefaultViewModelProviderFactory;)Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 1
    .param p0, "_this"    # Landroidx/lifecycle/HasDefaultViewModelProviderFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v0, Landroidx/lifecycle/viewmodel/CreationExtras;

    return-object v0
.end method
