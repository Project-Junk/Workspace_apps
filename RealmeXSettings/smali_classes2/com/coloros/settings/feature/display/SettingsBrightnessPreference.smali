.class public Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;
.super Landroidx/preference/Preference;
.source "SettingsBrightnessPreference.java"


# instance fields
.field public a:Lcom/coloros/settings/feature/display/a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, 0x7f0d02c3

    .line 41
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;->setLayoutResource(I)V

    .line 42
    iput-object p1, p0, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;->b:Landroid/content/Context;

    return-void
.end method

.method private synthetic a(Lcom/android/settingslib/g$a;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$AqKnztjTKj50o67yaYy3dvU2x-M(Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;Lcom/android/settingslib/g$a;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;->a(Lcom/android/settingslib/g$a;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 59
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0577

    .line 60
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f0a05db

    .line 62
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/seekbar/ColorSeekBar;

    .line 64
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 65
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const-string v3, "no_config_brightness"

    .line 64
    invoke-static {v1, v3, v2}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/g$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v2, Lcom/coloros/settings/feature/display/-$$Lambda$SettingsBrightnessPreference$AqKnztjTKj50o67yaYy3dvU2x-M;

    invoke-direct {v2, p0, v1}, Lcom/coloros/settings/feature/display/-$$Lambda$SettingsBrightnessPreference$AqKnztjTKj50o67yaYy3dvU2x-M;-><init>(Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;Lcom/android/settingslib/g$a;)V

    invoke-virtual {v0, v2}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;->a:Lcom/coloros/settings/feature/display/a;

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Lcom/coloros/settings/feature/display/a;->b()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;->a:Lcom/coloros/settings/feature/display/a;

    .line 77
    :cond_1
    new-instance v0, Lcom/coloros/settings/feature/display/a;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;->b:Landroid/content/Context;

    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v0, v1, p1}, Lcom/coloros/settings/feature/display/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;->a:Lcom/coloros/settings/feature/display/a;

    .line 78
    iget-object p1, p0, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;->a:Lcom/coloros/settings/feature/display/a;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/display/a;->a()V

    return-void
.end method
