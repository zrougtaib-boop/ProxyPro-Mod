.class public Lcom/cyberalpha/darkIOS/iOSDark;
.super Ljava/lang/Object;
.source "iOSDark.java"


# static fields
.field private static final LOG_ERROR:Ljava/lang/String; = "iOSDark_ERROR"


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private dialogButtonNo:Landroid/widget/TextView;

.field private dialogButtonOk:Landroid/widget/TextView;

.field private negativeExist:Z

.field private negativeListener:Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

.field private positiveListener:Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

.field private separator:Landroid/view/View;

.field private subtitle_lbl:Landroid/widget/TextView;

.field private title_lbl:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Typeface;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;
    .param p4, "bold"    # Z
    .param p5, "typeFace"    # Landroid/graphics/Typeface;
    .param p6, "cancelable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v2, p0, Lcom/cyberalpha/darkIOS/iOSDark;->negativeExist:Z

    .line 31
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialog:Landroid/app/Dialog;

    .line 32
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/cyberalpha/darkIOS/R$layout;->alerts_two_buttons:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 33
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/cyberalpha/darkIOS/iOSDark;->initViews()V

    .line 38
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/cyberalpha/darkIOS/iOSDark;->setTitle(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p3}, Lcom/cyberalpha/darkIOS/iOSDark;->setSubtitle(Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p4}, Lcom/cyberalpha/darkIOS/iOSDark;->setBoldPositiveLabel(Z)V

    .line 42
    invoke-direct {p0, p5}, Lcom/cyberalpha/darkIOS/iOSDark;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 44
    invoke-direct {p0}, Lcom/cyberalpha/darkIOS/iOSDark;->initEvents()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/cyberalpha/darkIOS/iOSDark;)Lcom/cyberalpha/darkIOS/iOSDarkClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/cyberalpha/darkIOS/iOSDark;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->positiveListener:Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cyberalpha/darkIOS/iOSDark;)Lcom/cyberalpha/darkIOS/iOSDarkClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/cyberalpha/darkIOS/iOSDark;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->negativeListener:Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

    return-object v0
.end method

.method private initEvents()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialogButtonOk:Landroid/widget/TextView;

    new-instance v1, Lcom/cyberalpha/darkIOS/iOSDark$1;

    invoke-direct {v1, p0}, Lcom/cyberalpha/darkIOS/iOSDark$1;-><init>(Lcom/cyberalpha/darkIOS/iOSDark;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialogButtonNo:Landroid/widget/TextView;

    new-instance v1, Lcom/cyberalpha/darkIOS/iOSDark$2;

    invoke-direct {v1, p0}, Lcom/cyberalpha/darkIOS/iOSDark$2;-><init>(Lcom/cyberalpha/darkIOS/iOSDark;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/cyberalpha/darkIOS/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->title_lbl:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/cyberalpha/darkIOS/R$id;->subtitle:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->subtitle_lbl:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/cyberalpha/darkIOS/R$id;->dialogButtonOK:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialogButtonOk:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/cyberalpha/darkIOS/R$id;->dialogButtonNO:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialogButtonNo:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/cyberalpha/darkIOS/R$id;->separator:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->separator:Landroid/view/View;

    .line 104
    return-void
.end method

.method private setBoldPositiveLabel(Z)V
    .locals 3
    .param p1, "bold"    # Z

    .prologue
    const/4 v2, 0x0

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialogButtonOk:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialogButtonOk:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method private setNegativeLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "negative"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialogButtonNo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method private setPositiveLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "positive"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialogButtonOk:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method private setTypefaces(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "appleFont"    # Landroid/graphics/Typeface;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->title_lbl:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->subtitle_lbl:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialogButtonOk:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialogButtonNo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 69
    return-void
.end method

.method public setNegative(Ljava/lang/String;Lcom/cyberalpha/darkIOS/iOSDarkClickListener;)V
    .locals 1
    .param p1, "koLabel"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

    .prologue
    .line 53
    if-eqz p2, :cond_0

    .line 54
    iput-object p2, p0, Lcom/cyberalpha/darkIOS/iOSDark;->negativeListener:Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

    .line 55
    invoke-virtual {p0}, Lcom/cyberalpha/darkIOS/iOSDark;->dismiss()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->negativeExist:Z

    .line 57
    invoke-direct {p0, p1}, Lcom/cyberalpha/darkIOS/iOSDark;->setNegativeLabel(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setPositive(Ljava/lang/String;Lcom/cyberalpha/darkIOS/iOSDarkClickListener;)V
    .locals 0
    .param p1, "okLabel"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

    .prologue
    .line 48
    iput-object p2, p0, Lcom/cyberalpha/darkIOS/iOSDark;->positiveListener:Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

    .line 49
    invoke-virtual {p0}, Lcom/cyberalpha/darkIOS/iOSDark;->dismiss()V

    .line 50
    invoke-direct {p0, p1}, Lcom/cyberalpha/darkIOS/iOSDark;->setPositiveLabel(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->subtitle_lbl:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->title_lbl:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 61
    iget-boolean v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->negativeExist:Z

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialogButtonNo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->separator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 66
    return-void
.end method
