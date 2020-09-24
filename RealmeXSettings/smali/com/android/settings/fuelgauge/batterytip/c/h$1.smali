.class final Lcom/android/settings/fuelgauge/batterytip/c/h$1;
.super Ljava/lang/Object;
.source "SmartBatteryTip.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterytip/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 2067
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/c/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings/fuelgauge/batterytip/c/h;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1071
    new-array p1, p1, [Lcom/android/settings/fuelgauge/batterytip/c/h;

    return-object p1
.end method
