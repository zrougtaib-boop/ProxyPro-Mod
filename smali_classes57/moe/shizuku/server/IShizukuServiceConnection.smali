.class public interface abstract Lmoe/shizuku/server/IShizukuServiceConnection;
.super Ljava/lang/Object;
.source "IShizukuServiceConnection.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract connected(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract died()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
