.class public final Lcom/android/settings/fuelgauge/batterytip/c/f;
.super Lcom/android/settings/fuelgauge/batterytip/c/d;
.source "LowBatteryTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private f:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/c/f$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/c/f$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/c/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZLjava/lang/CharSequence;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/c/d;-><init>(IZ)V

    const/4 p1, 0x5

    .line 35
    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/f;->b:I

    .line 36
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/c/f;->f:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/c/d;-><init>(Landroid/os/Parcel;)V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/f;->f:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/d;)V
    .locals 2

    .line 58
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/f;->c:I

    const/16 v1, 0x548

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    return-void
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    .line 46
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/f;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f120339

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/f;->f:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/c/d;->writeToParcel(Landroid/os/Parcel;I)V

    .line 53
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/c/f;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    return-void
.end method
