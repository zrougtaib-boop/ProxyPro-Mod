.class public interface abstract Lmoe/shizuku/server/IShizukuApplication;
.super Ljava/lang/Object;
.source "IShizukuApplication.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract bindApplication(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dispatchRequestPermissionResult(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showPermissionConfirmation(IILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
