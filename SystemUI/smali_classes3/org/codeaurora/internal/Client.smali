.class public Lorg/codeaurora/internal/Client;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/codeaurora/internal/Client;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Client"


# instance fields
.field private mCallback:Lorg/codeaurora/internal/INetworkCallback;

.field private mId:I

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lorg/codeaurora/internal/Client$1;

    invoke-direct {v0}, Lorg/codeaurora/internal/Client$1;-><init>()V

    sput-object v0, Lorg/codeaurora/internal/Client;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lorg/codeaurora/internal/INetworkCallback;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lorg/codeaurora/internal/Client;->mId:I

    .line 53
    iput p2, p0, Lorg/codeaurora/internal/Client;->mUid:I

    .line 54
    iput-object p3, p0, Lorg/codeaurora/internal/Client;->mPackageName:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lorg/codeaurora/internal/Client;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/Client;->mId:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/Client;->mUid:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/internal/Client;->mPackageName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lorg/codeaurora/internal/INetworkCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/INetworkCallback;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/internal/Client;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCallback()Lorg/codeaurora/internal/INetworkCallback;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/codeaurora/internal/Client;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 66
    iget p0, p0, Lorg/codeaurora/internal/Client;->mId:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/codeaurora/internal/Client;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .locals 0

    .line 70
    iget p0, p0, Lorg/codeaurora/internal/Client;->mUid:I

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/Client;->mId:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/Client;->mUid:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/internal/Client;->mPackageName:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lorg/codeaurora/internal/INetworkCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/INetworkCallback;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/internal/Client;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codeaurora/internal/Client;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codeaurora/internal/Client;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Lorg/codeaurora/internal/Client;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codeaurora/internal/Client;->getCallback()Lorg/codeaurora/internal/INetworkCallback;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 87
    iget p2, p0, Lorg/codeaurora/internal/Client;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget p2, p0, Lorg/codeaurora/internal/Client;->mUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object p2, p0, Lorg/codeaurora/internal/Client;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p0, p0, Lorg/codeaurora/internal/Client;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return-void
.end method
