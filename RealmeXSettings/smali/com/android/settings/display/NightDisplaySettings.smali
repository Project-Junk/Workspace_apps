.class public Lcom/android/settings/display/NightDisplaySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NightDisplaySettings.java"

# interfaces
.implements Landroid/hardware/display/NightDisplayListener$Callback;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/hardware/display/ColorDisplayManager;

.field private b:Landroid/hardware/display/NightDisplayListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 190
    new-instance v0, Lcom/android/settings/display/NightDisplaySettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/NightDisplaySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/NightDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private synthetic a(ILandroid/widget/TimePicker;II)V
    .locals 0

    .line 106
    invoke-static {p3, p4}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object p2

    if-nez p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/android/settings/display/NightDisplaySettings;->a:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p2}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayCustomStartTime(Ljava/time/LocalTime;)Z

    return-void

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/NightDisplaySettings;->a:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p2}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayCustomEndTime(Ljava/time/LocalTime;)Z

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/android/settings/display/NightDisplaySettings;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    new-instance v1, Lcom/android/settings/display/NightDisplayFooterPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/NightDisplayFooterPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static synthetic lambda$OEwy2gemYD383n1YTDqE-MuKl0s(Lcom/android/settings/display/NightDisplaySettings;ILandroid/widget/TimePicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/display/NightDisplaySettings;->a(ILandroid/widget/TimePicker;II)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "NightDisplaySettings"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-static {p1}, Lcom/android/settings/display/NightDisplaySettings;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x24d

    return p1

    :cond_1
    const/16 p1, 0x24c

    return p1
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120abc

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1e8

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500c5

    return v0
.end method

.method public onActivated(Z)V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->b_()V

    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->b_()V

    return-void
.end method

.method public onColorTemperatureChanged(I)V
    .locals 0

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->b_()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 61
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->a:Landroid/hardware/display/ColorDisplayManager;

    .line 62
    new-instance v0, Landroid/hardware/display/NightDisplayListener;

    invoke-direct {v0, p1}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->b:Landroid/hardware/display/NightDisplayListener;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 98
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->a:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_1

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->a:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    .line 103
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 104
    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    .line 105
    new-instance v7, Landroid/app/TimePickerDialog;

    new-instance v3, Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$OEwy2gemYD383n1YTDqE-MuKl0s;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$OEwy2gemYD383n1YTDqE-MuKl0s;-><init>(Lcom/android/settings/display/NightDisplaySettings;I)V

    .line 112
    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v7
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->b_()V

    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->b_()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 83
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "night_display_end_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/settings/display/NightDisplaySettings;->showDialog(I)V

    return v1

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "night_display_start_time"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/settings/display/NightDisplaySettings;->showDialog(I)V

    return v1

    .line 90
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 70
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->b:Landroid/hardware/display/NightDisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 75
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 78
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->b:Landroid/hardware/display/NightDisplayListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method
