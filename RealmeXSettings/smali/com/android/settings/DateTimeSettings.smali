.class public Lcom/android/settings/DateTimeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Lcom/android/settings/datetime/b$a;
.implements Lcom/android/settings/datetime/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DateTimeSettings$a;,
        Lcom/android/settings/DateTimeSettings$b;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 174
    new-instance v0, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v0}, Lcom/android/settings/DateTimeSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/DateTimeSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;

    .line 184
    new-instance v0, Lcom/android/settings/DateTimeSettings$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/DateTimeSettings$a;-><init>(B)V

    sput-object v0, Lcom/android/settings/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "DateTimeSettings"

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "firstRun"

    const/4 v3, 0x0

    .line 81
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 83
    new-instance v2, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    invoke-direct {v2, v0, p0, v1}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/f;Z)V

    .line 86
    new-instance v3, Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-direct {v3, v0, p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/f;)V

    .line 89
    new-instance v4, Lcom/android/settings/datetime/a;

    invoke-direct {v4, v0}, Lcom/android/settings/datetime/a;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v4, Lcom/android/settings/datetime/c;

    invoke-direct {v4, v0, p0, v1}, Lcom/android/settings/datetime/c;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/f;Z)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lcom/android/settings/datetime/e;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/datetime/e;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/AutoTimeZonePreferenceController;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/android/settings/datetime/d;

    invoke-direct {v1, v0, p0, v3}, Lcom/android/settings/datetime/d;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/d$a;Lcom/android/settings/datetime/AutoTimePreferenceController;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/android/settings/datetime/b;

    invoke-direct {v1, v0, p0, v3}, Lcom/android/settings/datetime/b;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/b$a;Lcom/android/settings/datetime/AutoTimePreferenceController;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final a_()V
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->b_()V

    return-void
.end method

.method public c()V
    .locals 0

    .line 1109
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->b_()V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x260

    return p1

    :cond_1
    const/16 p1, 0x25f

    return p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150083

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datetime/TimeChangeListenerMixin;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/datetime/TimeChangeListenerMixin;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/f;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const/16 v0, 0xb

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    .line 124
    const-class p1, Lcom/android/settings/datetime/d;

    invoke-virtual {p0, p1}, Lcom/android/settings/DateTimeSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/android/settings/datetime/d;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 3101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 3102
    new-instance v7, Landroid/app/TimePickerDialog;

    .line 3105
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v0, 0xc

    .line 3106
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 3107
    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v7

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 121
    :cond_1
    const-class p1, Lcom/android/settings/datetime/b;

    invoke-virtual {p0, p1}, Lcom/android/settings/DateTimeSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/android/settings/datetime/b;

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 2095
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 2096
    new-instance v8, Landroid/app/DatePickerDialog;

    .line 2099
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v2, 0x2

    .line 2100
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v2, 0x5

    .line 2101
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 2103
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    const/16 v2, 0x7d7

    const/4 v3, 0x0

    .line 2104
    invoke-virtual {p1, v2, v3, v1}, Ljava/util/Calendar;->set(III)V

    .line 2105
    invoke-virtual {v8}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 2106
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    const/16 v1, 0x7f5

    const/16 v2, 0x1f

    .line 2107
    invoke-virtual {p1, v1, v0, v2}, Ljava/util/Calendar;->set(III)V

    .line 2108
    invoke-virtual {v8}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    return-object v8
.end method
