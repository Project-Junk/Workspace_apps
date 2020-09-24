.class final Lcom/google/android/material/internal/ParcelableSparseBooleanArray$1;
.super Ljava/lang/Object;
.source "ParcelableSparseBooleanArray.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/ParcelableSparseBooleanArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/internal/ParcelableSparseBooleanArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/internal/ParcelableSparseBooleanArray;
    .locals 6

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    new-instance v1, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    invoke-direct {v1, v0}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;-><init>(I)V

    .line 76
    new-array v2, v0, [I

    .line 77
    new-array v3, v0, [Z

    .line 79
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 80
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 83
    aget v4, v2, p1

    aget-boolean v5, v3, p1

    invoke-virtual {v1, v4, v5}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;->put(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/google/android/material/internal/ParcelableSparseBooleanArray;
    .locals 0

    .line 91
    new-array p1, p1, [Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray$1;->newArray(I)[Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    move-result-object p1

    return-object p1
.end method
