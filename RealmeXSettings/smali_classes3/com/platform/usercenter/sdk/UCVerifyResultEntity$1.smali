.class final Lcom/platform/usercenter/sdk/UCVerifyResultEntity$1;
.super Ljava/lang/Object;
.source "UCVerifyResultEntity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/sdk/UCVerifyResultEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/platform/usercenter/sdk/UCVerifyResultEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/platform/usercenter/sdk/UCVerifyResultEntity;
    .locals 1

    .line 68
    new-instance v0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;

    invoke-direct {v0, p1}, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/sdk/UCVerifyResultEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/platform/usercenter/sdk/UCVerifyResultEntity;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/platform/usercenter/sdk/UCVerifyResultEntity;
    .locals 0

    .line 73
    new-array p1, p1, [Lcom/platform/usercenter/sdk/UCVerifyResultEntity;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/sdk/UCVerifyResultEntity$1;->newArray(I)[Lcom/platform/usercenter/sdk/UCVerifyResultEntity;

    move-result-object p1

    return-object p1
.end method
