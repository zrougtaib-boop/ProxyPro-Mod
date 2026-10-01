.class Lultima/pro/proxy/MainActivity$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

.field private final val$_fxlp:Landroid/widget/FrameLayout$LayoutParams;

.field private final val$_loginFx:Lultima/pro/proxy/NeonCardEffect;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;Landroid/widget/FrameLayout$LayoutParams;Lultima/pro/proxy/NeonCardEffect;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$13;->this$0:Lultima/pro/proxy/MainActivity;

    iput-object p2, p0, Lultima/pro/proxy/MainActivity$13;->val$_fxlp:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p3, p0, Lultima/pro/proxy/MainActivity$13;->val$_loginFx:Lultima/pro/proxy/NeonCardEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5

    sub-int v0, p5, p3

    if-lez v0, :cond_0

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$13;->val$_fxlp:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$13;->val$_loginFx:Lultima/pro/proxy/NeonCardEffect;

    new-instance v2, Lultima/pro/proxy/MainActivity$13$1;

    iget-object v3, p0, Lultima/pro/proxy/MainActivity$13;->val$_fxlp:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lultima/pro/proxy/MainActivity$13;->val$_loginFx:Lultima/pro/proxy/NeonCardEffect;

    invoke-direct {v2, p0, v3, v0, v4}, Lultima/pro/proxy/MainActivity$13$1;-><init>(Lultima/pro/proxy/MainActivity$13;Landroid/widget/FrameLayout$LayoutParams;ILultima/pro/proxy/NeonCardEffect;)V

    invoke-virtual {v1, v2}, Lultima/pro/proxy/NeonCardEffect;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
