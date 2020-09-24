.class public abstract Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub;
.super Landroid/os/Binder;
.source "IEdgePanelCallback.java"

# interfaces
.implements Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.coloros.systemui.edgepanel.IEdgePanelCallback"

.field static final TRANSACTION_onDockedStackExistsChanged:I = 0x1

.field static final TRANSACTION_onMinimize:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.coloros.systemui.edgepanel.IEdgePanelCallback"

    .line 36
    invoke-virtual {p0, p0, v0}, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.coloros.systemui.edgepanel.IEdgePanelCallback"

    .line 47
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    instance-of v1, v0, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    if-eqz v1, :cond_1

    .line 49
    check-cast v0, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    return-object v0

    .line 51
    :cond_1
    new-instance v0, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;
    .locals 1

    .line 154
    sget-object v0, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub$Proxy;->sDefaultImpl:Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;)Z
    .locals 1

    .line 147
    sget-object v0, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub$Proxy;->sDefaultImpl:Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 148
    sput-object p0, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub$Proxy;->sDefaultImpl:Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.coloros.systemui.edgepanel.IEdgePanelCallback"

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 64
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 77
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 80
    :cond_2
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub;->onMinimize(Z)V

    return v1

    .line 69
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v0, v1

    .line 72
    :cond_4
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub;->onDockedStackExistsChanged(Z)V

    return v1
.end method
