.class final Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity$1;
.super Ljava/lang/Object;
.source "UCLogoutTransferEntity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;
    .locals 1

    .line 32
    new-instance v0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;

    invoke-direct {v0, p1}, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;
    .locals 0

    .line 37
    new-array p1, p1, [Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity$1;->newArray(I)[Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;

    move-result-object p1

    return-object p1
.end method
