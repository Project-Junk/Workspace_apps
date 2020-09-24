.class public final Lcom/android/settings/fuelgauge/batterytip/c/h;
.super Lcom/android/settings/fuelgauge/batterytip/c/c;
.source "SmartBatteryTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/c/h$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/c/h$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/c/h;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, p1, v0}, Lcom/android/settings/fuelgauge/batterytip/c/c;-><init>(IIZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/c/c;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/c/h;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f0807fc

    return v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7f120346

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/d;)V
    .locals 2

    .line 61
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/h;->c:I

    const/16 v1, 0x546

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    return-void
.end method

.method public final a(Lcom/android/settings/fuelgauge/batterytip/c/c;)V
    .locals 0

    .line 56
    iget p1, p1, Lcom/android/settings/fuelgauge/batterytip/c/c;->c:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/h;->c:I

    return-void
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7f120345

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
