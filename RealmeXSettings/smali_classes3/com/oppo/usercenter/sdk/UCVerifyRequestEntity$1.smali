.class final Lcom/oppo/usercenter/sdk/UCVerifyRequestEntity$1;
.super Ljava/lang/Object;
.source "UCVerifyRequestEntity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/usercenter/sdk/UCVerifyRequestEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oppo/usercenter/sdk/UCVerifyRequestEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/oppo/usercenter/sdk/UCVerifyRequestEntity;
    .locals 1

    .line 60
    new-instance v0, Lcom/oppo/usercenter/sdk/UCVerifyRequestEntity;

    invoke-direct {v0, p1}, Lcom/oppo/usercenter/sdk/UCVerifyRequestEntity;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/oppo/usercenter/sdk/UCVerifyRequestEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oppo/usercenter/sdk/UCVerifyRequestEntity;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/oppo/usercenter/sdk/UCVerifyRequestEntity;
    .locals 0

    .line 65
    new-array p1, p1, [Lcom/oppo/usercenter/sdk/UCVerifyRequestEntity;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/oppo/usercenter/sdk/UCVerifyRequestEntity$1;->newArray(I)[Lcom/oppo/usercenter/sdk/UCVerifyRequestEntity;

    move-result-object p1

    return-object p1
.end method
