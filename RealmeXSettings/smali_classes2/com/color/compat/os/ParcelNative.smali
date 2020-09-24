.class public Lcom/color/compat/os/ParcelNative;
.super Ljava/lang/Object;
.source "ParcelNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParcelNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readArraySet(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/util/ArraySet;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/util/ArraySet<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-static {p0, p1}, Lcom/color/inner/os/ParcelWrapper;->readArraySet(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public static final readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 58
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0}, Lcom/color/inner/os/ParcelWrapper;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 63
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ParcelNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static readStringNoHelper(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 45
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/os/ParcelWrapper;->readStringNoHelper(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ParcelNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static writeArraySet(Landroid/os/Parcel;Landroid/util/ArraySet;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArraySet<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-static {p0, p1}, Lcom/color/inner/os/ParcelWrapper;->writeArraySet(Landroid/os/Parcel;Landroid/util/ArraySet;)V

    return-void
.end method

.method public static writeStringNoHelper(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 35
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/os/ParcelWrapper;->writeStringNoHelper(Landroid/os/Parcel;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ParcelNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
