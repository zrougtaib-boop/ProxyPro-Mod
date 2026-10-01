.class Lultima/pro/proxy/NeonToast$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/NeonToast;->showNow(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final val$card:Landroid/widget/LinearLayout;

.field private final val$dp:F

.field private final val$root:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;F)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/NeonToast$5;->val$root:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lultima/pro/proxy/NeonToast$5;->val$card:Landroid/widget/LinearLayout;

    iput p3, p0, Lultima/pro/proxy/NeonToast$5;->val$dp:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lultima/pro/proxy/NeonToast;->access$2()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lultima/pro/proxy/NeonToast$5;->val$root:Landroid/widget/FrameLayout;

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lultima/pro/proxy/NeonToast$5;->val$card:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    iget v2, p0, Lultima/pro/proxy/NeonToast$5;->val$dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xf0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lultima/pro/proxy/NeonToast$5$1;

    iget-object v2, p0, Lultima/pro/proxy/NeonToast$5;->val$root:Landroid/widget/FrameLayout;

    invoke-direct {v1, p0, v2}, Lultima/pro/proxy/NeonToast$5$1;-><init>(Lultima/pro/proxy/NeonToast$5;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
