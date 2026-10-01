.class Lultima/pro/proxy/NeonAimPicker$Item;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lultima/pro/proxy/NeonAimPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field private final bg:Landroid/graphics/drawable/GradientDrawable;

.field private final dp:F

.field private final p:Landroid/graphics/Paint;

.field private final st:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonAimPicker$Item;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/NeonAimPicker$Item;->bg:Landroid/graphics/drawable/GradientDrawable;

    iput p2, p0, Lultima/pro/proxy/NeonAimPicker$Item;->st:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lultima/pro/proxy/NeonAimPicker$Item;->dp:F

    iget-object v0, p0, Lultima/pro/proxy/NeonAimPicker$Item;->bg:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x41000000    # 8.0f

    iget v2, p0, Lultima/pro/proxy/NeonAimPicker$Item;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/16 v7, 0x64

    const v6, -0xff009a

    const/4 v1, 0x0

    invoke-virtual {p0}, Lultima/pro/proxy/NeonAimPicker$Item;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/NeonAimPicker;->style(Landroid/content/Context;)I

    move-result v0

    iget v2, p0, Lultima/pro/proxy/NeonAimPicker$Item;->st:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lultima/pro/proxy/NeonAimPicker$Item;->bg:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    const v2, 0x3300ff66

    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v3, p0, Lultima/pro/proxy/NeonAimPicker$Item;->bg:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_2

    const v2, 0x3fcccccd    # 1.6f

    :goto_2
    iget v4, p0, Lultima/pro/proxy/NeonAimPicker$Item;->dp:F

    mul-float/2addr v2, v4

    float-to-int v4, v2

    if-eqz v0, :cond_3

    move v2, v6

    :goto_3
    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v2, p0, Lultima/pro/proxy/NeonAimPicker$Item;->bg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lultima/pro/proxy/NeonAimPicker$Item;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lultima/pro/proxy/NeonAimPicker$Item;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v1, p0, Lultima/pro/proxy/NeonAimPicker$Item;->bg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lultima/pro/proxy/NeonAimPicker$Item;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lultima/pro/proxy/NeonAimPicker$Item;->getHeight()I

    move-result v2

    iget-object v3, p0, Lultima/pro/proxy/NeonAimPicker$Item;->p:Landroid/graphics/Paint;

    iget v4, p0, Lultima/pro/proxy/NeonAimPicker$Item;->dp:F

    iget v5, p0, Lultima/pro/proxy/NeonAimPicker$Item;->st:I

    if-eqz v0, :cond_4

    :goto_4
    move-object v0, p1

    move v8, v7

    invoke-static/range {v0 .. v8}, Lultima/pro/proxy/NeonShapes;->draw(Landroid/graphics/Canvas;IILandroid/graphics/Paint;FIIII)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const v2, 0x22ffffff

    goto :goto_1

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const v2, 0x55ffffff    # 3.518437E13f

    goto :goto_3

    :cond_4
    const v6, -0x222223

    goto :goto_4
.end method
