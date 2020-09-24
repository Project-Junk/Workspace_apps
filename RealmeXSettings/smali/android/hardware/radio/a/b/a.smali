.class public interface abstract Landroid/hardware/radio/a/b/a;
.super Ljava/lang/Object;
.source "IRadioConfig.java"

# interfaces
.implements Landroid/hardware/radio/a/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/a/b/a$a;
    }
.end annotation


# direct methods
.method public static b()Landroid/hardware/radio/a/b/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    const-string v1, "android.hardware.radio.config@1.1::IRadioConfig"

    const/4 v2, 0x1

    .line 1067
    invoke-static {v1, v0, v2}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/a/b/a;->b(Landroid/os/IHwBinder;)Landroid/hardware/radio/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/os/IHwBinder;)Landroid/hardware/radio/a/b/a;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.hardware.radio.config@1.1::IRadioConfig"

    .line 30
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 32
    instance-of v3, v2, Landroid/hardware/radio/a/b/a;

    if-eqz v3, :cond_1

    .line 33
    check-cast v2, Landroid/hardware/radio/a/b/a;

    return-object v2

    .line 36
    :cond_1
    new-instance v2, Landroid/hardware/radio/a/b/a$a;

    invoke-direct {v2, p0}, Landroid/hardware/radio/a/b/a$a;-><init>(Landroid/os/IHwBinder;)V

    .line 39
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/radio/a/b/a;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method


# virtual methods
.method public abstract a(IB)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(ILandroid/hardware/radio/a/b/e;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract b(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
