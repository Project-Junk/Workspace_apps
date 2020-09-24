.class public Lcom/android/settings/panel/SettingsPanelActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsPanelActivity.java"


# instance fields
.field final a:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const-string v0, "panel_activity"

    .line 46
    iput-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->b:Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->a:Landroid/os/Bundle;

    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/panel/SettingsPanelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "panel_activity"

    const-string v0, "Null intent, closing Panel Activity"

    .line 82
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/panel/SettingsPanelActivity;->finish()V

    return-void

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->M(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 90
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "android.settings.panel.action.INTERNET_CONNECTIVITY"

    .line 92
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    new-instance v2, Landroid/content/Intent;

    const-string v1, "oppo.settings.panel.action.INTERNET_CONNECTIVITY"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "android.settings.panel.action.WIFI"

    .line 94
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    new-instance v2, Landroid/content/Intent;

    const-string v1, "oppo.settings.panel.action.WIFI"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "android.settings.panel.action.NFC"

    .line 96
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    new-instance v2, Landroid/content/Intent;

    const-string v1, "oppo.settings.panel.action.NFC"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    const-string p1, "com.coloros.wirelesssettings"

    .line 100
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-static {p0, v2}, Lcom/android/settings/panel/SettingsPanelActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/panel/SettingsPanelActivity;->finish()V

    return-void

    :cond_4
    const-string v1, "com.android.settings.panel.extra.PACKAGE_NAME"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/android/settings/panel/SettingsPanelActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PANEL_TYPE_ARGUMENT"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/settings/panel/SettingsPanelActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PANEL_CALLING_PACKAGE_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->a:Landroid/os/Bundle;

    const-string v2, "PANEL_MEDIA_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/panel/SettingsPanelActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a03c7

    .line 115
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez p1, :cond_5

    if-eqz v2, :cond_5

    .line 118
    instance-of p1, v2, Lcom/android/settings/panel/PanelFragment;

    if-eqz p1, :cond_5

    .line 119
    check-cast v2, Lcom/android/settings/panel/PanelFragment;

    .line 120
    iget-object p1, p0, Lcom/android/settings/panel/SettingsPanelActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Lcom/android/settings/panel/PanelFragment;->setArguments(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {v2}, Lcom/android/settings/panel/PanelFragment;->a()V

    return-void

    :cond_5
    const p1, 0x7f0d02d5

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/settings/panel/SettingsPanelActivity;->setContentView(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/panel/SettingsPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v2, 0x50

    .line 127
    invoke-virtual {p1, v2}, Landroid/view/Window;->setGravity(I)V

    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 128
    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 130
    new-instance p1, Lcom/android/settings/panel/PanelFragment;

    invoke-direct {p1}, Lcom/android/settings/panel/PanelFragment;-><init>()V

    .line 131
    iget-object v2, p0, Lcom/android/settings/panel/SettingsPanelActivity;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Lcom/android/settings/panel/PanelFragment;->setArguments(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 147
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 150
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "startActivitySafely e:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "panel_activity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/panel/SettingsPanelActivity;->a(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/settings/panel/SettingsPanelActivity;->setIntent(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/panel/SettingsPanelActivity;->a(Z)V

    return-void
.end method
