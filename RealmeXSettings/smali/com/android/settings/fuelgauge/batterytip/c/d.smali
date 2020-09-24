.class public Lcom/android/settings/fuelgauge/batterytip/c/d;
.super Lcom/android/settings/fuelgauge/batterytip/c/c;
.source "EarlyWarningTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/c/d$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/c/d$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/c/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/fuelgauge/batterytip/c/c;-><init>(IIZ)V

    .line 35
    iput-boolean p2, p0, Lcom/android/settings/fuelgauge/batterytip/c/d;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/c/c;-><init>(Landroid/os/Parcel;)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/d;->f:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 61
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/d;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0806b5

    return v0

    :cond_0
    const v0, 0x7f0806b3

    return v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    .line 45
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/d;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f12033a

    goto :goto_0

    :cond_0
    const v0, 0x7f12033c

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/d;)V
    .locals 2

    .line 90
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/d;->c:I

    const/16 v1, 0x547

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    return-void
.end method

.method public final a(Lcom/android/settings/fuelgauge/batterytip/c/c;)V
    .locals 2

    .line 75
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/c/d;

    .line 76
    iget v0, p1, Lcom/android/settings/fuelgauge/batterytip/c/d;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/d;->c:I

    goto :goto_0

    .line 79
    :cond_0
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/d;->c:I

    if-nez v0, :cond_2

    iget v0, p1, Lcom/android/settings/fuelgauge/batterytip/c/d;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 81
    iget-boolean v0, p1, Lcom/android/settings/fuelgauge/batterytip/c/d;->f:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput v1, p0, Lcom/android/settings/fuelgauge/batterytip/c/d;->c:I

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/c/d;->f()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/d;->c:I

    .line 85
    :goto_0
    iget-boolean p1, p1, Lcom/android/settings/fuelgauge/batterytip/c/d;->f:Z

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/d;->f:Z

    return-void
.end method

.method public final b()I
    .locals 2

    .line 68
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/d;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f060045

    return v0

    :cond_0
    const v0, 0x7f060040

    return v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    .line 53
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/d;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f120339

    goto :goto_0

    :cond_0
    const v0, 0x7f12033b

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/c/c;->writeToParcel(Landroid/os/Parcel;I)V

    .line 97
    iget-boolean p2, p0, Lcom/android/settings/fuelgauge/batterytip/c/d;->f:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
