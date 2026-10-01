.class public final synthetic Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda3;
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
.field public final f$0:Lrikka/shizuku/Shizuku$OnBinderReceivedListener;


# direct methods
.method public synthetic constructor <init>(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda3;->f$0:Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda3;->f$0:Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

    invoke-interface {v0}, Lrikka/shizuku/Shizuku$OnBinderReceivedListener;->onBinderReceived()V

    return-void
.end method
