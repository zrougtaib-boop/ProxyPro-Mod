.class Lultima/pro/proxy/MainActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final val$_mpRef:[Landroid/media/MediaPlayer;

.field private final val$_muted:[Z

.field private final val$_snd:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;[Z[Landroid/media/MediaPlayer;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$9;->this$0:Lultima/pro/proxy/MainActivity;

    iput-object p2, p0, Lultima/pro/proxy/MainActivity$9;->val$_muted:[Z

    iput-object p3, p0, Lultima/pro/proxy/MainActivity$9;->val$_mpRef:[Landroid/media/MediaPlayer;

    iput-object p4, p0, Lultima/pro/proxy/MainActivity$9;->val$_snd:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$9;->val$_muted:[Z

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$9;->val$_muted:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    aput-boolean v0, v2, v1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$9;->val$_muted:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    :try_start_0
    iget-object v2, p0, Lultima/pro/proxy/MainActivity$9;->val$_mpRef:[Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$9;->val$_mpRef:[Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    iget-object v2, p0, Lultima/pro/proxy/MainActivity$9;->val$_snd:Landroid/widget/TextView;

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$9;->val$_muted:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    const-string v0, "\ud83d\udd07"

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$9;->this$0:Lultima/pro/proxy/MainActivity;

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$9;->val$_muted:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    const-string v0, "Sound Off"

    :goto_4
    invoke-static {v2, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const-string v0, "\ud83d\udd0a"

    goto :goto_3

    :cond_4
    const-string v0, "Sound On"

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2
.end method
