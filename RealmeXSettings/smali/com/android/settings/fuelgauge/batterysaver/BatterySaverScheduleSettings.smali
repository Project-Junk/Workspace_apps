.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "BatterySaverScheduleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$a;
    }
.end annotation


# instance fields
.field public a:Lcom/android/settings/fuelgauge/batterysaver/a;

.field b:Landroid/content/Context;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final c:Landroid/database/ContentObserver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private d:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$1;-><init>(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->c:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/g;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1083
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.android.internal.R.string.config_batterySaverScheduleProvider"

    .line 120
    invoke-static {v3}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    new-instance v3, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$a;

    const v4, 0x7f120304

    .line 122
    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "key_battery_saver_no_schedule"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 121
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    new-instance v2, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$a;

    const v3, 0x7f120307

    .line 129
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f120308

    .line 130
    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v6, "key_battery_saver_routine"

    invoke-direct {v2, v3, v4, v6}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 128
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {v0}, Lcom/android/settingslib/j/a;->a(Landroid/content/Context;)V

    .line 137
    :goto_0
    new-instance v2, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$a;

    const v3, 0x7f120305

    .line 138
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "key_battery_saver_percentage"

    invoke-direct {v2, v0, v5, v3}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 137
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final a(Landroidx/preference/PreferenceGroup;)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->d:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->a()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->d:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    .line 3111
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->a:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setOrder(I)V

    .line 3112
    iget-object v0, v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->a:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public final a(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/g;)V
    .locals 0

    .line 149
    check-cast p3, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$a;

    .line 1209
    iget-object p2, p3, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$a;->a:Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    .line 153
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2112
    iget-object p2, p1, Lcom/android/settings/widget/RadioButtonPreference;->b:Landroid/view/View;

    const/16 p3, 0x8

    if-eqz p2, :cond_0

    .line 2113
    iget-object p2, p1, Lcom/android/settings/widget/RadioButtonPreference;->b:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 2115
    :cond_0
    iput p3, p1, Lcom/android/settings/widget/RadioButtonPreference;->c:I

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 11

    .line 171
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->a:Lcom/android/settings/fuelgauge/batterysaver/a;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 4076
    :cond_0
    iget-object v2, v0, Lcom/android/settings/fuelgauge/batterysaver/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4079
    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    const/4 v4, -0x1

    .line 4080
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0xb3ab488

    const-string v7, "key_battery_saver_no_schedule"

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v5, v6, :cond_3

    const v6, 0xd747119

    if-eq v5, v6, :cond_2

    const v6, 0x4f9ed856    # 5.3299558E9f

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "key_battery_saver_percentage"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v9

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v1

    goto :goto_0

    :cond_3
    const-string v5, "key_battery_saver_routine"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v8

    :cond_4
    :goto_0
    const/4 v5, 0x5

    if-eqz v4, :cond_7

    const-string v6, "extra_power_save_mode_trigger"

    const-string v10, "extra_confirm_only"

    if-eq v4, v9, :cond_6

    if-ne v4, v8, :cond_5

    .line 4093
    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4094
    invoke-virtual {v3, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v5, v1

    move v4, v9

    goto :goto_1

    .line 4098
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a valid key for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4099
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4085
    :cond_6
    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4086
    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "extra_power_save_mode_trigger_level"

    .line 4088
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v4, v1

    goto :goto_1

    :cond_7
    move v4, v1

    move v5, v4

    .line 4102
    :goto_1
    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, v0, Lcom/android/settings/fuelgauge/batterysaver/a;->a:Landroid/content/Context;

    .line 4103
    invoke-static {p1, v3}, Lcom/android/settingslib/j/a;->a(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_8

    move v5, v1

    goto :goto_2

    :cond_8
    move v1, v4

    :goto_2
    const-string p1, "automatic_power_save_mode"

    .line 4111
    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eq v1, v9, :cond_9

    const-string p1, "low_power_trigger_level"

    .line 4113
    invoke-static {v2, p1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4115
    :cond_9
    iget-object p1, v0, Lcom/android/settings/fuelgauge/batterysaver/a;->b:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->a()V

    return v9
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->a:Lcom/android/settings/fuelgauge/batterysaver/a;

    .line 4054
    iget-object v0, v0, Lcom/android/settings/fuelgauge/batterysaver/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "automatic_power_save_mode"

    .line 4056
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "low_power_trigger_level"

    .line 4062
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "key_battery_saver_no_schedule"

    return-object v0

    :cond_0
    const-string v0, "key_battery_saver_percentage"

    return-object v0

    :cond_1
    const-string v0, "key_battery_saver_routine"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150025

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->d:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    .line 83
    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/a;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->d:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/fuelgauge/batterysaver/a;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->a:Lcom/android/settings/fuelgauge/batterysaver/a;

    .line 85
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->b:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 112
    invoke-super {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 90
    invoke-super {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onResume()V

    .line 91
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_warning_acknowledged"

    .line 92
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->c:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 91
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 99
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 100
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->setDividerHeight(I)V

    return-void
.end method
