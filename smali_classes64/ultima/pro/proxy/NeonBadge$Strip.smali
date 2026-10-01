.class Lultima/pro/proxy/NeonBadge$Strip;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lultima/pro/proxy/NeonBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Strip"
.end annotation


# instance fields
.field private final p:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonBadge$Strip;->p:Landroid/graphics/Paint;

    return-void
.end method

.method synthetic constructor <init>(Lultima/pro/proxy/NeonBadge$Strip;)V
    .locals 0

    invoke-direct {p0}, Lultima/pro/proxy/NeonBadge$Strip;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lultima/pro/proxy/NeonBadge$Strip;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lultima/pro/proxy/NeonBadge$Strip;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 12

    const/4 v11, 0x5

    const/high16 v10, -0x4d000000

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    sget v0, Lultima/pro/proxy/NeonBadge;->COLOR:I

    const v1, 0xffffff

    and-int v4, v0, v1

    iget-object v8, p0, Lultima/pro/proxy/NeonBadge$Strip;->p:Landroid/graphics/Paint;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    new-instance v0, Landroid/graphics/LinearGradient;

    new-array v5, v11, [I

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v6, 0x1

    or-int v9, v10, v4

    aput v9, v5, v6

    const/4 v6, 0x2

    const/high16 v9, -0xe000000

    or-int/2addr v9, v4

    aput v9, v5, v6

    const/4 v6, 0x3

    or-int v9, v10, v4

    aput v9, v5, v6

    const/4 v6, 0x4

    aput v4, v5, v6

    new-array v6, v11, [F

    fill-array-data v6, :array_0

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
