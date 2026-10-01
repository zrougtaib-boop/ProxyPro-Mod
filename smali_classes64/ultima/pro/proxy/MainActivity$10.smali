.class Lultima/pro/proxy/MainActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

.field private final val$_bgvv:Landroid/widget/VideoView;

.field private final val$_content:Landroid/widget/FrameLayout;

.field private final val$_mpRef:[Landroid/media/MediaPlayer;

.field private final val$_muted:[Z


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;[Landroid/media/MediaPlayer;[ZLandroid/widget/FrameLayout;Landroid/widget/VideoView;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$10;->this$0:Lultima/pro/proxy/MainActivity;

    iput-object p2, p0, Lultima/pro/proxy/MainActivity$10;->val$_mpRef:[Landroid/media/MediaPlayer;

    iput-object p3, p0, Lultima/pro/proxy/MainActivity$10;->val$_muted:[Z

    iput-object p4, p0, Lultima/pro/proxy/MainActivity$10;->val$_content:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lultima/pro/proxy/MainActivity$10;->val$_bgvv:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$10;->val$_mpRef:[Landroid/media/MediaPlayer;

    aput-object p1, v0, v1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$10;->val$_muted:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$10;->val$_content:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$10;->val$_content:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lultima/pro/proxy/MainActivity$10;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-virtual {v0}, Lultima/pro/proxy/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_1
    if-lez v2, :cond_2

    if-lez v3, :cond_2

    int-to-float v1, v1

    int-to-float v4, v2

    div-float/2addr v1, v4

    int-to-float v0, v0

    int-to-float v4, v3

    div-float/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$10;->val$_bgvv:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method
