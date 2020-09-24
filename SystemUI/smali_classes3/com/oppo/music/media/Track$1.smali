.class final Lcom/oppo/music/media/Track$1;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/media/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oppo/music/media/Track;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oppo/music/media/Track;
    .locals 0

    .line 313
    new-instance p0, Lcom/oppo/music/media/Track;

    invoke-direct {p0, p1}, Lcom/oppo/music/media/Track;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Lcom/oppo/music/media/Track$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oppo/music/media/Track;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oppo/music/media/Track;
    .locals 0

    .line 318
    new-array p0, p1, [Lcom/oppo/music/media/Track;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Lcom/oppo/music/media/Track$1;->newArray(I)[Lcom/oppo/music/media/Track;

    move-result-object p0

    return-object p0
.end method
