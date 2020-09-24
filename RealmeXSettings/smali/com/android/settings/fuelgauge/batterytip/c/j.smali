.class public final Lcom/android/settings/fuelgauge/batterytip/c/j;
.super Lcom/android/settings/fuelgauge/batterytip/c/c;
.source "UnrestrictAppTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public f:Lcom/android/settings/fuelgauge/batterytip/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/c/j$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/c/j$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/c/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/c/c;-><init>(Landroid/os/Parcel;)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/c;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/j;->f:Lcom/android/settings/fuelgauge/batterytip/c;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/fuelgauge/batterytip/c;)V
    .locals 3

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 35
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/batterytip/c/c;-><init>(IIZ)V

    .line 36
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/j;->f:Lcom/android/settings/fuelgauge/batterytip/c;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/d;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/android/settings/fuelgauge/batterytip/c/c;)V
    .locals 0

    .line 68
    iget p1, p1, Lcom/android/settings/fuelgauge/batterytip/c/c;->c:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/j;->c:I

    return-void
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 82
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/c/c;->writeToParcel(Landroid/os/Parcel;I)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/j;->f:Lcom/android/settings/fuelgauge/batterytip/c;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
