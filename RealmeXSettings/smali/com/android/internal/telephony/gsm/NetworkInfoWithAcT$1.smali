.class Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT$1;
.super Ljava/lang/Object;
.source "NetworkInfoWithAcT.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .locals 4

    .line 201
    new-instance v0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .locals 0

    .line 210
    new-array p1, p1, [Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT$1;->newArray(I)[Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    move-result-object p1

    return-object p1
.end method
