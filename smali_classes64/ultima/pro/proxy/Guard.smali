.class public Lultima/pro/proxy/Guard;
.super Ljava/lang/Object;


# static fields
.field public static final ALLOWED_SHA256:[Ljava/lang/String;

.field private static final APP_NAME:Ljava/lang/String;

.field public static final EXPECTED_PACKAGE:Ljava/lang/String;

.field private static final SECRET:Ljava/lang/String;

.field private static cached:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "PHEA0JG5XZ18HYT5NTYHFSR8"

    sput-object v0, Lultima/pro/proxy/Guard;->SECRET:Ljava/lang/String;

    const-string v0, "ULTIMA PRO PROXY"

    sput-object v0, Lultima/pro/proxy/Guard;->APP_NAME:Ljava/lang/String;

    const-string v0, "ultima.pro.proxy"

    sput-object v0, Lultima/pro/proxy/Guard;->EXPECTED_PACKAGE:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PUT_YOUR_SHA256_HERE"

    aput-object v2, v0, v1

    sput-object v0, Lultima/pro/proxy/Guard;->ALLOWED_SHA256:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lultima/pro/proxy/Guard;->cached:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allOk(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lultima/pro/proxy/Guard;->cached:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    sget-object v0, Lultima/pro/proxy/Guard;->cached:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v2, Lultima/pro/proxy/Guard;->ALLOWED_SHA256:[Ljava/lang/String;

    array-length v2, v2

    if-ne v2, v0, :cond_1

    sget-object v2, Lultima/pro/proxy/Guard;->ALLOWED_SHA256:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "PUT_YOUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    invoke-static {p0}, Lultima/pro/proxy/Guard;->okSignature(Landroid/content/Context;)Z

    move-result v2

    :goto_1
    invoke-static {p0}, Lultima/pro/proxy/Guard;->okPackage(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lultima/pro/proxy/Guard;->okName(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lultima/pro/proxy/Guard;->cached:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private static appLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static clean()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v2

    :cond_1
    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "de.robv.android.xposed"

    aput-object v2, v3, v0

    const-string v2, "com.saurik.substrate"

    aput-object v2, v3, v1

    const/4 v2, 0x2

    const-string v4, "org.frida"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "re.frida"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "com.android.reverse"

    aput-object v4, v3, v2

    array-length v4, v3

    move v2, v0

    :goto_1
    if-lt v2, v4, :cond_3

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/self/maps"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_3
    aget-object v5, v3, v2

    :try_start_2
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "frida"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "xposed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "substrate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private static fingerprint(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PHEA0JG5XZ18HYT5NTYHFSR8|ultima.pro.proxy|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lultima/pro/proxy/Guard;->appLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    aget-byte v2, v2, v1

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static okName(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lultima/pro/proxy/Guard;->appLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "\\s+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lultima/pro/proxy/Guard;->APP_NAME:Ljava/lang/String;

    const-string v3, "\\s+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static okPackage(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    sget-object v0, Lultima/pro/proxy/Guard;->EXPECTED_PACKAGE:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static okSignature(Landroid/content/Context;)Z
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lultima/pro/proxy/Guard;->ALLOWED_SHA256:[Ljava/lang/String;

    array-length v2, v2

    if-ne v2, v0, :cond_1

    sget-object v2, Lultima/pro/proxy/Guard;->ALLOWED_SHA256:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "PUT_YOUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v2

    move-object v4, v2

    :goto_1
    array-length v5, v4

    move v3, v1

    :goto_2
    if-lt v3, v5, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v2

    goto :goto_1

    :cond_3
    aget-object v2, v4, v3

    :try_start_1
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    array-length v8, v6

    move v2, v1

    :goto_3
    if-lt v2, v8, :cond_4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lultima/pro/proxy/Guard;->ALLOWED_SHA256:[Ljava/lang/String;

    array-length v8, v7

    move v2, v1

    :goto_4
    if-lt v2, v8, :cond_5

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_4
    const-string v9, "%02X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-byte v12, v6, v2

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    aget-object v9, v7, v2

    const-string v10, ":"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    if-nez v9, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0
.end method
