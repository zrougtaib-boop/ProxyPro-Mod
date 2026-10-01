.class Lultima/pro/proxy/NeonSound$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/NeonSound;->speak(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Lultima/pro/proxy/NeonSound;->access$0()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lultima/pro/proxy/NeonSound;->access$0()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    sget v1, Lultima/pro/proxy/NeonSound;->SPEED:F

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    invoke-static {}, Lultima/pro/proxy/NeonSound;->access$0()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    sget v1, Lultima/pro/proxy/NeonSound;->PITCH:F

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    const/4 v0, 0x1

    invoke-static {v0}, Lultima/pro/proxy/NeonSound;->access$1(Z)V

    invoke-static {}, Lultima/pro/proxy/NeonSound;->access$2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lultima/pro/proxy/NeonSound;->access$2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/NeonSound;->access$3(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lultima/pro/proxy/NeonSound;->access$4(Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
