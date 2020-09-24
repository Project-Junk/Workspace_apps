.class public Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TimePowerRepeatSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/color/support/widget/ColorListView$ScrollMultiChoiceListener;


# instance fields
.field private a:I

.field private b:Lcom/coloros/settings/widget/SettingsColorListView;

.field private c:Lcom/coloros/settings/feature/othersettings/timepower/a;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->d:I

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->c:Lcom/coloros/settings/feature/othersettings/timepower/a;

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/timepower/a;->a()I

    move-result v1

    const-string v2, "extra_repeat"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/4 v1, -0x1

    .line 140
    invoke-virtual {p0, v1, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 141
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 46
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const v0, 0x7f0d0234

    .line 49
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->setContentView(I)V

    const v0, 0x7f0a0587

    .line 50
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f0804bb

    .line 51
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 53
    invoke-static {p0, v1, v2}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 54
    invoke-static {p0, v0, v2}, Lcom/coloros/settings/utils/al;->a(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Z)V

    .line 55
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f050063

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a020e

    .line 56
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v3, 0x8

    .line 58
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a070a

    .line 61
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 63
    new-instance v3, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity$1;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity$1;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;)V

    invoke-virtual {v0, v3}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 72
    iget v4, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->a:I

    const-string v5, "extra_repeat"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->a:I

    :cond_2
    if-eqz p1, :cond_3

    const-string v3, "save_repeat"

    .line 78
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 79
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->a:I

    .line 83
    :cond_3
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 84
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    .line 85
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 86
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f1216bb

    .line 87
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x102000a

    .line 88
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/SettingsColorListView;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    .line 89
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/SettingsColorListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/SettingsColorListView;->setOverScrollMode(I)V

    .line 91
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/SettingsColorListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/SettingsColorListView;->setScrollMultiChoiceListener(Lcom/color/support/widget/ColorListView$ScrollMultiChoiceListener;)V

    .line 93
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/SettingsColorListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    new-instance p1, Lcom/coloros/settings/feature/othersettings/timepower/a;

    iget v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->a:I

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/a;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->c:Lcom/coloros/settings/feature/othersettings/timepower/a;

    .line 95
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->c:Lcom/coloros/settings/feature/othersettings/timepower/a;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/SettingsColorListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/SettingsColorListView;->setBackgroundColor(I)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 111
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->c:Lcom/coloros/settings/feature/othersettings/timepower/a;

    if-eqz p1, :cond_0

    .line 112
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {p2}, Lcom/coloros/settings/widget/SettingsColorListView;->getHeaderViewsCount()I

    move-result p2

    sub-int/2addr p3, p2

    .line 1150
    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/timepower/a;->getCount()I

    move-result p2

    if-ge p3, p2, :cond_0

    .line 1153
    iget-object p2, p1, Lcom/coloros/settings/feature/othersettings/timepower/a;->b:[Z

    aget-boolean p4, p2, p3

    xor-int/lit8 p4, p4, 0x1

    aput-boolean p4, p2, p3

    .line 1154
    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/timepower/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onItemTouch(ILandroid/view/View;)V
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->c:Lcom/coloros/settings/feature/othersettings/timepower/a;

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-static {p2}, Lcom/coloros/settings/feature/othersettings/timepower/a;->a(Landroid/view/View;)Lcom/coloros/settings/feature/othersettings/timepower/a$a;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 151
    iget-object v0, p2, Lcom/coloros/settings/feature/othersettings/timepower/a$a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 152
    iget v2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->d:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_1

    .line 154
    iput v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->d:I

    goto :goto_0

    .line 156
    :cond_1
    iput v4, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->d:I

    .line 159
    :cond_2
    :goto_0
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->d:I

    if-ne v0, v1, :cond_3

    .line 160
    iget-object p2, p2, Lcom/coloros/settings/feature/othersettings/timepower/a$a;->b:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->c:Lcom/coloros/settings/feature/othersettings/timepower/a;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/SettingsColorListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1, v1}, Lcom/coloros/settings/feature/othersettings/timepower/a;->a(IZ)V

    return-void

    :cond_3
    if-nez v0, :cond_4

    .line 163
    iget-object p2, p2, Lcom/coloros/settings/feature/othersettings/timepower/a$a;->b:Landroid/widget/CheckBox;

    invoke-virtual {p2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->c:Lcom/coloros/settings/feature/othersettings/timepower/a;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/SettingsColorListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1, v4}, Lcom/coloros/settings/feature/othersettings/timepower/a;->a(IZ)V

    :cond_4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->c:Lcom/coloros/settings/feature/othersettings/timepower/a;

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/timepower/a;->a()I

    move-result v1

    const-string v2, "extra_repeat"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const/4 v1, -0x1

    .line 124
    invoke-virtual {p0, v1, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->finish()V

    .line 130
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 104
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->c:Lcom/coloros/settings/feature/othersettings/timepower/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/timepower/a;->a()I

    move-result v0

    const-string v1, "save_repeat"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 172
    iput p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;->d:I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
