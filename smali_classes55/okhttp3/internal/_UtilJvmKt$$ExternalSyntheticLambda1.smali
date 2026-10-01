.class public final synthetic Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x12
    versionHash = "a094cd79adefa6fbf3669589d7b19cca3f0130aceb9197528bed23802e4572c4"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 0
    iget-object v0, p0, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1, p1}, Lokhttp3/internal/_UtilJvmKt;->$r8$lambda$ZdS4dfhTHo1yF9ojhmqiKNov7Oo(Ljava/lang/String;ZLjava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
