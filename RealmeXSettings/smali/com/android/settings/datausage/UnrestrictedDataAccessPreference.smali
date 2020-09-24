.class public Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;
.super Lcom/android/settings/widget/AppSwitchPreference;
.source "UnrestrictedDataAccessPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/c$a;


# instance fields
.field final a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

.field final b:Lcom/android/settings/datausage/a$a;

.field private final c:Lcom/coloros/settingslib/applications/ApplicationsState;

.field private final d:Lcom/android/settings/datausage/c;

.field private final e:Lcom/android/settings/dashboard/DashboardFragment;

.field private final f:Lcom/android/settingslib/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/datausage/c;Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d02a8

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->setWidgetLayoutResource(I)V

    .line 48
    new-instance v0, Lcom/android/settingslib/i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/settingslib/i;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->f:Lcom/android/settingslib/i;

    .line 49
    iput-object p2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 50
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/datausage/a$a;

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->b:Lcom/android/settings/datausage/a$a;

    .line 51
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-virtual {v0, p1}, Lcom/coloros/settingslib/applications/ApplicationsState$a;->a(Landroid/content/Context;)V

    .line 52
    iput-object p3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 53
    iput-object p4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->d:Lcom/android/settings/datausage/c;

    .line 54
    iput-object p5, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->e:Lcom/android/settings/dashboard/DashboardFragment;

    .line 55
    iget-object p3, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 56
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 55
    invoke-static {p1, p3, p2}, Lcom/android/settingslib/h;->h(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a()V

    .line 58
    iget-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-static {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->setKey(Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)Lcom/coloros/settingslib/applications/ApplicationsState$a;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    return-object p0
.end method

.method static a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)Lcom/coloros/settingslib/applications/ApplicationsState;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->b:Lcom/android/settings/datausage/a$a;

    if-eqz v0, :cond_2

    .line 174
    iget-boolean v0, v0, Lcom/android/settings/datausage/a$a;->a:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->setChecked(Z)V

    .line 2163
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->f:Lcom/android/settingslib/i;

    .line 3161
    iget-boolean v0, v0, Lcom/android/settingslib/i;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1207eb

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->setSummary(I)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->b:Lcom/android/settings/datausage/a$a;

    iget-boolean v0, v0, Lcom/android/settings/datausage/a$a;->b:Z

    if-eqz v0, :cond_1

    const v0, 0x7f12125a

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->setSummary(I)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->notifyChanged()V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->b:Lcom/android/settings/datausage/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->b:Lcom/android/settings/datausage/a$a;

    iput-boolean p2, p1, Lcom/android/settings/datausage/a$a;->a:Z

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/settingslib/g$a;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->f:Lcom/android/settingslib/i;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/i;->a(Lcom/android/settingslib/g$a;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final b(IZ)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->b:Lcom/android/settings/datausage/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->b:Lcom/android/settings/datausage/a$a;

    iput-boolean p2, p1, Lcom/android/settings/datausage/a$a;->b:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a()V

    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/android/settings/widget/AppSwitchPreference;->onAttached()V

    .line 71
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->d:Lcom/android/settings/datausage/c;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/c;->a(Lcom/android/settings/datausage/c$a;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$1;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->f:Lcom/android/settingslib/i;

    .line 2161
    iget-boolean v0, v0, Lcom/android/settingslib/i;->a:Z

    const v1, 0x1020018

    .line 117
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->b:Lcom/android/settings/datausage/a$a;

    if-eqz v3, :cond_2

    iget-boolean v3, v3, Lcom/android/settings/datausage/a$a;->b:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/widget/AppSwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->f:Lcom/android/settingslib/i;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/i;->a(Landroidx/preference/PreferenceViewHolder;)V

    const v1, 0x7f0a056b

    .line 128
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x1020040

    .line 130
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClick()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->b:Lcom/android/settings/datausage/a$a;

    iget-boolean v0, v0, Lcom/android/settings/datausage/a$a;->b:Z

    if-eqz v0, :cond_0

    .line 84
    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    const v1, 0x7f1206bf

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->e:Lcom/android/settings/dashboard/DashboardFragment;

    iget-object v4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    return-void

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/android/settings/widget/AppSwitchPreference;->onClick()V

    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->d:Lcom/android/settings/datausage/c;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/c;->b(Lcom/android/settings/datausage/c$a;)V

    .line 77
    invoke-super {p0}, Lcom/android/settings/widget/AppSwitchPreference;->onDetached()V

    return-void
.end method

.method public performClick()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->f:Lcom/android/settingslib/i;

    invoke-virtual {v0}, Lcom/android/settingslib/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-super {p0}, Lcom/android/settings/widget/AppSwitchPreference;->performClick()V

    :cond_0
    return-void
.end method
