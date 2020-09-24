.class final Lcom/android/settings/fuelgauge/batterytip/c/i$1;
.super Ljava/lang/Object;
.source "SummaryTip.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterytip/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 2090
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/c/i;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/c/i;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1094
    new-array p1, p1, [Lcom/android/settings/fuelgauge/batterytip/c/i;

    return-object p1
.end method
