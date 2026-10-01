.class public Lultima/pro/proxy/RequestNetwork;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lultima/pro/proxy/RequestNetwork$RequestListener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private requestType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/RequestNetwork;->params:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/RequestNetwork;->headers:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lultima/pro/proxy/RequestNetwork;->requestType:I

    iput-object p1, p0, Lultima/pro/proxy/RequestNetwork;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/RequestNetwork;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lultima/pro/proxy/RequestNetwork;->headers:Ljava/util/HashMap;

    return-object v0
.end method

.method public getParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lultima/pro/proxy/RequestNetwork;->params:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    iget v0, p0, Lultima/pro/proxy/RequestNetwork;->requestType:I

    return v0
.end method

.method public setHeaders(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lultima/pro/proxy/RequestNetwork;->headers:Ljava/util/HashMap;

    return-void
.end method

.method public setParams(Ljava/util/HashMap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lultima/pro/proxy/RequestNetwork;->params:Ljava/util/HashMap;

    iput p2, p0, Lultima/pro/proxy/RequestNetwork;->requestType:I

    return-void
.end method

.method public startRequestNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lultima/pro/proxy/RequestNetwork$RequestListener;)V
    .locals 6

    invoke-static {}, Lultima/pro/proxy/RequestNetworkController;->getInstance()Lultima/pro/proxy/RequestNetworkController;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lultima/pro/proxy/RequestNetworkController;->execute(Lultima/pro/proxy/RequestNetwork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lultima/pro/proxy/RequestNetwork$RequestListener;)V

    return-void
.end method
