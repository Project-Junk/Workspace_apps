.class final Lcom/android/settings/fuelgauge/batterytip/c/f$1;
.super Ljava/lang/Object;
.source "LowBatteryTip.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterytip/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 2064
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/c/f;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/c/f;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1068
    new-array p1, p1, [Lcom/android/settings/fuelgauge/batterytip/c/f;

    return-object p1
.end method
