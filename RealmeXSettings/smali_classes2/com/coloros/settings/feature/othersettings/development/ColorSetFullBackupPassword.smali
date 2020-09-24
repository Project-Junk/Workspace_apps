.class public Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;
.super Lcom/android/settings/SetFullBackupPassword;
.source "ColorSetFullBackupPassword.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/SetFullBackupPassword;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f0d00ec

    return v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public finish()V
    .locals 2

    .line 89
    invoke-super {p0}, Lcom/android/settings/SetFullBackupPassword;->finish()V

    const v0, 0x7f010073

    const v1, 0x7f010069

    .line 90
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SetFullBackupPassword;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 49
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 50
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    const v0, 0x7f0a017c

    .line 51
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f0804bb

    .line 52
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    const v0, 0x7f0a03c9

    .line 53
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 54
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;Landroid/view/View;)V

    const v0, 0x7f0a070a

    .line 56
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    const v1, 0x7f120c02

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/Toolbar;->setIsTitleCenterStyle(Z)V

    .line 59
    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 61
    new-instance p1, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword$1;-><init>(Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;)V

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const p1, 0x7f0a020e

    .line 70
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050063

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_1
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->setTitle(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/SetFullBackupPassword;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/SetFullBackupPassword;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1116
    :pswitch_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1117
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1118
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1120
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SetFullBackupPassword"

    if-nez v2, :cond_0

    const-string p1, "password mismatch"

    .line 1122
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f120c03

    .line 1123
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1125
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1131
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "password set successfully"

    .line 1133
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f120c04

    .line 1134
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1136
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1137
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->finish()V

    goto :goto_0

    :cond_1
    const-string p1, "failure; password mismatch?"

    .line 1140
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f120c05

    .line 1141
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1143
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v1

    .line 104
    :pswitch_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->finish()V

    return v1

    :pswitch_data_0
    .packed-switch 0x7f0a03d7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/android/settings/SetFullBackupPassword;->onResume()V

    .line 81
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorSetFullBackupPassword;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method
