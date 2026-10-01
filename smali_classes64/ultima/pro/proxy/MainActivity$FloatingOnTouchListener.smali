.class Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lultima/pro/proxy/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingOnTouchListener"
.end annotation


# instance fields
.field final this$0:Lultima/pro/proxy/MainActivity;

.field private x:I

.field private y:I


# direct methods
.method private constructor <init>(Lultima/pro/proxy/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lultima/pro/proxy/MainActivity;Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;-><init>(Lultima/pro/proxy/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;->x:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;->y:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;->x:I

    iget v3, p0, Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;->y:I

    iput v0, p0, Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;->x:I

    iput v1, p0, Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;->y:I

    iget-object v4, p0, Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v4}, Lultima/pro/proxy/MainActivity;->access$0(Lultima/pro/proxy/MainActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v5}, Lultima/pro/proxy/MainActivity;->access$0(Lultima/pro/proxy/MainActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v0, v2

    add-int/2addr v0, v5

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$0(Lultima/pro/proxy/MainActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v2}, Lultima/pro/proxy/MainActivity;->access$0(Lultima/pro/proxy/MainActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$1(Lultima/pro/proxy/MainActivity;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v1}, Lultima/pro/proxy/MainActivity;->access$0(Lultima/pro/proxy/MainActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
