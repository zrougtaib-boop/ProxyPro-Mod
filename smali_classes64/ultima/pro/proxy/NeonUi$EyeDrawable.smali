.class Lultima/pro/proxy/NeonUi$EyeDrawable;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lultima/pro/proxy/NeonUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EyeDrawable"
.end annotation


# instance fields
.field private final color:I

.field private final cut:Landroid/graphics/Paint;

.field private final dp:F

.field private final lens:Landroid/graphics/Path;

.field private open:Z

.field private final p:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(IF)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->cut:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->lens:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->open:Z

    iput p1, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->color:I

    iput p2, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->dp:F

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->p:Landroid/graphics/Paint;

    const v1, 0x3fe66666    # 1.8f

    mul-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->cut:Landroid/graphics/Paint;

    const v1, -0xfee8fe

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->cut:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->cut:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->cut:Landroid/graphics/Paint;

    const v1, 0x40866666    # 4.2f

    mul-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    iget v0, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->color:I

    ushr-int/lit8 v0, v0, 0x18

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lultima/pro/proxy/NeonUi$EyeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ee147ae    # 0.44f

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e851eb8    # 0.26f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->lens:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->lens:Landroid/graphics/Path;

    sub-float v4, v6, v1

    invoke-virtual {v3, v4, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->lens:Landroid/graphics/Path;

    mul-float v4, v2, v8

    sub-float v4, v7, v4

    add-float v5, v6, v1

    invoke-virtual {v3, v6, v4, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v3, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->lens:Landroid/graphics/Path;

    mul-float/2addr v2, v8

    add-float/2addr v2, v7

    sub-float v1, v6, v1

    invoke-virtual {v3, v6, v2, v1, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v1, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->lens:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->lens:Landroid/graphics/Path;

    iget-object v2, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e051eb8    # 0.13f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v1, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->open:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb851ec    # 0.36f

    mul-float v8, v0, v1

    sub-float v1, v6, v8

    sub-float v2, v7, v8

    add-float v3, v6, v8

    add-float v4, v7, v8

    iget-object v5, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->cut:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sub-float v1, v6, v8

    sub-float v2, v7, v8

    add-float v3, v6, v8

    add-float v4, v7, v8

    iget-object v5, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->open:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method setOpen(Z)V
    .locals 0

    iput-boolean p1, p0, Lultima/pro/proxy/NeonUi$EyeDrawable;->open:Z

    invoke-virtual {p0}, Lultima/pro/proxy/NeonUi$EyeDrawable;->invalidateSelf()V

    return-void
.end method
