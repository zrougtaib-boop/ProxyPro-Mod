.class Lultima/pro/proxy/NeonUi$RunBorderDrawable;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lultima/pro/proxy/NeonUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RunBorderDrawable"
.end annotation


# instance fields
.field private final border:Landroid/graphics/Path;

.field private final color:I

.field private final dp:F

.field private final head:Landroid/graphics/Paint;

.field private length:F

.field private final line:Landroid/graphics/Paint;

.field private final loopMs:J

.field private measure:Landroid/graphics/PathMeasure;

.field private final pos:[F

.field private final radiusDp:F

.field private final seg:Landroid/graphics/Path;

.field private final start:J


# direct methods
.method constructor <init>(Landroid/content/Context;IFJ)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->line:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->head:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->border:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->seg:Landroid/graphics/Path;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->start:J

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->pos:[F

    iput p2, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->color:I

    iput p3, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->radiusDp:F

    iput-wide p4, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->loopMs:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->dp:F

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->head:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private alpha(F)I
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    :goto_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    :goto_1
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->color:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method private segment(FF)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->seg:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->length:F

    rem-float v0, p1, v0

    iget v1, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->length:F

    add-float/2addr v0, v1

    iget v1, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->length:F

    rem-float/2addr v0, v1

    add-float v1, v0, p2

    iget v2, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->length:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->measure:Landroid/graphics/PathMeasure;

    iget-object v3, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->seg:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1, v3, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->measure:Landroid/graphics/PathMeasure;

    iget v3, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->length:F

    iget-object v4, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->seg:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->measure:Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    iget v3, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->length:F

    sub-float/2addr v1, v3

    iget-object v3, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->seg:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v13, 0x1

    const/16 v12, 0xc

    const/4 v1, 0x0

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->measure:Landroid/graphics/PathMeasure;

    if-eqz v0, :cond_0

    iget v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->length:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->start:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->loopMs:J

    rem-long/2addr v2, v4

    long-to-float v0, v2

    iget-wide v2, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->loopMs:J

    long-to-float v2, v2

    div-float v3, v0, v2

    iget v4, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->length:F

    iget v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->length:F

    const v2, 0x3e6147ae    # 0.22f

    mul-float v5, v0, v2

    int-to-float v0, v12

    div-float v6, v5, v0

    move v2, v1

    :goto_1
    const/4 v0, 0x2

    if-lt v2, v0, :cond_2

    invoke-virtual {p0}, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->invalidateSelf()V

    goto :goto_0

    :cond_2
    mul-float v0, v3, v4

    int-to-float v7, v2

    iget v8, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->length:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v7, v0

    move v0, v1

    :goto_2
    if-lt v0, v12, :cond_3

    iget v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->length:F

    iget v8, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->length:F

    iget v9, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->length:F

    iget-object v10, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->measure:Landroid/graphics/PathMeasure;

    rem-float v0, v7, v0

    add-float/2addr v0, v8

    rem-float/2addr v0, v9

    iget-object v7, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->pos:[F

    const/4 v8, 0x0

    invoke-virtual {v10, v0, v7, v8}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->head:Landroid/graphics/Paint;

    const v7, 0x3e99999a    # 0.3f

    invoke-direct {p0, v7}, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->alpha(F)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->pos:[F

    aget v0, v0, v1

    iget-object v7, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->pos:[F

    aget v7, v7, v13

    const/high16 v8, 0x40600000    # 3.5f

    iget v9, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->dp:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->head:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->head:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->pos:[F

    aget v0, v0, v1

    iget-object v7, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->pos:[F

    aget v7, v7, v13

    const v8, 0x3fa66666    # 1.3f

    iget v9, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->dp:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->head:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v0, 0x1

    int-to-float v8, v8

    int-to-float v9, v12

    div-float/2addr v8, v9

    sub-float v9, v7, v5

    int-to-float v10, v0

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    const v10, 0x3f19999a    # 0.6f

    iget v11, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->dp:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v6

    invoke-direct {p0, v9, v10}, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->segment(FF)V

    iget-object v9, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->line:Landroid/graphics/Paint;

    const/high16 v10, 0x40a00000    # 5.0f

    iget v11, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->dp:F

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v9, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->line:Landroid/graphics/Paint;

    const v10, 0x3df5c28f    # 0.12f

    mul-float/2addr v10, v8

    invoke-direct {p0, v10}, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->alpha(F)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->seg:Landroid/graphics/Path;

    iget-object v10, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->line:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v9, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->line:Landroid/graphics/Paint;

    const v10, 0x40333333    # 2.8f

    iget v11, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->dp:F

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v9, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->line:Landroid/graphics/Paint;

    const v10, 0x3eb33333    # 0.35f

    mul-float/2addr v10, v8

    invoke-direct {p0, v10}, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->alpha(F)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->seg:Landroid/graphics/Path;

    iget-object v10, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->line:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v9, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->line:Landroid/graphics/Paint;

    const v10, 0x3fb33333    # 1.4f

    iget v11, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->dp:F

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v9, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->line:Landroid/graphics/Paint;

    invoke-direct {p0, v8}, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->alpha(F)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->seg:Landroid/graphics/Path;

    iget-object v9, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->line:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->border:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->measure:Landroid/graphics/PathMeasure;

    iput v6, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->length:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x3f99999a    # 1.2f

    iget v1, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->dp:F

    mul-float/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float v0, v5, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->radiusDp:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v7

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v7

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->border:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v0, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->border:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->measure:Landroid/graphics/PathMeasure;

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->measure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iput v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->length:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->radiusDp:F

    iget v2, p0, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->dp:F

    mul-float/2addr v0, v2

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
