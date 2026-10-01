.class Lultima/pro/proxy/MainActivity$41;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field private final val$move:[Z

.field private final val$myView007:Landroid/view/View;

.field private final val$params007:Landroid/view/WindowManager$LayoutParams;

.field private final val$wm:Landroid/view/WindowManager;

.field private x:I

.field private y:I


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;[ZLandroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$41;->this$0:Lultima/pro/proxy/MainActivity;

    iput-object p2, p0, Lultima/pro/proxy/MainActivity$41;->val$move:[Z

    iput-object p3, p0, Lultima/pro/proxy/MainActivity$41;->val$params007:Landroid/view/WindowManager$LayoutParams;

    iput-object p4, p0, Lultima/pro/proxy/MainActivity$41;->val$wm:Landroid/view/WindowManager;

    iput-object p5, p0, Lultima/pro/proxy/MainActivity$41;->val$myView007:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v6

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lultima/pro/proxy/MainActivity$41;->x:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lultima/pro/proxy/MainActivity$41;->y:I

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$41;->val$move:[Z

    aput-boolean v6, v0, v6

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lultima/pro/proxy/MainActivity$41;->x:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lultima/pro/proxy/MainActivity$41;->y:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lultima/pro/proxy/MainActivity$41;->x:I

    iget v3, p0, Lultima/pro/proxy/MainActivity$41;->y:I

    iput v0, p0, Lultima/pro/proxy/MainActivity$41;->x:I

    iput v1, p0, Lultima/pro/proxy/MainActivity$41;->y:I

    iget-object v4, p0, Lultima/pro/proxy/MainActivity$41;->val$params007:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lultima/pro/proxy/MainActivity$41;->val$params007:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v0, v2

    add-int/2addr v0, v5

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$41;->val$params007:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$41;->val$params007:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$41;->val$wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$41;->val$myView007:Landroid/view/View;

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$41;->val$params007:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$41;->val$move:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v6

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
