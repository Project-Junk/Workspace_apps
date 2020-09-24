.class public final Lcom/android/settings/widget/viewpager/RtlViewPager$c;
.super Ljava/lang/Object;
.source "RtlViewPager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/viewpager/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/android/settings/widget/viewpager/RtlViewPager$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/os/Parcelable;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 175
    new-instance v0, Lcom/android/settings/widget/viewpager/RtlViewPager$c$1;

    invoke-direct {v0}, Lcom/android/settings/widget/viewpager/RtlViewPager$c$1;-><init>()V

    sput-object v0, Lcom/android/settings/widget/viewpager/RtlViewPager$c;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 159
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$c;->a:Landroid/os/Parcelable;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$c;->b:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;B)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/viewpager/RtlViewPager$c;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$c;->a:Landroid/os/Parcelable;

    .line 152
    iput p2, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$c;->b:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IB)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/viewpager/RtlViewPager$c;-><init>(Landroid/os/Parcelable;I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/viewpager/RtlViewPager$c;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$c;->b:I

    return p0
.end method

.method static synthetic b(Lcom/android/settings/widget/viewpager/RtlViewPager$c;)Landroid/os/Parcelable;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$c;->a:Landroid/os/Parcelable;

    return-object p0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$c;->a:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 171
    iget p2, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$c;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
