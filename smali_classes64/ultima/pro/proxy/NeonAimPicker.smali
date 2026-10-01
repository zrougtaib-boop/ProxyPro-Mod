.class public Lultima/pro/proxy/NeonAimPicker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lultima/pro/proxy/NeonAimPicker$Item;
    }
.end annotation


# static fields
.field public static final STYLES:[I

.field private static aimOn:Z

.field private static items:[Landroid/view/View;

.field private static row:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lultima/pro/proxy/NeonAimPicker;->STYLES:[I

    const/4 v0, 0x0

    sput-boolean v0, Lultima/pro/proxy/NeonAimPicker;->aimOn:Z

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/widget/TextView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lultima/pro/proxy/NeonAimPicker;->styleToggle(Landroid/widget/TextView;Z)V

    return-void
.end method

.method static synthetic access$1(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    invoke-static {p0}, Lultima/pro/proxy/NeonAimPicker;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2()V
    .locals 0

    invoke-static {}, Lultima/pro/proxy/NeonAimPicker;->mark()V

    return-void
.end method

.method static synthetic access$3()Landroid/widget/LinearLayout;
    .locals 1

    sget-object v0, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4()Z
    .locals 1

    sget-boolean v0, Lultima/pro/proxy/NeonAimPicker;->aimOn:Z

    return v0
.end method

.method public static install(Landroid/content/Context;Landroid/view/View;)V
    .locals 13

    const v1, 0x7f08010b

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    sget-object v1, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    sget-object v1, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    sget-object v2, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    sput-object v1, Lultima/pro/proxy/NeonAimPicker;->items:[Landroid/view/View;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    sget-object v1, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-object v1, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget-object v1, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v8

    float-to-int v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v4, v8

    float-to-int v4, v4

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget-object v1, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    sget-object v1, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {p0}, Lultima/pro/proxy/NeonAimPicker;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "CIRCLE COLOR"

    invoke-static {p0, v1, v8}, Lultima/pro/proxy/NeonAimPicker;->makeLabelLeft(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/SeekBar;

    invoke-direct {v12, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x168

    invoke-virtual {v12, v1}, Landroid/widget/SeekBar;->setMax(I)V

    const-string v1, "circle_hue"

    const/16 v2, 0x8c

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v2, v1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, v8

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v8

    float-to-int v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    invoke-virtual {v12, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0, v8}, Lultima/pro/proxy/NeonAimPicker;->makeThumb(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, v8

    float-to-int v1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/widget/SeekBar;->setPadding(IIII)V

    new-instance v1, Lultima/pro/proxy/NeonAimPicker$1;

    invoke-direct {v1, v9, p0}, Lultima/pro/proxy/NeonAimPicker$1;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v12, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x41d00000    # 26.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "CIRCLE SIZE"

    invoke-static {p0, v1, v8}, Lultima/pro/proxy/NeonAimPicker;->makeLabelLeft(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/SeekBar;

    invoke-direct {v1, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    const/4 v2, 0x0

    const-string v3, "circle_size"

    const/16 v4, 0x30

    invoke-interface {v9, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, -0xf

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v8

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMinimumHeight(I)V

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, -0xff009a

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, -0xff009a

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v2, Lultima/pro/proxy/NeonAimPicker$2;

    invoke-direct {v2, v9, p0}, Lultima/pro/proxy/NeonAimPicker$2;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x41d00000    # 26.0f

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v10, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "RGB"

    invoke-static {p0, v1, v8}, Lultima/pro/proxy/NeonAimPicker;->makeToggleBtn(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "rgb_auto"

    const/4 v4, 0x0

    invoke-interface {v9, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    const-string v3, "rgb_auto"

    const/4 v4, 0x0

    invoke-interface {v9, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v1, v3}, Lultima/pro/proxy/NeonAimPicker;->styleToggle(Landroid/widget/TextView;Z)V

    new-instance v3, Lultima/pro/proxy/NeonAimPicker$3;

    invoke-direct {v3, v9, v1, p0}, Lultima/pro/proxy/NeonAimPicker$3;-><init>(Landroid/content/SharedPreferences;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42800000    # 64.0f

    mul-float/2addr v4, v8

    float-to-int v4, v4

    const/high16 v5, 0x42080000    # 34.0f

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "STOP"

    invoke-static {p0, v1, v8}, Lultima/pro/proxy/NeonAimPicker;->makeToggleBtn(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v3

    const-string v1, "aim_spin"

    const/4 v4, 0x1

    invoke-interface {v9, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-static {v3, v1}, Lultima/pro/proxy/NeonAimPicker;->styleToggle(Landroid/widget/TextView;Z)V

    new-instance v1, Lultima/pro/proxy/NeonAimPicker$4;

    invoke-direct {v1, v9, v3, p0}, Lultima/pro/proxy/NeonAimPicker$4;-><init>(Landroid/content/SharedPreferences;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42800000    # 64.0f

    mul-float/2addr v4, v8

    float-to-int v4, v4

    const/high16 v5, 0x42080000    # 34.0f

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget-object v1, Lultima/pro/proxy/NeonAimPicker;->STYLES:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/view/View;

    sput-object v1, Lultima/pro/proxy/NeonAimPicker;->items:[Landroid/view/View;

    const/4 v1, 0x0

    :goto_3
    sget-object v3, Lultima/pro/proxy/NeonAimPicker;->STYLES:[I

    array-length v3, v3

    if-lt v1, v3, :cond_3

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v3, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v8

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sget-object v2, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lultima/pro/proxy/NeonAimPicker;->mark()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    sget-object v3, Lultima/pro/proxy/NeonAimPicker;->STYLES:[I

    aget v3, v3, v1

    new-instance v4, Lultima/pro/proxy/NeonAimPicker$Item;

    invoke-direct {v4, p0, v3}, Lultima/pro/proxy/NeonAimPicker$Item;-><init>(Landroid/content/Context;I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42080000    # 34.0f

    mul-float/2addr v6, v8

    float-to-int v6, v6

    const/high16 v9, 0x42080000    # 34.0f

    mul-float/2addr v9, v8

    float-to-int v9, v9

    invoke-direct {v5, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v5, Lultima/pro/proxy/NeonAimPicker;->items:[Landroid/view/View;

    aput-object v4, v5, v1

    new-instance v5, Lultima/pro/proxy/NeonAimPicker$5;

    invoke-direct {v5, p0, v3}, Lultima/pro/proxy/NeonAimPicker$5;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lultima/pro/proxy/NeonAimPicker$Item;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x10000
    .end array-data
.end method

.method private static makeLabel(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/TextView;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, -0x400028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v1, 0x41600000    # 14.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private static makeLabelLeft(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/TextView;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, -0x400028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private static makeThumb(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const v2, -0xddddde

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v1, 0x41900000    # 18.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    return-object v0
.end method

.method private static makeToggleBtn(Landroid/content/Context;Ljava/lang/String;F)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.method private static mark()V
    .locals 4

    sget-object v0, Lultima/pro/proxy/NeonAimPicker;->items:[Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lultima/pro/proxy/NeonAimPicker;->items:[Landroid/view/View;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "neon_overlay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static row2add(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static show(Z)V
    .locals 2

    sput-boolean p0, Lultima/pro/proxy/NeonAimPicker;->aimOn:Z

    sget-object v0, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lultima/pro/proxy/NeonAimPicker;->row:Landroid/widget/LinearLayout;

    new-instance v1, Lultima/pro/proxy/NeonAimPicker$6;

    invoke-direct {v1}, Lultima/pro/proxy/NeonAimPicker$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static style(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Lultima/pro/proxy/NeonAimPicker;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cross_style"

    sget-object v2, Lultima/pro/proxy/NeonAimPicker;->STYLES:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static styleToggle(Landroid/widget/TextView;Z)V
    .locals 4

    const v3, -0xff009a

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p1, :cond_0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const v0, -0xffec00

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const v2, 0x22ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const v2, 0x3fb33333    # 1.4f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
