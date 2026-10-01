.class Lultima/pro/proxy/MainActivity$69;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity;->_floating()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lultima/pro/proxy/MainActivity;

.field private final val$_alive:[Z

.field private final val$_frames:[I


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;[I[Z)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$69;->this$0:Lultima/pro/proxy/MainActivity;

    iput-object p2, p0, Lultima/pro/proxy/MainActivity$69;->val$_frames:[I

    iput-object p3, p0, Lultima/pro/proxy/MainActivity$69;->val$_alive:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$69;->val$_frames:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$69;->val$_alive:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method
