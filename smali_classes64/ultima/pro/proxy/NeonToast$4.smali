.class Lultima/pro/proxy/NeonToast$4;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/NeonToast;->showNow(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final p:Landroid/graphics/Paint;

.field private final val$accent:I

.field private final val$dp:F

.field private final val$type:I


# direct methods
.method constructor <init>(Landroid/content/Context;FII)V
    .locals 2

    iput p2, p0, Lultima/pro/proxy/NeonToast$4;->val$dp:F

    iput p3, p0, Lultima/pro/proxy/NeonToast$4;->val$accent:I

    iput p4, p0, Lultima/pro/proxy/NeonToast$4;->val$type:I

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonToast$4;->p:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v10, 0x3f400000    # 0.75f

    invoke-virtual {p0}, Lultima/pro/proxy/NeonToast$4;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lultima/pro/proxy/NeonToast$4;->getHeight()I

    move-result v1

    int-to-float v2, v1

    div-float v1, v0, v3

    div-float v8, v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v3

    iget v2, p0, Lultima/pro/proxy/NeonToast$4;->val$dp:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget-object v2, p0, Lultima/pro/proxy/NeonToast$4;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lultima/pro/proxy/NeonToast$4;->p:Landroid/graphics/Paint;

    iget v3, p0, Lultima/pro/proxy/NeonToast$4;->val$accent:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    const/high16 v4, 0x26000000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lultima/pro/proxy/NeonToast$4;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v8, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lultima/pro/proxy/NeonToast$4;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lultima/pro/proxy/NeonToast$4;->p:Landroid/graphics/Paint;

    const v3, 0x3fe66666    # 1.8f

    iget v4, p0, Lultima/pro/proxy/NeonToast$4;->val$dp:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lultima/pro/proxy/NeonToast$4;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v2, p0, Lultima/pro/proxy/NeonToast$4;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v2, p0, Lultima/pro/proxy/NeonToast$4;->p:Landroid/graphics/Paint;

    iget v3, p0, Lultima/pro/proxy/NeonToast$4;->val$accent:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lultima/pro/proxy/NeonToast$4;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v8, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v2, 0x3ee66666    # 0.45f

    mul-float v9, v0, v2

    iget v0, p0, Lultima/pro/proxy/NeonToast$4;->val$type:I

    if-eqz v0, :cond_0

    iget v0, p0, Lultima/pro/proxy/NeonToast$4;->val$type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sub-float v2, v1, v9

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v9

    add-float/2addr v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v2, v9, v5

    sub-float v2, v1, v2

    mul-float v3, v9, v10

    add-float/2addr v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v1, v9

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v9

    sub-float v2, v8, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lultima/pro/proxy/NeonToast$4;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lultima/pro/proxy/NeonToast$4;->val$type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    sub-float v2, v8, v9

    mul-float v0, v9, v5

    add-float v4, v8, v0

    iget-object v5, p0, Lultima/pro/proxy/NeonToast$4;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonToast$4;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v9

    add-float/2addr v0, v8

    const v2, 0x3fa66666    # 1.3f

    iget v3, p0, Lultima/pro/proxy/NeonToast$4;->val$dp:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lultima/pro/proxy/NeonToast$4;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    mul-float v0, v9, v10

    sub-float v3, v1, v0

    mul-float v0, v9, v10

    sub-float v4, v8, v0

    mul-float v0, v9, v10

    add-float v5, v1, v0

    mul-float v0, v9, v10

    add-float v6, v8, v0

    iget-object v7, p0, Lultima/pro/proxy/NeonToast$4;->p:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-float v0, v9, v10

    add-float v6, v1, v0

    mul-float v0, v9, v10

    sub-float v2, v8, v0

    mul-float v0, v9, v10

    sub-float v3, v1, v0

    mul-float v0, v9, v10

    add-float v4, v8, v0

    iget-object v5, p0, Lultima/pro/proxy/NeonToast$4;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
