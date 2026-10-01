.class public Lultima/pro/proxy/NeonShapes;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static corner(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFII)V
    .locals 6

    int-to-float v0, p5

    mul-float/2addr v0, p4

    add-float v3, p2, v0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v4, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v0, p6

    mul-float/2addr v0, p4

    add-float v4, p3, v0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static dot(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;IILandroid/graphics/Paint;FIIII)V
    .locals 13

    int-to-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    int-to-float v1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v2, v2, p4

    sub-float v12, v1, v2

    const/16 v1, 0xa

    const/16 v2, 0x64

    move/from16 v0, p7

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int v2, v2, p6

    or-int/2addr v1, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, p8

    int-to-float v4, v0

    mul-float/2addr v2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v1, v1, p4

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, 0x3ea3d70a    # 0.32f

    mul-float v10, v12, v1

    packed-switch p5, :pswitch_data_0

    move-object/from16 v0, p3

    invoke-virtual {p0, v11, v3, v12, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :pswitch_0
    const/high16 v1, 0x40200000    # 2.5f

    mul-float v1, v1, p4

    move-object/from16 v0, p3

    invoke-static {p0, v0, v11, v3, v1}, Lultima/pro/proxy/NeonShapes;->dot(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    goto :goto_0

    :pswitch_1
    sub-float v2, v11, v12

    sub-float v4, v11, v10

    move-object v1, p0

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v2, v11, v10

    add-float v4, v11, v12

    move-object v1, p0

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v6, v3, v12

    sub-float v8, v3, v10

    move-object v4, p0

    move v5, v11

    move v7, v11

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v6, v3, v10

    add-float v8, v3, v12

    move-object v4, p0

    move v5, v11

    move v7, v11

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p4

    move-object/from16 v0, p3

    invoke-static {p0, v0, v11, v3, v1}, Lultima/pro/proxy/NeonShapes;->dot(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p3

    invoke-virtual {p0, v11, v3, v12, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40200000    # 2.5f

    mul-float v1, v1, p4

    move-object/from16 v0, p3

    invoke-static {p0, v0, v11, v3, v1}, Lultima/pro/proxy/NeonShapes;->dot(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p3

    invoke-virtual {p0, v11, v3, v12, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sub-float v2, v11, v12

    add-float v4, v11, v12

    move-object v1, p0

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v3, v12

    add-float v5, v3, v12

    move-object v1, p0

    move v2, v11

    move v3, v4

    move v4, v11

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_4
    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v1, v12

    sub-float v5, v11, v1

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v1, v12

    sub-float v6, v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v10

    sub-float v7, v11, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v10

    sub-float v8, v3, v1

    move-object v4, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v10

    add-float v5, v11, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v10

    add-float v6, v3, v1

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v1, v12

    add-float v7, v11, v1

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v1, v12

    add-float v8, v3, v1

    move-object v4, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v1, v12

    add-float v5, v11, v1

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v1, v12

    sub-float v6, v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v10

    add-float v7, v11, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v10

    sub-float v8, v3, v1

    move-object v4, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v10

    sub-float v2, v11, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v10

    add-float v6, v3, v1

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v1, v12

    sub-float v4, v11, v1

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v1, v12

    add-float v5, v3, v1

    move-object v1, p0

    move v3, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_5
    sub-float v6, v11, v12

    sub-float v7, v3, v12

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v8, v12, v1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v4, p0

    move-object/from16 v5, p3

    invoke-static/range {v4 .. v10}, Lultima/pro/proxy/NeonShapes;->corner(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFII)V

    add-float v6, v11, v12

    sub-float v7, v3, v12

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v8, v12, v1

    const/4 v9, -0x1

    const/4 v10, 0x1

    move-object v4, p0

    move-object/from16 v5, p3

    invoke-static/range {v4 .. v10}, Lultima/pro/proxy/NeonShapes;->corner(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFII)V

    sub-float v6, v11, v12

    add-float v7, v3, v12

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v8, v12, v1

    const/4 v9, 0x1

    const/4 v10, -0x1

    move-object v4, p0

    move-object/from16 v5, p3

    invoke-static/range {v4 .. v10}, Lultima/pro/proxy/NeonShapes;->corner(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFII)V

    add-float v6, v11, v12

    add-float v7, v3, v12

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v8, v12, v1

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v4, p0

    move-object/from16 v5, p3

    invoke-static/range {v4 .. v10}, Lultima/pro/proxy/NeonShapes;->corner(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFII)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p4

    move-object/from16 v0, p3

    invoke-static {p0, v0, v11, v3, v1}, Lultima/pro/proxy/NeonShapes;->dot(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v5, Landroid/graphics/RectF;

    sub-float v1, v11, v12

    sub-float v2, v3, v12

    add-float v4, v11, v12

    add-float v6, v3, v12

    invoke-direct {v5, v1, v2, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, 0x43480000    # 200.0f

    const/high16 v7, 0x42480000    # 50.0f

    const/4 v8, 0x0

    move-object v4, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x43910000    # 290.0f

    const/high16 v7, 0x42480000    # 50.0f

    const/4 v8, 0x0

    move-object v4, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, 0x42480000    # 50.0f

    const/4 v8, 0x0

    move-object v4, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x42dc0000    # 110.0f

    const/high16 v7, 0x42480000    # 50.0f

    const/4 v8, 0x0

    move-object v4, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p4

    move-object/from16 v0, p3

    invoke-static {p0, v0, v11, v3, v1}, Lultima/pro/proxy/NeonShapes;->dot(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    goto/16 :goto_0

    :pswitch_7
    sub-float v2, v11, v12

    add-float v4, v11, v12

    move-object v1, p0

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v5, v3, v12

    move-object v1, p0

    move v2, v11

    move v4, v11

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p4

    move-object/from16 v0, p3

    invoke-static {p0, v0, v11, v3, v1}, Lultima/pro/proxy/NeonShapes;->dot(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sub-float v2, v3, v12

    invoke-virtual {v1, v11, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v2, v11, v12

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v2, v3, v12

    invoke-virtual {v1, v11, v2}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v2, v11, v12

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p3

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p4

    move-object/from16 v0, p3

    invoke-static {p0, v0, v11, v3, v1}, Lultima/pro/proxy/NeonShapes;->dot(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p3

    invoke-virtual {p0, v11, v3, v12, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v1, v12

    move-object/from16 v0, p3

    invoke-virtual {p0, v11, v3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p3

    invoke-virtual {p0, v11, v3, v12, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sub-float v2, v11, v12

    sub-float v4, v11, v10

    move-object v1, p0

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v2, v11, v10

    add-float v4, v11, v12

    move-object v1, p0

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v6, v3, v12

    sub-float v8, v3, v10

    move-object v4, p0

    move v5, v11

    move v7, v11

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v6, v3, v10

    add-float v8, v3, v12

    move-object v4, p0

    move v5, v11

    move v7, v11

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p4

    move-object/from16 v0, p3

    invoke-static {p0, v0, v11, v3, v1}, Lultima/pro/proxy/NeonShapes;->dot(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
