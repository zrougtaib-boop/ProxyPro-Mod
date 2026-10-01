.class public Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;
.super Ljava/lang/Object;
.source "iOSDialogBuilder.java"


# instance fields
.field private bold:Z

.field private cancelable:Z

.field private context:Landroid/content/Context;

.field private koLabel:Ljava/lang/String;

.field private negativeListener:Lcom/cyberalpha/iOSDialog/iOSDialogClickListener;

.field private okLabel:Ljava/lang/String;

.field private positiveListener:Lcom/cyberalpha/iOSDialog/iOSDialogClickListener;

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
    iput-object p1, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->context:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public build()Lcom/cyberalpha/iOSDialog/iOSDialog;
    .locals 7

    .prologue
    .line 61
    new-instance v0, Lcom/cyberalpha/iOSDialog/iOSDialog;

    iget-object v1, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->subtitle:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->bold:Z

    iget-object v5, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->tf:Landroid/graphics/Typeface;

    iget-boolean v6, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->cancelable:Z

    invoke-direct/range {v0 .. v6}, Lcom/cyberalpha/iOSDialog/iOSDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Typeface;Z)V

    .line 62
    .local v0, "dialog":Lcom/cyberalpha/iOSDialog/iOSDialog;
    iget-object v1, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->koLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->negativeListener:Lcom/cyberalpha/iOSDialog/iOSDialogClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/cyberalpha/iOSDialog/iOSDialog;->setNegative(Ljava/lang/String;Lcom/cyberalpha/iOSDialog/iOSDialogClickListener;)V

    .line 63
    iget-object v1, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->okLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->positiveListener:Lcom/cyberalpha/iOSDialog/iOSDialogClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/cyberalpha/iOSDialog/iOSDialog;->setPositive(Ljava/lang/String;Lcom/cyberalpha/iOSDialog/iOSDialogClickListener;)V

    .line 64
    return-object v0
.end method

.method public setBoldPositiveLabel(Z)Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;
    .locals 0
    .param p1, "bold"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->bold:Z

    .line 36
    return-object p0
.end method

.method public setCancelable(Z)Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;
    .locals 0
    .param p1, "cancelable"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->cancelable:Z

    .line 45
    return-object p0
.end method

.method public setFont(Landroid/graphics/Typeface;)Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;
    .locals 0
    .param p1, "font"    # Landroid/graphics/Typeface;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->tf:Landroid/graphics/Typeface;

    .line 41
    return-object p0
.end method

.method public setNegativeListener(Ljava/lang/String;Lcom/cyberalpha/iOSDialog/iOSDialogClickListener;)Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;
    .locals 0
    .param p1, "koLabel"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/cyberalpha/iOSDialog/iOSDialogClickListener;

    .prologue
    .line 49
    iput-object p2, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->negativeListener:Lcom/cyberalpha/iOSDialog/iOSDialogClickListener;

    .line 50
    iput-object p1, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->koLabel:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public setPositiveListener(Ljava/lang/String;Lcom/cyberalpha/iOSDialog/iOSDialogClickListener;)Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;
    .locals 0
    .param p1, "okLabel"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/cyberalpha/iOSDialog/iOSDialogClickListener;

    .prologue
    .line 55
    iput-object p2, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->positiveListener:Lcom/cyberalpha/iOSDialog/iOSDialogClickListener;

    .line 56
    iput-object p1, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->okLabel:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->subtitle:Ljava/lang/String;

    .line 31
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cyberalpha/iOSDialog/iOSDialogBuilder;->title:Ljava/lang/String;

    .line 26
    return-object p0
.end method
