.class Lultima/pro/proxy/ServerCheck$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/ServerCheck;->check(Landroid/app/Activity;Lultima/pro/proxy/ServerCheck$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final val$act:Landroid/app/Activity;

.field private final val$cb:Lultima/pro/proxy/ServerCheck$Result;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lultima/pro/proxy/ServerCheck$Result;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/ServerCheck$1;->val$act:Landroid/app/Activity;

    iput-object p2, p0, Lultima/pro/proxy/ServerCheck$1;->val$cb:Lultima/pro/proxy/ServerCheck$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lultima/pro/proxy/ServerCheck$1;->val$act:Landroid/app/Activity;

    iget-object v1, p0, Lultima/pro/proxy/ServerCheck$1;->val$cb:Lultima/pro/proxy/ServerCheck$Result;

    invoke-static {v0, v1}, Lultima/pro/proxy/ServerCheck;->access$0(Landroid/app/Activity;Lultima/pro/proxy/ServerCheck$Result;)V

    return-void
.end method
