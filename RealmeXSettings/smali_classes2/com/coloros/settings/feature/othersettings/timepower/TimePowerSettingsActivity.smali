.class public Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TimePowerSettingsActivity.java"


# instance fields
.field private a:Z

.field private b:Lcolor/support/v7/widget/Toolbar;

.field private c:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .line 82
    new-instance v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->c:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;

    .line 83
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->c:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;

    const-class v2, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;

    .line 86
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a03c9

    .line 85
    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 114
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    const v0, 0x7f010073

    const v1, 0x7f010069

    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->c:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;

    if-eqz v0, :cond_7

    .line 2212
    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/timepower/b;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 2214
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->a:Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {v1}, Lcom/color/support/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2215
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->a:Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {v2}, Lcom/color/support/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2216
    iget-boolean v3, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->c:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 2217
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 3042
    iget v3, v3, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    if-ne v3, v1, :cond_1

    .line 2217
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 3050
    iget v1, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v5

    .line 2220
    :goto_1
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 3058
    iget v2, v2, Lcom/coloros/settings/feature/othersettings/timepower/b;->c:I

    .line 2220
    iget v3, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    if-eq v2, v3, :cond_5

    goto :goto_4

    .line 2224
    :cond_2
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 3074
    iget v3, v3, Lcom/coloros/settings/feature/othersettings/timepower/b;->e:I

    if-ne v3, v1, :cond_4

    .line 2224
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 3082
    iget v1, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->f:I

    if-eq v1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v5

    .line 2227
    :goto_3
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 3090
    iget v2, v2, Lcom/coloros/settings/feature/othersettings/timepower/b;->g:I

    .line 2227
    iget v3, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    if-eq v2, v3, :cond_5

    :goto_4
    move v1, v5

    :cond_5
    if-eqz v1, :cond_6

    .line 1236
    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->a()V

    move v4, v5

    :cond_6
    if-eqz v4, :cond_7

    return-void

    .line 109
    :cond_7
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const v0, 0x7f0d0237

    .line 43
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->setContentView(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 44
    invoke-static {p0, v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    const v2, 0x7f0a0587

    .line 46
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v3, 0x7f0a03c9

    .line 47
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0804bb

    .line 48
    invoke-virtual {v2, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    .line 49
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 50
    invoke-static {p0, v2, v1}, Lcom/coloros/settings/utils/al;->a(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Z)V

    .line 51
    invoke-static {p0, v3}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0a020e

    .line 54
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    .line 56
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v2, 0x7f0a070a

    .line 60
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcolor/support/v7/widget/Toolbar;

    iput-object v2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->b:Lcolor/support/v7/widget/Toolbar;

    .line 61
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->b:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Lcolor/support/v7/widget/Toolbar;->setIsTitleCenterStyle(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 64
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onCreate extra ="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TimePowerTimeSettingsActivity"

    invoke-static {v4, v3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    const-string v3, "extra_type"

    .line 66
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->a:Z

    :cond_2
    if-eqz p1, :cond_4

    .line 70
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 72
    check-cast p1, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->c:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;

    return-void

    .line 74
    :cond_3
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->a()V

    return-void

    .line 77
    :cond_4
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->a()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 92
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 93
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->a:Z

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->b:Lcolor/support/v7/widget/Toolbar;

    const v1, 0x7f1216a5

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->b:Lcolor/support/v7/widget/Toolbar;

    const v1, 0x7f1216a4

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method
