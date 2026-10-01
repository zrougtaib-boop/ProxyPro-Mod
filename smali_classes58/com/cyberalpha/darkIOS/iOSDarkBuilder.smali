.class public Lcom/cyberalpha/darkIOS/iOSDarkBuilder;
.super Ljava/lang/Object;
.source "iOSDarkBuilder.java"


# instance fields
.field private bold:Z

.field private cancelable:Z

.field private context:Landroid/content/Context;

.field private koLabel:Ljava/lang/String;

.field private negativeListener:Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

.field private okLabel:Ljava/lang/String;

.field private positiveListener:Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

.field private subtitle:Ljava/lang/String;

.field private tf:Landroid/graphics/Typeface;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->context:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public build()Lcom/cyberalpha/darkIOS/iOSDark;
    .locals 7

    .prologue
    .line 61
    new-instance v0, Lcom/cyberalpha/darkIOS/iOSDark;

    iget-object v1, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->subtitle:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->bold:Z

    iget-object v5, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->tf:Landroid/graphics/Typeface;

    iget-boolean v6, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->cancelable:Z

    invoke-direct/range {v0 .. v6}, Lcom/cyberalpha/darkIOS/iOSDark;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Typeface;Z)V

    .line 62
    .local v0, "dialog":Lcom/cyberalpha/darkIOS/iOSDark;
    iget-object v1, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->koLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->negativeListener:Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/cyberalpha/darkIOS/iOSDark;->setNegative(Ljava/lang/String;Lcom/cyberalpha/darkIOS/iOSDarkClickListener;)V

    .line 63
    iget-object v1, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->okLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->positiveListener:Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/cyberalpha/darkIOS/iOSDark;->setPositive(Ljava/lang/String;Lcom/cyberalpha/darkIOS/iOSDarkClickListener;)V

    .line 64
    return-object v0
.end method

.method public setBoldPositiveLabel(Z)Lcom/cyberalpha/darkIOS/iOSDarkBuilder;
    .locals 0
    .param p1, "bold"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->bold:Z

    .line 36
    return-object p0
.end method

.method public setCancelable(Z)Lcom/cyberalpha/darkIOS/iOSDarkBuilder;
    .locals 0
    .param p1, "cancelable"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->cancelable:Z

    .line 45
    return-object p0
.end method

.method public setFont(Landroid/graphics/Typeface;)Lcom/cyberalpha/darkIOS/iOSDarkBuilder;
    .locals 0
    .param p1, "font"    # Landroid/graphics/Typeface;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->tf:Landroid/graphics/Typeface;

    .line 41
    return-object p0
.end method

.method public setNegativeListener(Ljava/lang/String;Lcom/cyberalpha/darkIOS/iOSDarkClickListener;)Lcom/cyberalpha/darkIOS/iOSDarkBuilder;
    .locals 0
    .param p1, "koLabel"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

    .prologue
    .line 49
    iput-object p2, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->negativeListener:Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

    .line 50
    iput-object p1, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->koLabel:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public setPositiveListener(Ljava/lang/String;Lcom/cyberalpha/darkIOS/iOSDarkClickListener;)Lcom/cyberalpha/darkIOS/iOSDarkBuilder;
    .locals 0
    .param p1, "okLabel"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

    .prologue
    .line 55
    iput-object p2, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->positiveListener:Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

    .line 56
    iput-object p1, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->okLabel:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/cyberalpha/darkIOS/iOSDarkBuilder;
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->subtitle:Ljava/lang/String;

    .line 31
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/cyberalpha/darkIOS/iOSDarkBuilder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cyberalpha/darkIOS/iOSDarkBuilder;->title:Ljava/lang/String;

    .line 26
    return-object p0
.end method
