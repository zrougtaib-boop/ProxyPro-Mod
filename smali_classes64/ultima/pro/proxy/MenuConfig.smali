.class public Lultima/pro/proxy/MenuConfig;
.super Ljava/lang/Object;


# static fields
.field public static f1:Z

.field public static f10:Z

.field public static f11:Z

.field public static f12:Z

.field public static f13:Z

.field public static f14:Z

.field public static f15:Z

.field public static f16:Z

.field public static f2:Z

.field public static f3:Z

.field public static f4:Z

.field public static f5:Z

.field public static f6:Z

.field public static f7:Z

.field public static f8:Z

.field public static f9:Z

.field public static infoTab:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-boolean v1, Lultima/pro/proxy/MenuConfig;->f1:Z

    sput-boolean v1, Lultima/pro/proxy/MenuConfig;->f2:Z

    sput-boolean v0, Lultima/pro/proxy/MenuConfig;->f3:Z

    sput-boolean v0, Lultima/pro/proxy/MenuConfig;->f4:Z

    sput-boolean v1, Lultima/pro/proxy/MenuConfig;->f5:Z

    sput-boolean v1, Lultima/pro/proxy/MenuConfig;->f6:Z

    sput-boolean v0, Lultima/pro/proxy/MenuConfig;->f7:Z

    sput-boolean v0, Lultima/pro/proxy/MenuConfig;->f8:Z

    sput-boolean v0, Lultima/pro/proxy/MenuConfig;->f9:Z

    sput-boolean v0, Lultima/pro/proxy/MenuConfig;->f10:Z

    sput-boolean v0, Lultima/pro/proxy/MenuConfig;->f11:Z

    sput-boolean v0, Lultima/pro/proxy/MenuConfig;->f12:Z

    sput-boolean v0, Lultima/pro/proxy/MenuConfig;->f13:Z

    sput-boolean v0, Lultima/pro/proxy/MenuConfig;->f14:Z

    sput-boolean v0, Lultima/pro/proxy/MenuConfig;->f15:Z

    sput-boolean v0, Lultima/pro/proxy/MenuConfig;->f16:Z

    sput-boolean v1, Lultima/pro/proxy/MenuConfig;->infoTab:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, v1

    :goto_1
    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    const-string v0, "b1"

    invoke-static {v1}, Lultima/pro/proxy/MenuConfig;->tabHasAny(I)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lultima/pro/proxy/MenuConfig;->setGone(Landroid/view/View;Ljava/lang/String;Z)V

    const-string v0, "b2"

    const/4 v1, 0x2

    invoke-static {v1}, Lultima/pro/proxy/MenuConfig;->tabHasAny(I)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lultima/pro/proxy/MenuConfig;->setGone(Landroid/view/View;Ljava/lang/String;Z)V

    const-string v0, "b3"

    const/4 v1, 0x3

    invoke-static {v1}, Lultima/pro/proxy/MenuConfig;->tabHasAny(I)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lultima/pro/proxy/MenuConfig;->setGone(Landroid/view/View;Ljava/lang/String;Z)V

    const-string v0, "b4"

    const/4 v1, 0x4

    invoke-static {v1}, Lultima/pro/proxy/MenuConfig;->tabHasAny(I)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lultima/pro/proxy/MenuConfig;->setGone(Landroid/view/View;Ljava/lang/String;Z)V

    const-string v0, "b5"

    sget-boolean v1, Lultima/pro/proxy/MenuConfig;->infoTab:Z

    invoke-static {p0, v0, v1}, Lultima/pro/proxy/MenuConfig;->setGone(Landroid/view/View;Ljava/lang/String;Z)V

    invoke-static {p0}, Lultima/pro/proxy/MenuConfig;->showFirstActiveTab(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "s"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lultima/pro/proxy/MenuConfig;->on(I)Z

    move-result v3

    invoke-static {p0, v2, v3}, Lultima/pro/proxy/MenuConfig;->setGone(Landroid/view/View;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static on(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    sget-boolean v0, Lultima/pro/proxy/MenuConfig;->f1:Z

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lultima/pro/proxy/MenuConfig;->f2:Z

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lultima/pro/proxy/MenuConfig;->f3:Z

    goto :goto_0

    :pswitch_3
    sget-boolean v0, Lultima/pro/proxy/MenuConfig;->f4:Z

    goto :goto_0

    :pswitch_4
    sget-boolean v0, Lultima/pro/proxy/MenuConfig;->f5:Z

    goto :goto_0

    :pswitch_5
    sget-boolean v0, Lultima/pro/proxy/MenuConfig;->f6:Z

    goto :goto_0

    :pswitch_6
    sget-boolean v0, Lultima/pro/proxy/MenuConfig;->f7:Z

    goto :goto_0

    :pswitch_7
    sget-boolean v0, Lultima/pro/proxy/MenuConfig;->f8:Z

    goto :goto_0

    :pswitch_8
    sget-boolean v0, Lultima/pro/proxy/MenuConfig;->f9:Z

    goto :goto_0

    :pswitch_9
    sget-boolean v0, Lultima/pro/proxy/MenuConfig;->f10:Z

    goto :goto_0

    :pswitch_a
    sget-boolean v0, Lultima/pro/proxy/MenuConfig;->f11:Z

    goto :goto_0

    :pswitch_b
    sget-boolean v0, Lultima/pro/proxy/MenuConfig;->f12:Z

    goto :goto_0

    :pswitch_c
    sget-boolean v0, Lultima/pro/proxy/MenuConfig;->f13:Z

    goto :goto_0

    :pswitch_d
    sget-boolean v0, Lultima/pro/proxy/MenuConfig;->f14:Z

    goto :goto_0

    :pswitch_e
    sget-boolean v0, Lultima/pro/proxy/MenuConfig;->f15:Z

    goto :goto_0

    :pswitch_f
    sget-boolean v0, Lultima/pro/proxy/MenuConfig;->f16:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private static res(Landroid/view/View;Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static setGone(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Lultima/pro/proxy/MenuConfig;->res(Landroid/view/View;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static showFirstActiveTab(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    const/4 v3, 0x4

    if-le v0, v3, :cond_1

    move v4, v2

    :goto_1
    if-nez v4, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_0
    invoke-static {v0}, Lultima/pro/proxy/MenuConfig;->tabHasAny(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_3
    const/4 v0, 0x5

    if-gt v3, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "l"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-ne v3, v4, :cond_4

    move v0, v1

    :goto_4
    invoke-static {p0, v5, v0}, Lultima/pro/proxy/MenuConfig;->setGone(Landroid/view/View;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private static tabHasAny(I)Z
    .locals 2

    add-int/lit8 v0, p0, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lultima/pro/proxy/MenuConfig;->on(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    invoke-static {v1}, Lultima/pro/proxy/MenuConfig;->on(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x3

    invoke-static {v1}, Lultima/pro/proxy/MenuConfig;->on(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lultima/pro/proxy/MenuConfig;->on(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
