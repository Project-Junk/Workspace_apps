.class Lorg/codeaurora/internal/UpperLayerIndInfo$1;
.super Ljava/lang/Object;
.source "UpperLayerIndInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/internal/UpperLayerIndInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/UpperLayerIndInfo$1;->createFromParcel(Landroid/os/Parcel;)Lorg/codeaurora/internal/UpperLayerIndInfo;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/codeaurora/internal/UpperLayerIndInfo;
    .locals 0

    .line 81
    new-instance p0, Lorg/codeaurora/internal/UpperLayerIndInfo;

    invoke-direct {p0, p1}, Lorg/codeaurora/internal/UpperLayerIndInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/UpperLayerIndInfo$1;->newArray(I)[Lorg/codeaurora/internal/UpperLayerIndInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lorg/codeaurora/internal/UpperLayerIndInfo;
    .locals 0

    .line 85
    new-array p0, p1, [Lorg/codeaurora/internal/UpperLayerIndInfo;

    return-object p0
.end method
