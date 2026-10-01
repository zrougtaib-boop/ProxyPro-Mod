.class Lultima/pro/proxy/MainActivity$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity$3;->onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lultima/pro/proxy/MainActivity$3;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity$3;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$3$2;->this$1:Lultima/pro/proxy/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3$2;->this$1:Lultima/pro/proxy/MainActivity$3;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$3;->access$0(Lultima/pro/proxy/MainActivity$3;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$26(Lultima/pro/proxy/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3$2;->this$1:Lultima/pro/proxy/MainActivity$3;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$3;->access$0(Lultima/pro/proxy/MainActivity$3;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$26(Lultima/pro/proxy/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$3$2;->this$1:Lultima/pro/proxy/MainActivity$3;

    invoke-static {v1}, Lultima/pro/proxy/MainActivity$3;->access$0(Lultima/pro/proxy/MainActivity$3;)Lultima/pro/proxy/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lultima/pro/proxy/MainActivity;->access$27(Lultima/pro/proxy/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3$2;->this$1:Lultima/proxy/MainActivity$3;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$3;->access$0(Lultima/proxy/MainActivity$3;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    const-string v1, "https://whatsapp.com/channel/0029Vb9AxNe0AgWFTjhaNs0Y"

    invoke-virtual {v0, v1}, Lultima/pro/proxy/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
