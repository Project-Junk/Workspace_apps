.class final Lcom/google/android/material/picker/CalendarBounds$1;
.super Ljava/lang/Object;
.source "CalendarBounds.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/CalendarBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/picker/CalendarBounds;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/picker/CalendarBounds;
    .locals 3

    .line 108
    const-class v0, Lcom/google/android/material/picker/Month;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/picker/Month;

    .line 109
    const-class v1, Lcom/google/android/material/picker/Month;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/picker/Month;

    .line 110
    const-class v2, Lcom/google/android/material/picker/Month;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/picker/Month;

    .line 111
    invoke-static {v0, v1, p1}, Lcom/google/android/material/picker/CalendarBounds;->create(Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;)Lcom/google/android/material/picker/CalendarBounds;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/CalendarBounds$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/picker/CalendarBounds;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/google/android/material/picker/CalendarBounds;
    .locals 0

    .line 116
    new-array p1, p1, [Lcom/google/android/material/picker/CalendarBounds;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/CalendarBounds$1;->newArray(I)[Lcom/google/android/material/picker/CalendarBounds;

    move-result-object p1

    return-object p1
.end method
