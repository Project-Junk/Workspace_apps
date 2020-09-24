.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;
.super Ljava/lang/Object;
.source "BatterySaverScheduleSeekBarController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public a:Lcom/android/settings/widget/SeekBarPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->b:Landroid/content/Context;

    .line 58
    new-instance v0, Lcom/android/settings/widget/SeekBarPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->a:Lcom/android/settings/widget/SeekBarPreference;

    .line 59
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->a:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->a:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p1}, Lcom/android/settings/widget/SeekBarPreference;->j()V

    .line 61
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->a:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->d(I)V

    .line 62
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->a:Lcom/android/settings/widget/SeekBarPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->e(I)V

    .line 63
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->a:Lcom/android/settings/widget/SeekBarPreference;

    const-string v0, "battery_saver_seek_bar"

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setKey(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "automatic_power_save_mode"

    .line 81
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "low_power_trigger_level"

    .line 87
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    div-int/lit8 v0, v0, 0x5

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 92
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->a:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SeekBarPreference;->setVisible(Z)V

    .line 93
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->a:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SeekBarPreference;->f(I)V

    .line 94
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->a:Lcom/android/settings/widget/SeekBarPreference;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->b:Landroid/content/Context;

    const v5, 0x7f120312

    new-array v2, v2, [Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x5

    .line 96
    invoke-static {v0}, Lcom/android/settings/m;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 94
    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SeekBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->a:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setVisible(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 70
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    .line 71
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_trigger_level"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->b:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 74
    invoke-static {p2}, Lcom/android/settings/m;->a(I)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const p2, 0x7f120312

    .line 73
    invoke-virtual {v0, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return v1
.end method
