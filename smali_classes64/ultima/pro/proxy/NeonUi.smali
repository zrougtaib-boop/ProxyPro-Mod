.class public Lultima/pro/proxy/NeonUi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lultima/pro/proxy/NeonUi$EyeDrawable;,
        Lultima/pro/proxy/NeonUi$RunBorderDrawable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static passwordEye(Landroid/widget/EditText;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    new-instance v2, Lultima/pro/proxy/NeonUi$EyeDrawable;

    invoke-direct {v2, p1, v0}, Lultima/pro/proxy/NeonUi$EyeDrawable;-><init>(IF)V

    invoke-virtual {v2, v4, v4, v1, v1}, Lultima/pro/proxy/NeonUi$EyeDrawable;->setBounds(IIII)V

    new-instance v3, Lultima/pro/proxy/NeonUi$EyeDrawable;

    invoke-direct {v3, v4, v0}, Lultima/pro/proxy/NeonUi$EyeDrawable;-><init>(IF)V

    invoke-virtual {v3, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3, v5, v2, v5}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {v2, v4}, Lultima/pro/proxy/NeonUi$EyeDrawable;->setOpen(Z)V

    new-instance v3, Lultima/pro/proxy/NeonUi$2;

    invoke-direct {v3, p0, v1, v0, v2}, Lultima/pro/proxy/NeonUi$2;-><init>(Landroid/widget/EditText;IFLultima/pro/proxy/NeonUi$EyeDrawable;)V

    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static runBorder(Landroid/view/View;IFJ)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lultima/pro/proxy/NeonUi$RunBorderDrawable;-><init>(Landroid/content/Context;IFJ)V

    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->setBounds(IIII)V

    new-instance v1, Lultima/pro/proxy/NeonUi$1;

    invoke-direct {v1, v0}, Lultima/pro/proxy/NeonUi$1;-><init>(Lultima/pro/proxy/NeonUi$RunBorderDrawable;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
