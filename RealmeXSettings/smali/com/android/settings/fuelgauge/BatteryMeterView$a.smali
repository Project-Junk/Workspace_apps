.class public final Lcom/android/settings/fuelgauge/BatteryMeterView$a;
.super Lcom/android/settingslib/k/b;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/k/b;-><init>(Landroid/content/Context;I)V

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700f5

    .line 115
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$a;->f:I

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700f4

    .line 117
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$a;->g:I

    return-void
.end method


# virtual methods
.method public final getIntrinsicHeight()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$a;->g:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$a;->f:I

    return v0
.end method
