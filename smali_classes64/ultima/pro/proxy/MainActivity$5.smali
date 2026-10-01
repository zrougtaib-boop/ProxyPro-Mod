.class Lultima/pro/proxy/MainActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity;->_reCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lultima/pro/proxy/MainActivity;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$5;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionResult(II)V
    .locals 2

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$5;->this$0:Lultima/pro/proxy/MainActivity;

    if-nez p2, :cond_0

    const-string v0, "Shizuku Permission Granted"

    :goto_0
    invoke-static {v1, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Shizuku Permission Denied"

    goto :goto_0
.end method
