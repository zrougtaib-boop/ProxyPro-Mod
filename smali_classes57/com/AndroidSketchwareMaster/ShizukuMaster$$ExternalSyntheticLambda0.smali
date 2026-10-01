.class public final synthetic Lcom/AndroidSketchwareMaster/ShizukuMaster$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x12
    versionHash = "79350b666c61fb98f585652cf8eb3be7850d2ab8c16c1e890d0171be2ca2d761"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/AndroidSketchwareMaster/ShizukuMaster;


# direct methods
.method public synthetic constructor <init>(Lcom/AndroidSketchwareMaster/ShizukuMaster;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$$ExternalSyntheticLambda0;->f$0:Lcom/AndroidSketchwareMaster/ShizukuMaster;

    return-void
.end method


# virtual methods
.method public final onRequestPermissionResult(II)V
    .locals 1

    iget-object v0, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$$ExternalSyntheticLambda0;->f$0:Lcom/AndroidSketchwareMaster/ShizukuMaster;

    invoke-virtual {v0, p1, p2}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->onRequestPermissionsResult(II)V

    return-void
.end method
