.class public Lultima/pro/proxy/NeonLoader$DotsBar;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lultima/pro/proxy/NeonLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DotsBar"
.end annotation


# instance fields
.field public color:I

.field private final dp:F

.field private final p:Landroid/graphics/Paint;

.field private final r:Landroid/graphics/RectF;

.field private final start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, -0xdd00d9

    iput v0, p0, Lultima/pro/proxy/NeonLoader$DotsBar;->color:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonLoader$DotsBar;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/NeonLoader$DotsBar;->r:Landroid/graphics/RectF;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lultima/pro/proxy/NeonLoader$DotsBar;->start:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lultima/pro/proxy/NeonLoader$DotsBar;->dp:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, -0xdd00d9

    iput v0, p0, Lultima/pro/proxy/NeonLoader$DotsBar;->color:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonLoader$DotsBar;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/NeonLoader$DotsBar;->r:Landroid/graphics/RectF;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lultima/pro/proxy/NeonLoader$DotsBar;->start:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lultima/pro/proxy/NeonLoader$DotsBar;->dp:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lultima/pro/proxy/NeonLoader$DotsBar;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual/range {p0 .. p0}, Lultima/pro/proxy/NeonLoader$DotsBar;->getHeight()I

    move-result v2

    int-to-float v4, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->start:J

    sub-long/2addr v6, v8

    long-to-float v2, v6

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v5, v2, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->p:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget v8, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->dp:F

    move-object/from16 v0, p0

    iget v9, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->dp:F

    const/4 v2, 0x0

    :goto_0
    const/4 v10, 0x3

    if-lt v2, v10, :cond_1

    const/high16 v2, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v5, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->dp:F

    mul-float/2addr v2, v5

    sub-float v2, v4, v2

    const/high16 v4, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget v5, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->dp:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->r:Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v4, v9

    sub-float v9, v2, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v4, v10

    add-float/2addr v10, v2

    invoke-virtual {v5, v8, v9, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v8, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->color:I

    const v9, 0x3e4ccccd    # 0.2f

    invoke-static {v8, v9}, Lultima/pro/proxy/NeonLoader;->withAlpha(IF)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->r:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v8, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const v5, 0x3ec28f5c    # 0.38f

    mul-float/2addr v5, v3

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/16 v10, 0x5dc

    rem-long/2addr v6, v10

    long-to-float v6, v6

    const v7, 0x44bb8000    # 1500.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v10

    sub-double v6, v8, v6

    double-to-float v6, v6

    add-float v7, v3, v5

    mul-float/2addr v6, v7

    neg-float v7, v5

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpl-float v5, v3, v7

    if-lez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->r:Landroid/graphics/RectF;

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v4, v6

    sub-float v6, v2, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v4, v8

    add-float/2addr v2, v8

    invoke-virtual {v5, v7, v6, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->color:I

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-static {v3, v5}, Lultima/pro/proxy/NeonLoader;->withAlpha(IF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->r:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->r:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v7, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->dp:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->r:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->r:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    const/high16 v8, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v9, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->dp:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-direct {v2, v3, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->color:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Lultima/pro/proxy/NeonLoader;->withAlpha(IF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->r:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lultima/pro/proxy/NeonLoader$DotsBar;->postInvalidateOnAnimation()V

    return-void

    :cond_1
    const/high16 v10, 0x40e00000    # 7.0f

    mul-float/2addr v10, v5

    int-to-float v11, v2

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v3, v11

    add-int/lit8 v12, v2, -0x1

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->dp:F

    move-object/from16 v0, p0

    iget v14, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->dp:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v0, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->color:I

    move/from16 v16, v0

    const/high16 v17, 0x3e800000    # 0.25f

    const/high16 v18, 0x3f400000    # 0.75f

    mul-float v18, v18, v10

    add-float v17, v17, v18

    invoke-static/range {v16 .. v17}, Lultima/pro/proxy/NeonLoader;->withAlpha(IF)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v15, 0x41400000    # 12.0f

    mul-float/2addr v15, v8

    mul-float/2addr v12, v15

    add-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v13

    const/high16 v13, 0x40c00000    # 6.0f

    mul-float/2addr v13, v9

    add-float/2addr v12, v13

    const/high16 v13, 0x40400000    # 3.0f

    mul-float/2addr v13, v10

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    const v13, 0x3fcccccd    # 1.6f

    mul-float/2addr v10, v13

    const v13, 0x3fcccccd    # 1.6f

    add-float/2addr v10, v13

    move-object/from16 v0, p0

    iget v13, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->dp:F

    mul-float/2addr v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lultima/pro/proxy/NeonLoader$DotsBar;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v10, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
