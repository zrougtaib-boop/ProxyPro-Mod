.class public final synthetic Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x12
    versionHash = "79350b666c61fb98f585652cf8eb3be7850d2ab8c16c1e890d0171be2ca2d761"
.end annotation


# instance fields
.field public final f$0:I

.field public final f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda2;->f$0:I

    iget v1, p0, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, v1}, Lrikka/shizuku/Shizuku;->lambda$scheduleRequestPermissionResultListener$1(II)V

    return-void
.end method
