.class Lultima/pro/proxy/MainActivity$6;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity;->_reCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field progress_val:I

.field final this$0:Lultima/pro/proxy/MainActivity;

.field private final val$btn:Landroid/widget/Button;

.field private final val$gd_btn:Landroid/graphics/drawable/GradientDrawable;

.field private final val$pb:Landroid/widget/ProgressBar;

.field private final val$tt:Ljava/util/Timer;

.field private final val$tv_p:Landroid/widget/TextView;

.field private final val$tv_sub:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;Landroid/widget/ProgressBar;Landroid/widget/TextView;Ljava/util/Timer;Landroid/widget/TextView;Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 1

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$6;->this$0:Lultima/pro/proxy/MainActivity;

    iput-object p2, p0, Lultima/pro/proxy/MainActivity$6;->val$pb:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lultima/pro/proxy/MainActivity$6;->val$tv_p:Landroid/widget/TextView;

    iput-object p4, p0, Lultima/pro/proxy/MainActivity$6;->val$tt:Ljava/util/Timer;

    iput-object p5, p0, Lultima/pro/proxy/MainActivity$6;->val$tv_sub:Landroid/widget/TextView;

    iput-object p6, p0, Lultima/pro/proxy/MainActivity$6;->val$btn:Landroid/widget/Button;

    iput-object p7, p0, Lultima/pro/proxy/MainActivity$6;->val$gd_btn:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lultima/pro/proxy/MainActivity$6;->progress_val:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v8, p0, Lultima/pro/proxy/MainActivity$6;->this$0:Lultima/pro/proxy/MainActivity;

    new-instance v0, Lultima/pro/proxy/MainActivity$6$1;

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$6;->val$pb:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lultima/pro/proxy/MainActivity$6;->val$tv_p:Landroid/widget/TextView;

    iget-object v4, p0, Lultima/pro/proxy/MainActivity$6;->val$tt:Ljava/util/Timer;

    iget-object v5, p0, Lultima/pro/proxy/MainActivity$6;->val$tv_sub:Landroid/widget/TextView;

    iget-object v6, p0, Lultima/pro/proxy/MainActivity$6;->val$btn:Landroid/widget/Button;

    iget-object v7, p0, Lultima/pro/proxy/MainActivity$6;->val$gd_btn:Landroid/graphics/drawable/GradientDrawable;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lultima/pro/proxy/MainActivity$6$1;-><init>(Lultima/pro/proxy/MainActivity$6;Landroid/widget/ProgressBar;Landroid/widget/TextView;Ljava/util/Timer;Landroid/widget/TextView;Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v8, v0}, Lultima/pro/proxy/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
