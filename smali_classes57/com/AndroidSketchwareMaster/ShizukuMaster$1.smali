.class Lcom/AndroidSketchwareMaster/ShizukuMaster$1;
.super Ljava/lang/Object;
.source "ShizukuMaster.java"

# interfaces
.implements Lcom/AndroidSketchwareMaster/ShizukuShell$OnProcessCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AndroidSketchwareMaster/ShizukuMaster;->ShizukuShellCmd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/AndroidSketchwareMaster/ShizukuMaster;


# direct methods
.method constructor <init>(Lcom/AndroidSketchwareMaster/ShizukuMaster;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$1;->this$0:Lcom/AndroidSketchwareMaster/ShizukuMaster;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessComplete(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 353
    iget-object p1, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$1;->this$0:Lcom/AndroidSketchwareMaster/ShizukuMaster;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->access$0(Lcom/AndroidSketchwareMaster/ShizukuMaster;Z)V

    .line 354
    iget-object p1, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$1;->this$0:Lcom/AndroidSketchwareMaster/ShizukuMaster;

    invoke-static {p1, v0}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->access$1(Lcom/AndroidSketchwareMaster/ShizukuMaster;Z)V

    goto :goto_0

    .line 357
    :cond_0
    iget-object p1, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$1;->this$0:Lcom/AndroidSketchwareMaster/ShizukuMaster;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->access$1(Lcom/AndroidSketchwareMaster/ShizukuMaster;Z)V

    .line 358
    iget-object p1, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$1;->this$0:Lcom/AndroidSketchwareMaster/ShizukuMaster;

    invoke-static {p1, v0}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->access$0(Lcom/AndroidSketchwareMaster/ShizukuMaster;Z)V

    :goto_0
    return-void
.end method
