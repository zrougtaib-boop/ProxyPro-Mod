.class public Lultima/pro/proxy/SketchApplication;
.super Landroid/app/Application;


# static fields
.field private static mApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lultima/pro/proxy/SketchApplication;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-virtual {p0}, Lultima/pro/proxy/SketchApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lultima/pro/proxy/SketchApplication;->mApplicationContext:Landroid/content/Context;

    new-instance v0, Lultima/pro/proxy/SketchApplication$1;

    invoke-direct {v0, p0}, Lultima/pro/proxy/SketchApplication$1;-><init>(Lultima/pro/proxy/SketchApplication;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lultima/pro/proxy/SketchLogger;->startLogging()V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method
