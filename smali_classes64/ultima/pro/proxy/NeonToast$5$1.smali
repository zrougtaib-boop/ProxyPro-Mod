.class Lultima/pro/proxy/NeonToast$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/NeonToast$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lultima/pro/proxy/NeonToast$5;

.field private final val$root:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lultima/pro/proxy/NeonToast$5;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/NeonToast$5$1;->this$1:Lultima/pro/proxy/NeonToast$5;

    iput-object p2, p0, Lultima/pro/proxy/NeonToast$5$1;->val$root:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lultima/pro/proxy/NeonToast;->access$2()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lultima/pro/proxy/NeonToast$5$1;->val$root:Landroid/widget/FrameLayout;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lultima/pro/proxy/NeonToast;->access$1()V

    :cond_0
    return-void
.end method
