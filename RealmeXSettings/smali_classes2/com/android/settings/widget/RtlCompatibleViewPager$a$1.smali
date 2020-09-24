.class final Lcom/android/settings/widget/RtlCompatibleViewPager$a$1;
.super Ljava/lang/Object;
.source "RtlCompatibleViewPager.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/RtlCompatibleViewPager$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/android/settings/widget/RtlCompatibleViewPager$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    .line 2122
    new-instance v0, Lcom/android/settings/widget/RtlCompatibleViewPager$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/widget/RtlCompatibleViewPager$a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;B)V

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 2

    .line 1117
    new-instance v0, Lcom/android/settings/widget/RtlCompatibleViewPager$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/settings/widget/RtlCompatibleViewPager$a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;B)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1127
    new-array p1, p1, [Lcom/android/settings/widget/RtlCompatibleViewPager$a;

    return-object p1
.end method
