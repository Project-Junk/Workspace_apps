.class Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEdgePanelCallback.java"

# interfaces
.implements Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.coloros.systemui.edgepanel.IEdgePanelCallback"

    return-object p0
.end method

.method public onDockedStackExistsChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.coloros.systemui.edgepanel.IEdgePanelCallback"

    .line 111
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 112
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 114
    invoke-static {}, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub;->getDefaultImpl()Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 115
    invoke-static {}, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub;->getDefaultImpl()Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;->onDockedStackExistsChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 121
    throw p0
.end method

.method public onMinimize(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.coloros.systemui.edgepanel.IEdgePanelCallback"

    .line 130
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 131
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 133
    invoke-static {}, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub;->getDefaultImpl()Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 134
    invoke-static {}, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub;->getDefaultImpl()Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;->onMinimize(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    throw p0
.end method
