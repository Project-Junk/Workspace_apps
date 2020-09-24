.class final Lcom/coloros/settings/feature/weather/view/HeadersGridView$g$1;
.super Ljava/lang/Object;
.source "HeadersGridView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/view/HeadersGridView$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/coloros/settings/feature/weather/view/HeadersGridView$g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 3194
    new-instance v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$g;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2199
    new-array p1, p1, [Lcom/coloros/settings/feature/weather/view/HeadersGridView$g;

    return-object p1
.end method
