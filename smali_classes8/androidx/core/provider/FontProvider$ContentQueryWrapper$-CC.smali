.class public final synthetic Landroidx/core/provider/FontProvider$ContentQueryWrapper$-CC;
.super Ljava/lang/Object;
.source "FontProvider.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0xa
    versionHash = "a094cd79adefa6fbf3669589d7b19cca3f0130aceb9197528bed23802e4572c4"
.end annotation


# direct methods
.method public static make(Landroid/content/Context;Landroid/net/Uri;)Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .locals 2

    .line 358
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 359
    new-instance v0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi16Impl;

    invoke-direct {v0, p0, p1}, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi16Impl;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    .line 361
    :cond_0
    new-instance v0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;

    invoke-direct {v0, p0, p1}, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method
