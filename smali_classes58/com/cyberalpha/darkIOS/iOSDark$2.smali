.class Lcom/cyberalpha/darkIOS/iOSDark$2;
.super Ljava/lang/Object;
.source "iOSDark.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyberalpha/darkIOS/iOSDark;->initEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyberalpha/darkIOS/iOSDark;


# direct methods
.method constructor <init>(Lcom/cyberalpha/darkIOS/iOSDark;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyberalpha/darkIOS/iOSDark;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cyberalpha/darkIOS/iOSDark$2;->this$0:Lcom/cyberalpha/darkIOS/iOSDark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark$2;->this$0:Lcom/cyberalpha/darkIOS/iOSDark;

    invoke-static {v0}, Lcom/cyberalpha/darkIOS/iOSDark;->access$100(Lcom/cyberalpha/darkIOS/iOSDark;)Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/cyberalpha/darkIOS/iOSDark$2;->this$0:Lcom/cyberalpha/darkIOS/iOSDark;

    invoke-static {v0}, Lcom/cyberalpha/darkIOS/iOSDark;->access$100(Lcom/cyberalpha/darkIOS/iOSDark;)Lcom/cyberalpha/darkIOS/iOSDarkClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cyberalpha/darkIOS/iOSDark$2;->this$0:Lcom/cyberalpha/darkIOS/iOSDark;

    invoke-interface {v0, v1}, Lcom/cyberalpha/darkIOS/iOSDarkClickListener;->onClick(Lcom/cyberalpha/darkIOS/iOSDark;)V

    .line 121
    :cond_0
    return-void
.end method
