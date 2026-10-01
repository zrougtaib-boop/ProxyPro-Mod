.class Lultima/pro/proxy/MainActivity$3$3;
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

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$3$3;->this$1:Lultima/pro/proxy/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3$3;->this$1:Lultima/pro/proxy/MainActivity$3;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$3;->access$0(Lultima/pro/proxy/MainActivity$3;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lultima/pro/proxy/MainActivity;->finish()V

    return-void
.end method
