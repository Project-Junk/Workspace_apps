.class final Lcom/c/a/f$1;
.super Ljava/lang/Object;
.source "UserEntity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/c/a/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .line 1107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1112
    new-instance v3, Lcom/c/a/f;

    invoke-direct {v3}, Lcom/c/a/f;-><init>()V

    .line 2061
    iput v0, v3, Lcom/c/a/f;->a:I

    .line 2075
    iput-object v1, v3, Lcom/c/a/f;->b:Ljava/lang/String;

    .line 3046
    iput-object v2, v3, Lcom/c/a/f;->c:Ljava/lang/String;

    .line 3054
    iput-object p1, v3, Lcom/c/a/f;->d:Ljava/lang/String;

    return-object v3
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1102
    new-array p1, p1, [Lcom/c/a/f;

    return-object p1
.end method
