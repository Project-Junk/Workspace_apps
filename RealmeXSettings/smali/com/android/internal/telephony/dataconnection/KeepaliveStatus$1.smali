.class Lcom/android/internal/telephony/dataconnection/KeepaliveStatus$1;
.super Ljava/lang/Object;
.source "KeepaliveStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;
    .locals 2

    .line 97
    new-instance v0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;-><init>(Landroid/os/Parcel;Lcom/android/internal/telephony/dataconnection/KeepaliveStatus$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;
    .locals 0

    .line 102
    new-array p1, p1, [Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus$1;->newArray(I)[Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    move-result-object p1

    return-object p1
.end method