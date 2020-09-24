.class public Lcom/color/eyeprotect/ui/activity/ProtectEyesActivity;
.super Landroidx/appcompat/app/AppCompatActivity;

# interfaces
.implements Lcom/color/eyeprotect/b/a;


# instance fields
.field private a:Lcom/color/eyeprotect/ui/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/activity/ProtectEyesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const v1, 0x7f0800d2

    if-eqz v0, :cond_1

    const-string v2, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Dark"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/activity/ProtectEyesActivity;->getSupportFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/n;

    move-result-object v0

    new-instance v2, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-direct {v2}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/n;->a(ILandroidx/fragment/app/d;)Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/n;->b()I

    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    const v1, 0x7f0f0043

    invoke-virtual {p0, v1}, Lcom/color/eyeprotect/ui/activity/ProtectEyesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/color/eyeprotect/ui/activity/ProtectEyesActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/activity/ProtectEyesActivity;->getSupportFragmentManager()Landroidx/fragment/app/i;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/n;

    move-result-object p0

    new-instance v0, Lcom/color/eyeprotect/ui/a/b;

    invoke-direct {v0}, Lcom/color/eyeprotect/ui/a/b;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/activity/ProtectEyesActivity;->getSupportFragmentManager()Landroidx/fragment/app/i;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/n;

    move-result-object p0

    new-instance v0, Lcom/color/eyeprotect/ui/a/b;

    invoke-direct {v0}, Lcom/color/eyeprotect/ui/a/b;-><init>()V

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/n;->a(ILandroidx/fragment/app/d;)Landroidx/fragment/app/n;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/n;->b()I

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/color/eyeprotect/ui/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/ui/activity/ProtectEyesActivity;->a:Lcom/color/eyeprotect/ui/a/b;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/ui/activity/ProtectEyesActivity;->a:Lcom/color/eyeprotect/ui/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/ui/activity/ProtectEyesActivity;->a:Lcom/color/eyeprotect/ui/a/b;

    invoke-virtual {v0}, Lcom/color/eyeprotect/ui/a/b;->e()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/activity/ProtectEyesActivity;->getSupportFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->d()I

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/activity/ProtectEyesActivity;->getSupportFragmentManager()Landroidx/fragment/app/i;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/i;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    invoke-virtual {p0, p1}, Lcom/color/eyeprotect/ui/activity/ProtectEyesActivity;->setContentView(I)V

    sget-object p1, Lcom/color/darkmode/utils/StatusBarUtils;->INSTANCE:Lcom/color/darkmode/utils/StatusBarUtils;

    invoke-virtual {p1, p0}, Lcom/color/darkmode/utils/StatusBarUtils;->setStatusBarTransparentAndBlackFont(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/activity/ProtectEyesActivity;->a()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/activity/ProtectEyesActivity;->finish()V

    const/4 p0, 0x1

    return p0
.end method
