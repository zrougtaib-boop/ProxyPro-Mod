.class Lultima/pro/proxy/MainActivity$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lultima/pro/proxy/MainActivity$6;

.field private final val$btn:Landroid/widget/Button;

.field private final val$gd_btn:Landroid/graphics/drawable/GradientDrawable;

.field private final val$pb:Landroid/widget/ProgressBar;

.field private final val$tt:Ljava/util/Timer;

.field private final val$tv_p:Landroid/widget/TextView;

.field private final val$tv_sub:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity$6;Landroid/widget/ProgressBar;Landroid/widget/TextView;Ljava/util/Timer;Landroid/widget/TextView;Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$6$1;->this$1:Lultima/pro/proxy/MainActivity$6;

    iput-object p2, p0, Lultima/pro/proxy/MainActivity$6$1;->val$pb:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lultima/pro/proxy/MainActivity$6$1;->val$tv_p:Landroid/widget/TextView;

    iput-object p4, p0, Lultima/pro/proxy/MainActivity$6$1;->val$tt:Ljava/util/Timer;

    iput-object p5, p0, Lultima/pro/proxy/MainActivity$6$1;->val$tv_sub:Landroid/widget/TextView;

    iput-object p6, p0, Lultima/pro/proxy/MainActivity$6$1;->val$btn:Landroid/widget/Button;

    iput-object p7, p0, Lultima/pro/proxy/MainActivity$6$1;->val$gd_btn:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$6$1;->this$1:Lultima/pro/proxy/MainActivity$6;

    iget v1, v0, Lultima/pro/proxy/MainActivity$6;->progress_val:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lultima/pro/proxy/MainActivity$6;->progress_val:I

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$6$1;->val$pb:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$6$1;->this$1:Lultima/pro/proxy/MainActivity$6;

    iget v1, v1, Lultima/pro/proxy/MainActivity$6;->progress_val:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$6$1;->val$tv_p:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$6$1;->this$1:Lultima/pro/proxy/MainActivity$6;

    iget v2, v2, Lultima/pro/proxy/MainActivity$6;->progress_val:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$6$1;->this$1:Lultima/pro/proxy/MainActivity$6;

    iget v0, v0, Lultima/pro/proxy/MainActivity$6;->progress_val:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$6$1;->val$tt:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$6$1;->val$tv_sub:Landroid/widget/TextView;

    const-string v1, "First subscribe our channel otherwise panel give ban"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$6$1;->val$tv_sub:Landroid/widget/TextView;

    const-string v1, "#FF00FF00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$6$1;->val$btn:Landroid/widget/Button;

    const-string v1, "Subscribe Channel"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$6$1;->val$btn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$6$1;->val$btn:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$6$1;->val$gd_btn:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "#B00000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$6$1;->val$gd_btn:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x5

    const-string v2, "#FF2B2B"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$6$1;->val$btn:Landroid/widget/Button;

    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    const-string v2, "#00FF0E"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, p0, Lultima/pro/proxy/MainActivity$6$1;->val$gd_btn:Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
