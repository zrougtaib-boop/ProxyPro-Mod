.class Lultima/pro/proxy/MainActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity;->_reCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lultima/pro/proxy/MainActivity;

.field private final val$dd:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$7;->this$0:Lultima/pro/proxy/MainActivity;

    iput-object p2, p0, Lultima/pro/proxy/MainActivity$7;->val$dd:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://whatsapp.com/channel/0029Vb9AxNe0AgWFTjhaNs0Y"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$7;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-virtual {v1, v0}, Lultima/pro/proxy/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$7;->val$dd:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
