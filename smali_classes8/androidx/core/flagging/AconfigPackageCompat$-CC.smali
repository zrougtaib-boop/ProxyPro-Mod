.class public final synthetic Landroidx/core/flagging/AconfigPackageCompat$-CC;
.super Ljava/lang/Object;
.source "AconfigPackageCompat.kt"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0xa
    versionHash = "a094cd79adefa6fbf3669589d7b19cca3f0130aceb9197528bed23802e4572c4"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/core/flagging/AconfigPackageCompat;->Companion:Landroidx/core/flagging/AconfigPackageCompat$Companion;

    return-void
.end method

.method public static load(Ljava/lang/String;)Landroidx/core/flagging/AconfigPackageCompat;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/flagging/AconfigStorageReadException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 0
    sget-object v0, Landroidx/core/flagging/AconfigPackageCompat;->Companion:Landroidx/core/flagging/AconfigPackageCompat$Companion;

    invoke-virtual {v0, p0}, Landroidx/core/flagging/AconfigPackageCompat$Companion;->load(Ljava/lang/String;)Landroidx/core/flagging/AconfigPackageCompat;

    move-result-object p0

    return-object p0
.end method
