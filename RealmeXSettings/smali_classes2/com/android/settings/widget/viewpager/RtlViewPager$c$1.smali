.class final Lcom/android/settings/widget/viewpager/RtlViewPager$c$1;
.super Ljava/lang/Object;
.source "RtlViewPager.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/viewpager/RtlViewPager$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/android/settings/widget/viewpager/RtlViewPager$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/settings/widget/viewpager/RtlViewPager$c;
    .locals 2

    .line 185
    new-instance v0, Lcom/android/settings/widget/viewpager/RtlViewPager$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/widget/viewpager/RtlViewPager$c;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;B)V

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 2180
    invoke-static {p1, v0}, Lcom/android/settings/widget/viewpager/RtlViewPager$c$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/settings/widget/viewpager/RtlViewPager$c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 176
    invoke-static {p1, p2}, Lcom/android/settings/widget/viewpager/RtlViewPager$c$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/settings/widget/viewpager/RtlViewPager$c;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1190
    new-array p1, p1, [Lcom/android/settings/widget/viewpager/RtlViewPager$c;

    return-object p1
.end method
