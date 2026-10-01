.class Lultima/pro/proxy/NeonUi$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/NeonUi;->passwordEye(Landroid/widget/EditText;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final val$dp:F

.field private final val$et:Landroid/widget/EditText;

.field private final val$eye:Lultima/pro/proxy/NeonUi$EyeDrawable;

.field private final val$size:I


# direct methods
.method constructor <init>(Landroid/widget/EditText;IFLultima/pro/proxy/NeonUi$EyeDrawable;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/NeonUi$2;->val$et:Landroid/widget/EditText;

    iput p2, p0, Lultima/pro/proxy/NeonUi$2;->val$size:I

    iput p3, p0, Lultima/pro/proxy/NeonUi$2;->val$dp:F

    iput-object p4, p0, Lultima/pro/proxy/NeonUi$2;->val$eye:Lultima/pro/proxy/NeonUi$EyeDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lultima/pro/proxy/NeonUi$2;->val$et:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    iget-object v3, p0, Lultima/pro/proxy/NeonUi$2;->val$et:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lultima/pro/proxy/NeonUi$2;->val$size:I

    const/high16 v5, 0x41200000    # 10.0f

    iget v6, p0, Lultima/pro/proxy/NeonUi$2;->val$dp:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    sub-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v2, v6, v2

    if-ltz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lultima/pro/proxy/NeonUi$2;->val$eye:Lultima/pro/proxy/NeonUi$EyeDrawable;

    invoke-virtual {v2}, Lultima/pro/proxy/NeonUi$EyeDrawable;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iget-object v2, p0, Lultima/pro/proxy/NeonUi$2;->val$et:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    iget-object v4, p0, Lultima/pro/proxy/NeonUi$2;->val$et:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v2, p0, Lultima/pro/proxy/NeonUi$2;->val$eye:Lultima/pro/proxy/NeonUi$EyeDrawable;

    invoke-virtual {v2, v0}, Lultima/pro/proxy/NeonUi$EyeDrawable;->setOpen(Z)V

    if-ltz v3, :cond_0

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$2;->val$et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gt v3, v0, :cond_0

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$2;->val$et:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method
