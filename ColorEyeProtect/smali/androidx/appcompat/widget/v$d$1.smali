.class final Landroidx/appcompat/widget/v$d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/v$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/appcompat/widget/v$d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/appcompat/widget/v$d;
    .locals 0

    new-instance p0, Landroidx/appcompat/widget/v$d;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/v$d;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public a(I)[Landroidx/appcompat/widget/v$d;
    .locals 0

    new-array p0, p1, [Landroidx/appcompat/widget/v$d;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/v$d$1;->a(Landroid/os/Parcel;)Landroidx/appcompat/widget/v$d;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/v$d$1;->a(I)[Landroidx/appcompat/widget/v$d;

    move-result-object p0

    return-object p0
.end method
