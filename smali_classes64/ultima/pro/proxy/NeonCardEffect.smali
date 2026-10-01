.class public Lultima/pro/proxy/NeonCardEffect;
.super Landroid/view/View;


# instance fields
.field private final border:Landroid/graphics/Path;

.field private borderLoopMs:J

.field private cornerRadiusDp:F

.field private dotCount:I

.field private final dotPaint:Landroid/graphics/Paint;

.field private dotPhase:[F

.field private dotR:[F

.field private dotSpeed:[F

.field private dotX:[F

.field private dotY:[F

.field private dp:F

.field private final headPaint:Landroid/graphics/Paint;

.field private length:F

.field private final linePaint:Landroid/graphics/Paint;

.field private measure:Landroid/graphics/PathMeasure;

.field private neonColor:I

.field private final rnd:Ljava/util/Random;

.field private scanH:F

.field private scanLoopMs:J

.field private final scanPaint:Landroid/graphics/Paint;

.field private final seg:Landroid/graphics/Path;

.field private showScanLine:Z

.field private final startTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, -0xff0100

    iput v0, p0, Lultima/pro/proxy/NeonCardEffect;->neonColor:I

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lultima/pro/proxy/NeonCardEffect;->cornerRadiusDp:F

    const-wide/16 v0, 0xdac

    iput-wide v0, p0, Lultima/pro/proxy/NeonCardEffect;->borderLoopMs:J

    const-wide/16 v0, 0x1194

    iput-wide v0, p0, Lultima/pro/proxy/NeonCardEffect;->scanLoopMs:J

    const/16 v0, 0x22

    iput v0, p0, Lultima/pro/proxy/NeonCardEffect;->dotCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lultima/pro/proxy/NeonCardEffect;->showScanLine:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->linePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->headPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->scanPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->dotPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->border:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->seg:Landroid/graphics/Path;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lultima/pro/proxy/NeonCardEffect;->startTime:J

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->rnd:Ljava/util/Random;

    invoke-direct {p0}, Lultima/pro/proxy/NeonCardEffect;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, -0xff0100

    iput v0, p0, Lultima/pro/proxy/NeonCardEffect;->neonColor:I

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lultima/pro/proxy/NeonCardEffect;->cornerRadiusDp:F

    const-wide/16 v0, 0xdac

    iput-wide v0, p0, Lultima/pro/proxy/NeonCardEffect;->borderLoopMs:J

    const-wide/16 v0, 0x1194

    iput-wide v0, p0, Lultima/pro/proxy/NeonCardEffect;->scanLoopMs:J

    const/16 v0, 0x22

    iput v0, p0, Lultima/pro/proxy/NeonCardEffect;->dotCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lultima/pro/proxy/NeonCardEffect;->showScanLine:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->linePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->headPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->scanPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->dotPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->border:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->seg:Landroid/graphics/Path;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lultima/pro/proxy/NeonCardEffect;->startTime:J

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->rnd:Ljava/util/Random;

    invoke-direct {p0}, Lultima/pro/proxy/NeonCardEffect;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lultima/pro/proxy/NeonCardEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lultima/pro/proxy/NeonCardEffect;->dp:F

    iget-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->headPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->dotPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x42380000    # 46.0f

    iget v1, p0, Lultima/pro/proxy/NeonCardEffect;->dp:F

    mul-float/2addr v0, v1

    iput v0, p0, Lultima/pro/proxy/NeonCardEffect;->scanH:F

    return-void
.end method

.method private segment(FF)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->seg:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, p0, Lultima/pro/proxy/NeonCardEffect;->length:F

    rem-float v0, p1, v0

    iget v1, p0, Lultima/pro/proxy/NeonCardEffect;->length:F

    add-float/2addr v0, v1

    iget v1, p0, Lultima/pro/proxy/NeonCardEffect;->length:F

    rem-float/2addr v0, v1

    add-float v1, v0, p2

    iget v2, p0, Lultima/pro/proxy/NeonCardEffect;->length:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lultima/pro/proxy/NeonCardEffect;->measure:Landroid/graphics/PathMeasure;

    iget-object v3, p0, Lultima/pro/proxy/NeonCardEffect;->seg:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1, v3, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lultima/pro/proxy/NeonCardEffect;->measure:Landroid/graphics/PathMeasure;

    iget v3, p0, Lultima/pro/proxy/NeonCardEffect;->length:F

    iget-object v4, p0, Lultima/pro/proxy/NeonCardEffect;->seg:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->measure:Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    iget v3, p0, Lultima/pro/proxy/NeonCardEffect;->length:F

    sub-float/2addr v1, v3

    iget-object v3, p0, Lultima/pro/proxy/NeonCardEffect;->seg:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_0
.end method

.method private withAlpha(F)I
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

    iget v1, p0, Lultima/pro/proxy/NeonCardEffect;->neonColor:I

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


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lultima/pro/proxy/NeonCardEffect;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lultima/pro/proxy/NeonCardEffect;->getHeight()I

    move-result v6

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    iget-object v1, p0, Lultima/pro/proxy/NeonCardEffect;->measure:Landroid/graphics/PathMeasure;

    if-eqz v1, :cond_0

    iget v1, p0, Lultima/pro/proxy/NeonCardEffect;->length:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lultima/pro/proxy/NeonCardEffect;->postInvalidateOnAnimation()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lultima/pro/proxy/NeonCardEffect;->startTime:J

    sub-long v8, v2, v4

    iget-boolean v1, p0, Lultima/pro/proxy/NeonCardEffect;->showScanLine:Z

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lultima/pro/proxy/NeonCardEffect;->scanLoopMs:J

    rem-long v2, v8, v2

    long-to-float v1, v2

    iget-wide v2, p0, Lultima/pro/proxy/NeonCardEffect;->scanLoopMs:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lultima/pro/proxy/NeonCardEffect;->scanH:F

    neg-float v2, v2

    int-to-float v3, v6

    iget v4, p0, Lultima/pro/proxy/NeonCardEffect;->scanH:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v5, 0x0

    add-float/2addr v3, v4

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v0

    iget v4, p0, Lultima/pro/proxy/NeonCardEffect;->scanH:F

    iget-object v5, p0, Lultima/pro/proxy/NeonCardEffect;->scanPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    long-to-float v0, v8

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v1, v0, v1

    int-to-float v0, v6

    const/high16 v2, 0x41a00000    # 20.0f

    iget v3, p0, Lultima/pro/proxy/NeonCardEffect;->dp:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lultima/pro/proxy/NeonCardEffect;->dotCount:I

    if-lt v0, v3, :cond_3

    iget-wide v0, p0, Lultima/pro/proxy/NeonCardEffect;->borderLoopMs:J

    rem-long v0, v8, v0

    long-to-float v0, v0

    iget-wide v2, p0, Lultima/pro/proxy/NeonCardEffect;->borderLoopMs:J

    long-to-float v1, v2

    div-float v2, v0, v1

    iget v3, p0, Lultima/pro/proxy/NeonCardEffect;->length:F

    iget v0, p0, Lultima/pro/proxy/NeonCardEffect;->length:F

    const v1, 0x3e23d70a    # 0.16f

    mul-float v4, v0, v1

    const/16 v0, 0xe

    int-to-float v0, v0

    div-float v5, v4, v0

    const/4 v0, 0x2

    new-array v6, v0, [F

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v0, 0x2

    if-lt v1, v0, :cond_4

    invoke-virtual {p0}, Lultima/pro/proxy/NeonCardEffect;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lultima/pro/proxy/NeonCardEffect;->dotY:[F

    aget v3, v3, v0

    iget-object v4, p0, Lultima/pro/proxy/NeonCardEffect;->dotSpeed:[F

    aget v4, v4, v0

    iget v5, p0, Lultima/pro/proxy/NeonCardEffect;->dp:F

    const v6, 0x400ccccd    # 2.2f

    mul-float/2addr v6, v1

    iget-object v7, p0, Lultima/pro/proxy/NeonCardEffect;->dotPhase:[F

    aget v7, v7, v0

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget-object v7, p0, Lultima/pro/proxy/NeonCardEffect;->dotPaint:Landroid/graphics/Paint;

    const v10, 0x3e19999a    # 0.15f

    const v11, 0x3ee66666    # 0.45f

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v6, v13

    add-float/2addr v6, v12

    mul-float/2addr v6, v11

    add-float/2addr v6, v10

    invoke-direct {p0, v6}, Lultima/pro/proxy/NeonCardEffect;->withAlpha(F)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lultima/pro/proxy/NeonCardEffect;->dotX:[F

    aget v6, v6, v0

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    rem-float/2addr v3, v2

    add-float/2addr v3, v2

    rem-float/2addr v3, v2

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lultima/pro/proxy/NeonCardEffect;->dotR:[F

    aget v4, v4, v0

    iget-object v5, p0, Lultima/pro/proxy/NeonCardEffect;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    mul-float v0, v2, v3

    int-to-float v7, v1

    iget v8, p0, Lultima/pro/proxy/NeonCardEffect;->length:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v7, v0

    const/4 v0, 0x0

    :goto_3
    const/16 v8, 0xe

    if-lt v0, v8, :cond_5

    iget v0, p0, Lultima/pro/proxy/NeonCardEffect;->length:F

    iget v8, p0, Lultima/pro/proxy/NeonCardEffect;->length:F

    iget v9, p0, Lultima/pro/proxy/NeonCardEffect;->length:F

    iget-object v10, p0, Lultima/pro/proxy/NeonCardEffect;->measure:Landroid/graphics/PathMeasure;

    rem-float v0, v7, v0

    add-float/2addr v0, v8

    rem-float/2addr v0, v9

    const/4 v7, 0x0

    invoke-virtual {v10, v0, v6, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->headPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-direct {p0, v7}, Lultima/pro/proxy/NeonCardEffect;->withAlpha(F)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v7, 0x1

    aget v7, v6, v7

    const/high16 v8, 0x40c00000    # 6.0f

    iget v9, p0, Lultima/pro/proxy/NeonCardEffect;->dp:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lultima/pro/proxy/NeonCardEffect;->headPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->headPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v7, 0x1

    aget v7, v6, v7

    const v8, 0x3fe66666    # 1.8f

    iget v9, p0, Lultima/pro/proxy/NeonCardEffect;->dp:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lultima/pro/proxy/NeonCardEffect;->headPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v8, v0, 0x1

    int-to-float v8, v8

    const/16 v9, 0xe

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float v9, v7, v4

    int-to-float v10, v0

    mul-float/2addr v10, v5

    add-float/2addr v9, v10

    const v10, 0x3f4ccccd    # 0.8f

    iget v11, p0, Lultima/pro/proxy/NeonCardEffect;->dp:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v5

    invoke-direct {p0, v9, v10}, Lultima/pro/proxy/NeonCardEffect;->segment(FF)V

    iget-object v9, p0, Lultima/pro/proxy/NeonCardEffect;->linePaint:Landroid/graphics/Paint;

    const/high16 v10, 0x41100000    # 9.0f

    iget v11, p0, Lultima/pro/proxy/NeonCardEffect;->dp:F

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v9, p0, Lultima/pro/proxy/NeonCardEffect;->linePaint:Landroid/graphics/Paint;

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v10, v8

    invoke-direct {p0, v10}, Lultima/pro/proxy/NeonCardEffect;->withAlpha(F)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, p0, Lultima/pro/proxy/NeonCardEffect;->seg:Landroid/graphics/Path;

    iget-object v10, p0, Lultima/pro/proxy/NeonCardEffect;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v9, p0, Lultima/pro/proxy/NeonCardEffect;->linePaint:Landroid/graphics/Paint;

    const/high16 v10, 0x40900000    # 4.5f

    iget v11, p0, Lultima/pro/proxy/NeonCardEffect;->dp:F

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v9, p0, Lultima/pro/proxy/NeonCardEffect;->linePaint:Landroid/graphics/Paint;

    const v10, 0x3e8f5c29    # 0.28f

    mul-float/2addr v10, v8

    invoke-direct {p0, v10}, Lultima/pro/proxy/NeonCardEffect;->withAlpha(F)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, p0, Lultima/pro/proxy/NeonCardEffect;->seg:Landroid/graphics/Path;

    iget-object v10, p0, Lultima/pro/proxy/NeonCardEffect;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v9, p0, Lultima/pro/proxy/NeonCardEffect;->linePaint:Landroid/graphics/Paint;

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lultima/pro/proxy/NeonCardEffect;->dp:F

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v9, p0, Lultima/pro/proxy/NeonCardEffect;->linePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v8}, Lultima/pro/proxy/NeonCardEffect;->withAlpha(F)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lultima/pro/proxy/NeonCardEffect;->seg:Landroid/graphics/Path;

    iget-object v9, p0, Lultima/pro/proxy/NeonCardEffect;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method protected onSizeChanged(IIII)V
    .locals 11

    const/4 v10, 0x3

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->border:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/high16 v0, 0x3fc00000    # 1.5f

    iget v2, p0, Lultima/pro/proxy/NeonCardEffect;->dp:F

    mul-float/2addr v0, v2

    iget v2, p0, Lultima/pro/proxy/NeonCardEffect;->cornerRadiusDp:F

    iget v3, p0, Lultima/pro/proxy/NeonCardEffect;->dp:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lultima/pro/proxy/NeonCardEffect;->border:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, p1

    sub-float/2addr v5, v0

    int-to-float v6, p2

    sub-float/2addr v6, v0

    invoke-direct {v4, v0, v0, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v2, v2, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lultima/pro/proxy/NeonCardEffect;->border:Landroid/graphics/Path;

    invoke-direct {v0, v2, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->measure:Landroid/graphics/PathMeasure;

    iget-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->measure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iput v0, p0, Lultima/pro/proxy/NeonCardEffect;->length:F

    const v0, 0xffffff

    iget v2, p0, Lultima/pro/proxy/NeonCardEffect;->neonColor:I

    and-int/2addr v2, v0

    iget-object v9, p0, Lultima/pro/proxy/NeonCardEffect;->scanPaint:Landroid/graphics/Paint;

    iget v4, p0, Lultima/pro/proxy/NeonCardEffect;->scanH:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    new-instance v0, Landroid/graphics/LinearGradient;

    new-array v5, v10, [I

    aput v2, v5, v8

    const/4 v3, 0x1

    const/high16 v6, 0x2a000000

    or-int/2addr v6, v2

    aput v6, v5, v3

    const/4 v3, 0x2

    aput v2, v5, v3

    new-array v6, v10, [F

    fill-array-data v6, :array_0

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v0, p0, Lultima/pro/proxy/NeonCardEffect;->dotCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->dotX:[F

    iget v0, p0, Lultima/pro/proxy/NeonCardEffect;->dotCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->dotY:[F

    iget v0, p0, Lultima/pro/proxy/NeonCardEffect;->dotCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->dotR:[F

    iget v0, p0, Lultima/pro/proxy/NeonCardEffect;->dotCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->dotSpeed:[F

    iget v0, p0, Lultima/pro/proxy/NeonCardEffect;->dotCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lultima/pro/proxy/NeonCardEffect;->dotPhase:[F

    move v0, v8

    :goto_0
    iget v1, p0, Lultima/pro/proxy/NeonCardEffect;->dotCount:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lultima/pro/proxy/NeonCardEffect;->dotX:[F

    iget-object v2, p0, Lultima/pro/proxy/NeonCardEffect;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    int-to-float v3, p1

    mul-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lultima/pro/proxy/NeonCardEffect;->dotY:[F

    iget-object v2, p0, Lultima/pro/proxy/NeonCardEffect;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    int-to-float v3, p2

    const/high16 v4, 0x41a00000    # 20.0f

    iget v5, p0, Lultima/pro/proxy/NeonCardEffect;->dp:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lultima/pro/proxy/NeonCardEffect;->dotR:[F

    const v2, 0x3f99999a    # 1.2f

    iget-object v3, p0, Lultima/pro/proxy/NeonCardEffect;->rnd:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v4, 0x40133333    # 2.3f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lultima/pro/proxy/NeonCardEffect;->dp:F

    mul-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lultima/pro/proxy/NeonCardEffect;->dotSpeed:[F

    const/high16 v2, 0x40c00000    # 6.0f

    iget-object v3, p0, Lultima/pro/proxy/NeonCardEffect;->rnd:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lultima/pro/proxy/NeonCardEffect;->dp:F

    mul-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lultima/pro/proxy/NeonCardEffect;->dotPhase:[F

    iget-object v2, p0, Lultima/pro/proxy/NeonCardEffect;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const v3, 0x40c8f5c3    # 6.28f

    mul-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
