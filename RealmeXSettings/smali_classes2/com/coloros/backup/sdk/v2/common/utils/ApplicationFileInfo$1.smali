.class final Lcom/coloros/backup/sdk/v2/common/utils/ApplicationFileInfo$1;
.super Ljava/lang/Object;
.source "ApplicationFileInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/common/utils/ApplicationFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/coloros/backup/sdk/v2/common/utils/ApplicationFileInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/coloros/backup/sdk/v2/common/utils/ApplicationFileInfo;
    .locals 1

    .line 87
    new-instance v0, Lcom/coloros/backup/sdk/v2/common/utils/ApplicationFileInfo;

    invoke-direct {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/ApplicationFileInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/ApplicationFileInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/coloros/backup/sdk/v2/common/utils/ApplicationFileInfo;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/coloros/backup/sdk/v2/common/utils/ApplicationFileInfo;
    .locals 0

    .line 91
    new-array p1, p1, [Lcom/coloros/backup/sdk/v2/common/utils/ApplicationFileInfo;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/ApplicationFileInfo$1;->newArray(I)[Lcom/coloros/backup/sdk/v2/common/utils/ApplicationFileInfo;

    move-result-object p1

    return-object p1
.end method
