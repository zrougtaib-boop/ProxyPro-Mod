.class Lcom/cyberalpha/iOSDialog/iOSDialog$2;
.super Ljava/lang/Object;
.source "iOSDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyberalpha/iOSDialog/iOSDialog;->initEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyberalpha/iOSDialog/iOSDialog;


# direct methods
.method constructor <init>(Lcom/cyberalpha/iOSDialog/iOSDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyberalpha/iOSDialog/iOSDialog;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cyberalpha/iOSDialog/iOSDialog$2;->this$0:Lcom/cyberalpha/iOSDialog/iOSDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/cyberalpha/iOSDialog/iOSDialog$2;->this$0:Lcom/cyberalpha/iOSDialog/iOSDialog;

    invoke-static {v0}, Lcom/cyberalpha/iOSDialog/iOSDialog;->access$100(Lcom/cyberalpha/iOSDialog/iOSDialog;)Lcom/cyberalpha/iOSDialog/iOSDialogClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/cyberalpha/iOSDialog/iOSDialog$2;->this$0:Lcom/cyberalpha/iOSDialog/iOSDialog;

    invoke-static {v0}, Lcom/cyberalpha/iOSDialog/iOSDialog;->access$100(Lcom/cyberalpha/iOSDialog/iOSDialog;)Lcom/cyberalpha/iOSDialog/iOSDialogClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cyberalpha/iOSDialog/iOSDialog$2;->this$0:Lcom/cyberalpha/iOSDialog/iOSDialog;

    invoke-interface {v0, v1}, Lcom/cyberalpha/iOSDialog/iOSDialogClickListener;->onClick(Lcom/cyberalpha/iOSDialog/iOSDialog;)V

    .line 121
    :cond_0
    return-void
.end method
