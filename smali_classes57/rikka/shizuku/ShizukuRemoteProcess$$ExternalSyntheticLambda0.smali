.class public final synthetic Lrikka/shizuku/ShizukuRemoteProcess$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x12
    versionHash = "79350b666c61fb98f585652cf8eb3be7850d2ab8c16c1e890d0171be2ca2d761"
.end annotation


# instance fields
.field public final f$0:Lrikka/shizuku/ShizukuRemoteProcess;


# direct methods
.method public synthetic constructor <init>(Lrikka/shizuku/ShizukuRemoteProcess;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/shizuku/ShizukuRemoteProcess$$ExternalSyntheticLambda0;->f$0:Lrikka/shizuku/ShizukuRemoteProcess;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lrikka/shizuku/ShizukuRemoteProcess$$ExternalSyntheticLambda0;->f$0:Lrikka/shizuku/ShizukuRemoteProcess;

    invoke-virtual {v0}, Lrikka/shizuku/ShizukuRemoteProcess;->lambda$new$0$rikka-shizuku-ShizukuRemoteProcess()V

    return-void
.end method
