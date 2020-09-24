.class public Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;
.super Ljava/lang/Object;
.source "KeepaliveStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NO_RESOURCES:I = 0x2

.field public static final ERROR_UNKNOWN:I = 0x3

.field public static final ERROR_UNSUPPORTED:I = 0x1

.field public static final INVALID_HANDLE:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "KeepaliveStatus"

.field public static final STATUS_ACTIVE:I = 0x0

.field public static final STATUS_INACTIVE:I = 0x1

.field public static final STATUS_PENDING:I = 0x2


# instance fields
.field public final errorCode:I

.field public final sessionHandle:I

.field public final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 56
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->sessionHandle:I

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    .line 58
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->errorCode:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->sessionHandle:I

    .line 63
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->errorCode:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->errorCode:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->sessionHandle:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/dataconnection/KeepaliveStatus$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    .line 70
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->errorCode:I

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->sessionHandle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "{errorCode=%d, sessionHandle=%d, statusCode=%d}"

    .line 70
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 82
    iget p2, p0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->errorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget p2, p0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget p2, p0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
