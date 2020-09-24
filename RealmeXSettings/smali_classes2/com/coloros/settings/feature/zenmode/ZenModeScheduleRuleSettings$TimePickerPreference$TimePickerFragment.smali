.class public Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimePickerFragment"
.end annotation


# instance fields
.field public a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

.field public b:Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 365
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTimeSet_hourOfDay = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",minute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->a(II)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 372
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->a(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->b(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 373
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {v1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->a(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    :goto_1
    move v5, v1

    if-eqz p1, :cond_2

    .line 375
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->b(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result p1

    goto :goto_2

    :cond_2
    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    :goto_2
    move v6, p1

    .line 377
    new-instance p1, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 378
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog$a;IIZ)V

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->b:Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;

    .line 381
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->b:Lcom/coloros/settings/feature/zenmode/OppoZenModeTimePickerDialog;

    return-object p1
.end method
