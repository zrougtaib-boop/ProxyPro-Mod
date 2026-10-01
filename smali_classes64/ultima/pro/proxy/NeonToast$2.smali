.class Lultima/pro/proxy/NeonToast$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final val$ctx:Landroid/content/Context;

.field private final val$message:Ljava/lang/String;

.field private final val$withSound:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/NeonToast$2;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lultima/pro/proxy/NeonToast$2;->val$message:Ljava/lang/String;

    iput-boolean p3, p0, Lultima/pro/proxy/NeonToast$2;->val$withSound:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lultima/pro/proxy/NeonToast$2;->val$ctx:Landroid/content/Context;

    iget-object v0, p0, Lultima/pro/proxy/NeonToast$2;->val$message:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    :try_start_1
    iget-boolean v2, p0, Lultima/pro/proxy/NeonToast$2;->val$withSound:Z

    invoke-static {v1, v0, v2}, Lultima/pro/proxy/NeonToast;->access$0(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lultima/pro/proxy/NeonToast$2;->val$message:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
