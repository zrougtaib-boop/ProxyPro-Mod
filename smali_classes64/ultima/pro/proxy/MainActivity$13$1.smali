.class Lultima/pro/proxy/MainActivity$13$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity$13;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lultima/pro/proxy/MainActivity$13;

.field private final val$_fxlp:Landroid/widget/FrameLayout$LayoutParams;

.field private final val$_h:I

.field private final val$_loginFx:Lultima/pro/proxy/NeonCardEffect;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity$13;Landroid/widget/FrameLayout$LayoutParams;ILultima/pro/proxy/NeonCardEffect;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$13$1;->this$1:Lultima/pro/proxy/MainActivity$13;

    iput-object p2, p0, Lultima/pro/proxy/MainActivity$13$1;->val$_fxlp:Landroid/widget/FrameLayout$LayoutParams;

    iput p3, p0, Lultima/pro/proxy/MainActivity$13$1;->val$_h:I

    iput-object p4, p0, Lultima/pro/proxy/MainActivity$13$1;->val$_loginFx:Lultima/pro/proxy/NeonCardEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$13$1;->val$_fxlp:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lultima/pro/proxy/MainActivity$13$1;->val$_h:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$13$1;->val$_loginFx:Lultima/pro/proxy/NeonCardEffect;

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$13$1;->val$_fxlp:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lultima/pro/proxy/NeonCardEffect;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
