.class public final synthetic Lokhttp3/internal/platform/android/SocketAdapter$-CC;
.super Ljava/lang/Object;
.source "SocketAdapter.kt"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0xa
    versionHash = "a094cd79adefa6fbf3669589d7b19cca3f0130aceb9197528bed23802e4572c4"
.end annotation


# direct methods
.method public static $default$matchesSocketFactory(Lokhttp3/internal/platform/android/SocketAdapter;Ljavax/net/ssl/SSLSocketFactory;)Z
    .locals 1
    .param p0, "_this"    # Lokhttp3/internal/platform/android/SocketAdapter;
    .param p1    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 0
    const-string v0, "sslSocketFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public static $default$trustManager(Lokhttp3/internal/platform/android/SocketAdapter;Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .param p0, "_this"    # Lokhttp3/internal/platform/android/SocketAdapter;
    .param p1    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 0
    const-string v0, "sslSocketFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic access$matchesSocketFactory$jd(Lokhttp3/internal/platform/android/SocketAdapter;Ljavax/net/ssl/SSLSocketFactory;)Z
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lokhttp3/internal/platform/android/SocketAdapter$-CC;->$default$matchesSocketFactory(Lokhttp3/internal/platform/android/SocketAdapter;Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$trustManager$jd(Lokhttp3/internal/platform/android/SocketAdapter;Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lokhttp3/internal/platform/android/SocketAdapter$-CC;->$default$trustManager(Lokhttp3/internal/platform/android/SocketAdapter;Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    return-object p0
.end method
