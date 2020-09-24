.class public Lcom/coloros/settings/widget/preference/SettingsDatePreference;
.super Landroidx/preference/Preference;
.source "SettingsDatePreference.java"


# instance fields
.field a:Lcom/coloros/settings/widget/LocalColorTimePicker$a;

.field public b:Lcom/coloros/settings/widget/LocalColorTimePicker;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->a:Lcom/coloros/settings/widget/LocalColorTimePicker$a;

    .line 30
    iput-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->b:Lcom/coloros/settings/widget/LocalColorTimePicker;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/SettingsDatePreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/coloros/settings/widget/LocalColorTimePicker$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/preference/SettingsDatePreference;-><init>(Landroid/content/Context;B)V

    const p1, 0x7f0d036e

    .line 43
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->setLayoutResource(I)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->setOrder(I)V

    .line 45
    iput-object p3, p0, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->a:Lcom/coloros/settings/widget/LocalColorTimePicker$a;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->b:Lcom/coloros/settings/widget/LocalColorTimePicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/settings/widget/LocalColorTimePicker;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->b:Lcom/coloros/settings/widget/LocalColorTimePicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/settings/widget/LocalColorTimePicker;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->b:Lcom/coloros/settings/widget/LocalColorTimePicker;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->b:Lcom/coloros/settings/widget/LocalColorTimePicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/coloros/settings/widget/LocalColorTimePicker;->setColorTimePicker(ILjava/util/Calendar;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 51
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/coloros/settings/widget/LocalColorTimePicker;

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->b:Lcom/coloros/settings/widget/LocalColorTimePicker;

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->c()V

    .line 53
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->b:Lcom/coloros/settings/widget/LocalColorTimePicker;

    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->a:Lcom/coloros/settings/widget/LocalColorTimePicker$a;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/LocalColorTimePicker;->setOnTimeChangeEndListener(Lcom/coloros/settings/widget/LocalColorTimePicker$a;)V

    return-void
.end method
