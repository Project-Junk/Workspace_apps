.class final Lcom/android/settings/fuelgauge/g$1;
.super Ljava/lang/Object;
.source "BatteryUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/g;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/os/BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/fuelgauge/g;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/g;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/android/settings/fuelgauge/g$1;->a:Lcom/android/settings/fuelgauge/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 369
    check-cast p1, Lcom/android/internal/os/BatterySipper;

    check-cast p2, Lcom/android/internal/os/BatterySipper;

    .line 1372
    iget-wide v0, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide p1, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method
