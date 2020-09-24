.class public Lcom/android/settings/fuelgauge/BatteryMeterView;
.super Landroid/widget/ImageView;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryMeterView$a;
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/fuelgauge/BatteryMeterView$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/fuelgauge/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f06023c

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 55
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    const v0, 0x1010435

    .line 56
    invoke-static {p1, v0}, Lcom/android/settings/m;->i(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->c:Landroid/graphics/ColorFilter;

    .line 58
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    const v0, 0x7f060043

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->b:Landroid/graphics/ColorFilter;

    .line 60
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    const v0, 0x1010030

    .line 61
    invoke-static {p1, v0}, Lcom/android/settings/m;->i(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->d:Landroid/graphics/ColorFilter;

    .line 63
    new-instance p3, Lcom/android/settings/fuelgauge/BatteryMeterView$a;

    invoke-direct {p3, p1, p2}, Lcom/android/settings/fuelgauge/BatteryMeterView$a;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->a:Lcom/android/settings/fuelgauge/BatteryMeterView$a;

    .line 64
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->a:Lcom/android/settings/fuelgauge/BatteryMeterView$a;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->c:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/BatteryMeterView$a;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->a:Lcom/android/settings/fuelgauge/BatteryMeterView$a;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->a:Lcom/android/settings/fuelgauge/BatteryMeterView$a;

    .line 3104
    iget-boolean v0, v0, Lcom/android/settingslib/k/b;->d:Z

    .line 97
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->a:Lcom/android/settings/fuelgauge/BatteryMeterView$a;

    .line 3324
    iget v1, v1, Lcom/android/settingslib/k/b;->a:I

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->a:Lcom/android/settings/fuelgauge/BatteryMeterView$a;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->d:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView$a;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->a:Lcom/android/settings/fuelgauge/BatteryMeterView$a;

    .line 4095
    iget v0, v0, Lcom/android/settingslib/k/b;->b:I

    if-ge v1, v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->a:Lcom/android/settings/fuelgauge/BatteryMeterView$a;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->b:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView$a;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->a:Lcom/android/settings/fuelgauge/BatteryMeterView$a;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->c:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView$a;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public getBatteryLevel()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->a:Lcom/android/settings/fuelgauge/BatteryMeterView$a;

    .line 2324
    iget v0, v0, Lcom/android/settingslib/k/b;->a:I

    return v0
.end method

.method public getCharging()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->a:Lcom/android/settings/fuelgauge/BatteryMeterView$a;

    .line 3098
    iget-boolean v0, v0, Lcom/android/settingslib/k/b;->c:Z

    return v0
.end method

.method public getPowerSave()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->a:Lcom/android/settings/fuelgauge/BatteryMeterView$a;

    .line 2104
    iget-boolean v0, v0, Lcom/android/settingslib/k/b;->d:Z

    return v0
.end method

.method public setBatteryLevel(I)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->a:Lcom/android/settings/fuelgauge/BatteryMeterView$a;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryMeterView$a;->a(I)V

    .line 70
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryMeterView;->a()V

    return-void
.end method

.method public setCharging(Z)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->a:Lcom/android/settings/fuelgauge/BatteryMeterView$a;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryMeterView$a;->a(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryMeterView;->postInvalidate()V

    return-void
.end method

.method public setPowerSave(Z)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->a:Lcom/android/settings/fuelgauge/BatteryMeterView$a;

    .line 1106
    iput-boolean p1, v0, Lcom/android/settingslib/k/b;->d:Z

    .line 1107
    invoke-virtual {v0}, Lcom/android/settingslib/k/b;->a()V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryMeterView;->a()V

    return-void
.end method
