.class Lultima/pro/proxy/MainActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lultima/pro/proxy/ServerCheck$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity;->initializeLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lultima/pro/proxy/MainActivity;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$4;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$4;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-virtual {v0}, Lultima/pro/proxy/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Modified Detected \u2014 Please install the original APK"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$4;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-virtual {v0}, Lultima/pro/proxy/MainActivity;->finishAffinity()V

    :cond_0
    return-void
.end method
