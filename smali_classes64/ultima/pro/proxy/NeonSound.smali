.class public Lultima/pro/proxy/NeonSound;
.super Ljava/lang/Object;


# static fields
.field public static AUTO_OPEN_GAME:Z

.field public static ENABLED:Z

.field public static GAME_PACKAGES:[Ljava/lang/String;

.field public static NO_GAME_TEXT:Ljava/lang/String;

.field public static OFF_TEXT:Ljava/lang/String;

.field public static ON_TEXT:Ljava/lang/String;

.field public static OPEN_GAME_TEXT:Ljava/lang/String;

.field public static PITCH:F

.field public static SPEED:F

.field public static gameOpened:Z

.field private static pending:Ljava/lang/String;

.field private static queueFlush:Z

.field private static ready:Z

.field private static tts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    sput-boolean v2, Lultima/pro/proxy/NeonSound;->ENABLED:Z

    sput v0, Lultima/pro/proxy/NeonSound;->SPEED:F

    sput v0, Lultima/pro/proxy/NeonSound;->PITCH:F

    const-string v0, "Activated"

    sput-object v0, Lultima/pro/proxy/NeonSound;->ON_TEXT:Ljava/lang/String;

    const-string v0, "Deactivated"

    sput-object v0, Lultima/pro/proxy/NeonSound;->OFF_TEXT:Ljava/lang/String;

    sput-boolean v2, Lultima/pro/proxy/NeonSound;->AUTO_OPEN_GAME:Z

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "com.dts.freefireth"

    aput-object v1, v0, v3

    sput-object v0, Lultima/pro/proxy/NeonSound;->GAME_PACKAGES:[Ljava/lang/String;

    const-string v0, "Game not installed. Please install Free Fire"

    sput-object v0, Lultima/pro/proxy/NeonSound;->NO_GAME_TEXT:Ljava/lang/String;

    const-string v0, "Now quickly opening game"

    sput-object v0, Lultima/pro/proxy/NeonSound;->OPEN_GAME_TEXT:Ljava/lang/String;

    sput-boolean v3, Lultima/pro/proxy/NeonSound;->ready:Z

    sput-boolean v2, Lultima/pro/proxy/NeonSound;->queueFlush:Z

    sput-boolean v3, Lultima/pro/proxy/NeonSound;->gameOpened:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/speech/tts/TextToSpeech;
    .locals 1

    sget-object v0, Lultima/pro/proxy/NeonSound;->tts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$1(Z)V
    .locals 0

    sput-boolean p0, Lultima/pro/proxy/NeonSound;->ready:Z

    return-void
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lultima/pro/proxy/NeonSound;->pending:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lultima/pro/proxy/NeonSound;->say(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lultima/pro/proxy/NeonSound;->pending:Ljava/lang/String;

    return-void
.end method

.method private static appVisible(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static findLabel(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lultima/pro/proxy/NeonSound;->firstText(Landroid/view/ViewGroup;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, "Function"

    goto :goto_0
.end method

.method private static firstText(Landroid/view/ViewGroup;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    instance-of v2, v0, Landroid/widget/CompoundButton;

    if-nez v2, :cond_2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lultima/pro/proxy/NeonSound;->firstText(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static isInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static onSwitch(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_1

    sget-object v0, Lultima/pro/proxy/NeonSound;->ON_TEXT:Ljava/lang/String;

    :goto_0
    invoke-static {p0, v0}, Lultima/pro/proxy/NeonSound;->speak(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lultima/pro/proxy/NeonSound;->findLabel(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string v0, " Activated"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    invoke-static {p0}, Lultima/pro/proxy/NeonSound;->openGame(Landroid/content/Context;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lultima/pro/proxy/NeonSound;->OFF_TEXT:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, " Deactivated"

    goto :goto_1
.end method

.method public static openGame(Landroid/content/Context;)V
    .locals 7

    const/4 v1, 0x0

    sget-boolean v0, Lultima/pro/proxy/NeonSound;->AUTO_OPEN_GAME:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lultima/pro/proxy/NeonSound;->GAME_PACKAGES:[Ljava/lang/String;

    array-length v4, v3

    :goto_1
    if-lt v1, v4, :cond_1

    move-object v2, v0

    :goto_2
    if-nez v2, :cond_5

    sget-object v0, Lultima/pro/proxy/NeonSound;->NO_GAME_TEXT:Ljava/lang/String;

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    aget-object v5, v3, v1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_3
    if-nez v0, :cond_2

    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v0, v2

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0, v5}, Lultima/pro/proxy/NeonSound;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    if-eqz v0, :cond_4

    move-object v2, v0

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lultima/pro/proxy/NeonSound;->gameOpened:Z

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0}, Lultima/pro/proxy/NeonSound;->appVisible(Landroid/content/Context;)Z

    move-result v3

    const-wide/16 v0, 0x12c

    if-eqz v3, :cond_6

    sget-object v0, Lultima/pro/proxy/NeonSound;->OPEN_GAME_TEXT:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lultima/pro/proxy/NeonSound;->speak(Landroid/content/Context;Ljava/lang/String;Z)V

    const-wide/16 v0, 0x640

    :cond_6
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lultima/pro/proxy/NeonSound$2;

    invoke-direct {v4, p0, v2}, Lultima/pro/proxy/NeonSound$2;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method private static say(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object v1, Lultima/pro/proxy/NeonSound;->tts:Landroid/speech/tts/TextToSpeech;

    sget-boolean v0, Lultima/pro/proxy/NeonSound;->queueFlush:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static speak(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lultima/pro/proxy/NeonSound;->speak(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static speak(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    sget-boolean v0, Lultima/pro/proxy/NeonSound;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean p2, Lultima/pro/proxy/NeonSound;->queueFlush:Z

    const-string v0, " - "

    const-string v1, ". "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "!"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    sget-object v0, Lultima/pro/proxy/NeonSound;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_2

    sput-object v1, Lultima/pro/proxy/NeonSound;->pending:Ljava/lang/String;

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lultima/pro/proxy/NeonSound$1;

    invoke-direct {v2}, Lultima/pro/proxy/NeonSound$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v0, Lultima/pro/proxy/NeonSound;->tts:Landroid/speech/tts/TextToSpeech;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    sget-boolean v0, Lultima/pro/proxy/NeonSound;->ready:Z

    if-nez v0, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v0, Lultima/pro/proxy/NeonSound;->pending:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_1
    :try_start_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lultima/pro/proxy/NeonSound;->pending:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lultima/pro/proxy/NeonSound;->pending:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ". "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lultima/pro/proxy/NeonSound;->say(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
