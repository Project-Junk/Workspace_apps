.class public final Lcom/android/settings/fuelgauge/batterytip/c/i;
.super Lcom/android/settings/fuelgauge/batterytip/c/c;
.source "SummaryTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/c/i$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/c/i$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/c/i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 37
    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/fuelgauge/batterytip/c/c;-><init>(IIZ)V

    .line 38
    iput-wide p2, p0, Lcom/android/settings/fuelgauge/batterytip/c/i;->f:J

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/c/c;-><init>(Landroid/os/Parcel;)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/i;->f:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f0806b4

    return v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7f120348

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/d;)V
    .locals 2

    .line 80
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/i;->c:I

    const/16 v1, 0x545

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    return-void
.end method

.method public final a(Lcom/android/settings/fuelgauge/batterytip/c/c;)V
    .locals 0

    .line 69
    iget p1, p1, Lcom/android/settings/fuelgauge/batterytip/c/c;->c:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/i;->c:I

    return-void
.end method

.method public final b()I
    .locals 1

    const v0, 0x7f060042

    return v0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7f120347

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 74
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/c/c;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/i;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
