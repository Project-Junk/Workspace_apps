.class public Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;
.super Landroidx/preference/Preference;
.source "TimePowerSwitchPreference.java"


# static fields
.field private static b:Landroid/graphics/Typeface;


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/color/support/widget/ColorSwitch;

.field private f:Landroid/text/SpannableString;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d0235

    .line 43
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->setLayoutResource(I)V

    return-void
.end method

.method private static a()Landroid/graphics/Typeface;
    .locals 2

    .line 75
    sget-object v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->b:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "/system/fonts/ColorOSUI-Regular.ttf"

    .line 77
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->b:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "TimePowerSwitchPreference"

    const-string v1, "This system don\'t support the tyface - \"system/fonts/ColorOSUI-Regular.ttf\""

    .line 79
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->b:Landroid/graphics/Typeface;

    .line 84
    :cond_0
    :goto_0
    sget-object v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->b:Landroid/graphics/Typeface;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/text/SpannableString;)V
    .locals 2

    .line 100
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setTimeDispaly timeStr ="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimePowerSwitchPreference"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->f:Landroid/text/SpannableString;

    return-void
.end method

.method public final a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 2

    .line 112
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setOnCheckedChangeListener listener ="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimePowerSwitchPreference"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->e:Lcom/color/support/widget/ColorSwitch;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 120
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setRepeatDispaly repeatStr ="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimePowerSwitchPreference"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 88
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setChecked checked ="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimePowerSwitchPreference"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->e:Lcom/color/support/widget/ColorSwitch;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 92
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->h:Z

    return-void
.end method

.method public final b(Z)V
    .locals 4

    .line 128
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setEditEnabled enable ="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimePowerSwitchPreference"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->c:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 130
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 133
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const-string v0, "TimePowerSwitchPreference"

    const-string v1, "onBindView "

    .line 57
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0a0199

    .line 58
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a06f4

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->c:Landroid/widget/TextView;

    const v0, 0x7f0a06f3

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->d:Landroid/widget/TextView;

    const v0, 0x7f0a06b6

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorSwitch;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->e:Lcom/color/support/widget/ColorSwitch;

    .line 66
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->f:Landroid/text/SpannableString;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->e:Lcom/color/support/widget/ColorSwitch;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->h:Z

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 70
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->e:Lcom/color/support/widget/ColorSwitch;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    iget-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->h:Z

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->b(Z)V

    return-void
.end method
